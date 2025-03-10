/*
 * ConsumableImplementation.cpp
 *
 *  Created on: 14/08/2010
 *      Author: victor
 */

#include "server/zone/objects/tangible/consumable/Consumable.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/creature/buffs/DurationBuff.h"
#include "server/zone/objects/creature/buffs/SpiceBuff.h"
#include "server/zone/objects/creature/buffs/DelayedBuff.h"
#include "templates/params/creature/CreatureAttribute.h"
#include "server/zone/packets/scene/AttributeListMessage.h"
#include "templates/tangible/ConsumableTemplate.h"
#include "server/zone/managers/player/PlayerManager.h"

void ConsumableImplementation::loadTemplateData(SharedObjectTemplate* templateData) {
	if (templateData == nullptr) {
		return;
	}

	TangibleObjectImplementation::loadTemplateData(templateData);

	ConsumableTemplate* consumableTemplate = dynamic_cast<ConsumableTemplate*>(templateData);

	if (consumableTemplate == nullptr) {
		return;
	}

	duration = consumableTemplate->getDuration();
	filling = consumableTemplate->getFilling();

	newNutrition = consumableTemplate->getNutrition();
	nutritionMin = consumableTemplate->getNutritionMin();
	nutritionMax = consumableTemplate->getNutritionMax();

	effectType = consumableTemplate->getEffectType();
	eventTypes = *consumableTemplate->getEventTypes();

	fillingMin = consumableTemplate->getFillingMin();
	fillingMax = consumableTemplate->getFillingMax();
	flavorMin = consumableTemplate->getFlavorMin();
	flavorMax = consumableTemplate->getFlavorMax();

	quantityMin = consumableTemplate->getQuantityMin();
	quantityMax = consumableTemplate->getQuantityMax();


	modifiers = *consumableTemplate->getModifiers();
	buffName = consumableTemplate->getBuffName();

	buffCRC = buffName.hashCode();

	foragedFood = consumableTemplate->getForagedFood();

	speciesRestriction = consumableTemplate->getSpeciesRestriction();
}

void ConsumableImplementation::updateCraftingValues(CraftingValues* values, bool firstUpdate) {
	if (values == nullptr) {
		return;
	}

	if (firstUpdate) {
		setMaxCondition(values->getCurrentValue("hitpoints"), true);
	}

	if (isSpice()) {
		return;
	}

	if (values->hasExperimentalAttribute("filling")) {
		filling = (fillingMax - fillingMin) * values->getCurrentPercentage("filling") + fillingMin;

		if (values->hasExperimentalAttribute("add_filling")) {
			filling *= (1.f - (values->getCurrentValue("add_filling") / 100.f));
		}
	}

	// http://www.swgemu.com/archive/scrapbookv51/data/20070126195417/cheffaq2_5.html
	// Containers
	// How do containers work?
	// Containers are required components for all drinks, but you can use any container in that slot. Each container has a multiplier that gets applied to the base quantity of the drink (which is shown in the Food Chart).
	// Small Glass: 1x multiplier (base quantity),Large Glass: 1.5x multiplier
	// Cask: 3x multiplier , Barrel: Unknown (bugged as of 3/30/04).
	// The multiplier is applied after any rounding due to experimentation. So if a drink needs to be experimented to 25% to go from 6 to 7 doses, that point is still when additional doses appear, just with the multiplier. With a large glass, that drink would go from 9 to 10 doses (6 * 1.5 = 9, 7 * 1.5 = 10.5, but
	// it gets rounded down). This makes things tricky when using large glasses. The rounding is done twice, so you'll get some jumpy increases, first from 9 to 10 at 25% quantity, then from 10 to 12 at 50% quantity. The container multiplier also stacks with any BE quantity enhancer. So if you use both a +150
	// quantity tissue (which gives a 2.5x multiplier) and a cask, the final drink will have 7.5x as many doses as one made with a small glass and without the tissue. T'illa T'ill is the only exception. This appears to be designed as a single-dose item (although why a 10-15% reduction in the food stomach is
	// considered that powerful is beyond me). This will always come out with a single dose no matter what container or BE tissue you include in it, so stick to small glasses.

	if (values->hasExperimentalAttribute("quantity")) {
		int quant = (quantityMax - quantityMin) * values->getCurrentPercentage("quantity") + quantityMin;

		if (values->hasExperimentalAttribute("quantity_bonus")) {
			quant *= values->getCurrentValue("quantity_bonus");
		}

		if (values->hasExperimentalAttribute("add_quantity")) {
			quant *= (1 + (values->getCurrentValue("add_quantity") / 100.f));
		}

		setUseCount(quant, true);
	}

	if (values->hasExperimentalAttribute("flavor")) {
		duration = (flavorMax - flavorMin) * values->getCurrentPercentage("flavor") + flavorMin;

		if (values->hasExperimentalAttribute("add_flavor")) {
			duration *= (1 + (values->getCurrentValue("add_flavor") / 100.f));
		}
	}

	if (values->hasExperimentalAttribute("nutrition")) {
		newNutrition = (nutritionMax - nutritionMin) * values->getCurrentPercentage("nutrition") + nutritionMin;

		if (values->hasExperimentalAttribute("add_nutrition")) {
			newNutrition *= (1 + (values->getCurrentValue("add_nutrition") / 100.f));
		}
	}
}

int ConsumableImplementation::handleObjectMenuSelect(CreatureObject* player, byte selectedID) {
	if (!isASubChildOf(player))
		return 0;

	if (selectedID != 20) {
		return TangibleObjectImplementation::handleObjectMenuSelect(player, selectedID);
	}

	if (speciesRestriction == "pets") {
		player->sendSystemMessage("@error_message:pets_only"); //That food is only suitable for pets.
		return 0;
	}

	String raceName = player->getSpeciesName();

	if ((speciesRestriction == "2" && raceName != "trandoshan") || (speciesRestriction == "4" && raceName != "wookiee")) {
		player->sendSystemMessage("@error_message:race_restriction"); //That food isn't edible by your species.
		return 0;
	}

	if (isSpice() && player->hasSpice()) {
		player->sendSystemMessage("@spice/spice:sys_already_spiced"); //You are already under the influence of spices.
		return 0;
	}

	if (player->hasBuff(buffCRC) && (!isAttributeEffect() || isForagedFood())) {
		player->sendSystemMessage("@combat_effects:already_affected"); //You are already under the influence of that food. Eating more won't enhance the effect.
		return 0;
	}

	if (player->isDead() || player->isIncapacitated())
		return 0;

	PlayerObject* ghost = player->getPlayerObject();

	if (ghost == nullptr)
		return 1;

	int availfill = 0;

	if (isFood())
		availfill = ghost->getFoodFillingMax() - ghost->getFoodFilling();

	if (isDrink())
		availfill = ghost->getDrinkFillingMax() - ghost->getDrinkFilling();

	if (filling > availfill) {
		if (isFood())
			player->sendSystemMessage("@error_message:full_food"); //You are too full to eat that.

		if (isDrink())
			player->sendSystemMessage("@error_message:full_drink"); //You are too full to drink that.

		return 1;
	}

	float newDuration = duration;

	// Twi'lek race receives a 10% duration bonus
	if (newDuration > 0 && player->getSpeciesName() == "twilek") {
		newDuration *= 1.10f;
	}

	ManagedReference<Buff*> buff = nullptr;

	switch (effectType) {
	case EFFECT_ATTRIBUTE: {
		buff = new Buff(player, buffName.hashCode(), newDuration, BuffType::FOOD);

		Locker locker(buff);

		setModifiers(buff, false);
		break;
	}
	case EFFECT_SKILL: {
		buff = new Buff(player, buffName.hashCode(), newDuration, BuffType::FOOD);

		Locker locker(buff);

		setModifiers(buff, true);

		// Set the sysmsg(s) for the skillmod.
		StringIdChatParameter params("@combat_effects:skill_mod_buffed"); // Your skill in %TO has improved.

		// Send a message for every modifier in this case.
		for (int i = 0; i < modifiers.size(); ++i) {
			params.setTO("@stat_n:" + modifiers.elementAt(i).getKey());
			player->sendSystemMessage(params); // According to evidence, this should send before the consumed message, so we don't want to set the buff spam start.
		}

		break;
	}
	case EFFECT_SPICE: {
		buff = new SpiceBuff(player, buffName, String::hashCode("spice." + buffName + ".up"), duration);

		Locker locker(buff);

		setModifiers(buff, false);

		player->addBuff(buff);

		decreaseUseCount();
		return 1;
	}
	case EFFECT_HEALING: {
		int healthHealed = 0, actionHealed = 0, mindHealed = 0;

		for (int i = 0; i < modifiers.size(); ++i) {
			String key = modifiers.elementAt(i).getKey();

			if (key == "health") {
				healthHealed = player->healDamage(player, 0, newNutrition);
			} else if (key == "action") {
				actionHealed = player->healDamage(player, 3, newNutrition);
			} else if (key == "mind") {
				mindHealed = player->healDamage(player, 6, newNutrition);
			}
		}

		if ((healthHealed + actionHealed + mindHealed) <= 0) {
			player->sendSystemMessage("@healing:no_damage_to_heal_self"); // You have no damage to heal.
			return 0;
		}

		StringBuffer sysMsg;

		sysMsg << "You heal yourself for ";

		if (healthHealed > 0) {
			sysMsg << healthHealed << " health";

			if (actionHealed > 0 && mindHealed > 0) {
				sysMsg << ", ";
			} else if (actionHealed > 0 || mindHealed > 0){
				sysMsg << " and ";
			}
		}

		if (actionHealed > 0) {
			sysMsg << actionHealed << " action";

			if (mindHealed > 0)
				sysMsg << " and ";
		}

		if (mindHealed > 0) {
			sysMsg << mindHealed << " mind";
		}

		sysMsg << ".";

		player->sendSystemMessage(sysMsg.toString());

		break;
	}

	case EFFECT_DURATION: {
		buff = new DurationBuff(player, buffName.hashCode(), newDuration);

		Locker locker(buff);

		setModifiers(buff, true);
		break;
	}

	case EFFECT_DELAYED: {
		buff = new DelayedBuff(player, buffName.hashCode(), newDuration);

		Locker locker(buff);

		setModifiers(buff, true);

		DelayedBuff* delayedBuff = buff.castTo<DelayedBuff*>();

		delayedBuff->init(&eventTypes);

		break;
	}
	case EFFECT_INSTANT: {
		if (modifiers.isEmpty())
			return 0;

		//TODO: Handle each instant effect on its own...
		String effect = modifiers.elementAt(0).getKey();

		if (effect == "burst_run") {
			float cooldownModifier = (float)duration / 100.f;
			float hamModifier = (float)newNutrition / 100.f;

			PlayerManager* playerManager = server->getZoneServer()->getPlayerManager();

			if (!playerManager->doBurstRun(player, hamModifier, cooldownModifier))
				return 0;
		} else if (effect == "wookiee_roar") {
			uint64 target = player->getTargetID();
			player->enqueueCommand(STRING_HASHCODE("wookieeroar"), 0, target, "", 1);
		} else if (effect == "enhanced_regen") {
			uint64 target = player->getObjectID();
			player->addSkillMod(SkillModManager::TEMPORARYMOD, "enhanced_regen", newNutrition, true);
			player->enqueueCommand(STRING_HASHCODE("regeneration"), 0, target, "", 1);
		} else if (effect == "food_reduce") {
			// Tilla till reduces food stomach filling by a percentage
			int currentfilling = ghost->getFoodFilling();

			ghost->setFoodFilling(round(currentfilling * (100 - newNutrition) / 100.0f), true);
		} else if (effect == "slow_dot" && player->getDamageOverTimeList()->hasDot()) {
			player->getDamageOverTimeList()->multiplyAllDOTDurations((100 - newNutrition) / 100.f);

			StringIdChatParameter params("@combat_effects:slow_dot_done"); // The remaining duration of DOTs affecting you have been reduced by %DI%.
			params.setDI((uint32)newNutrition);
			player->sendSystemMessage(params);
		}

		break;
	}
	case EFFECT_BARTENDER_DRINK:
		break;
	default:
		break;
	}

	if (buff != nullptr) {
		Locker locker(buff);

		player->addBuff(buff);
	}

	if (isFood())
		ghost->setFoodFilling(ghost->getFoodFilling() + filling, true);

	if (isDrink())
		ghost->setDrinkFilling(ghost->getDrinkFilling() + filling, true);

	StringIdChatParameter stringId("base_player", "prose_consume_item"); // You consume %TT.
	stringId.setTT(getObjectID());
	player->sendSystemMessage(stringId);

	// Play the client effect sound depending on species/gender.
	// Get the species.
	int species = player->getSpecies();

	switch (species) {
	case 0:
		// Human
		if (player->getGender() == 0)
			player->playEffect("clienteffect/human_male_eat.cef");
		else if (player->getGender() == 1)
			player->playEffect("clienteffect/human_female_eat.cef");
		break;
	case 2: // Trandoshan
		if (player->getGender() == 0)
			player->playEffect("clienteffect/reptile_male_eat.cef");
		else if (player->getGender() == 1)
			player->playEffect("clienteffect/reptile_female_eat.cef");
		break;
	case 4: // Wookiee
		if (player->getGender() == 0)
			player->playEffect("clienteffect/wookiee_male_eat.cef");
		else if (player->getGender() == 1)
			player->playEffect("clienteffect/wookiee_female_eat.cef");
		break;
	default:
		break;

	}
	//Consume a charge from the item, destroy it if it reaches 0 charges remaining.
	decreaseUseCount();

	return 0;
}

void ConsumableImplementation::setModifiers(Buff* buff, bool skillModifiers) {
	for (int i = 0; i < modifiers.size(); ++i) {
		String attribute = modifiers.elementAt(i).getKey();
		float value = modifiers.elementAt(i).getValue();

		uint8 hamAttribute = CreatureAttribute::getAttribute(attribute);

		if (!isSpice() && !isForagedFood()) {
			value = newNutrition;
		}

		if (!skillModifiers) {
			buff->setAttributeModifier(hamAttribute, (int)value);
		} else {
			buff->setSkillModifier(attribute, (int)value);
		}
	}
}

void ConsumableImplementation::fillAttributeList(AttributeListMessage* alm, CreatureObject* player) {
	// Update new nutrition float attribute from old int value
	if (nutrition > newNutrition) {
		newNutrition = nutrition;
	}

	if (maxCondition > 0) {
		StringBuffer cond;
		cond << (maxCondition-(int)conditionDamage) << "/" << maxCondition;

		alm->insertAttribute("condition", cond);
	}

	alm->insertAttribute("volume", volume);

	// Hide information on batender drinks
	if (effectType == EFFECT_BARTENDER_DRINK) {
		return;
	}

	if (!isAttributeEffect() && !isSpiceEffect()) {
		if (useCount > 0) {
			alm->insertAttribute("counter_uses_remaining", useCount);
		}
	} else if (useCount > 0) {
		alm->insertAttribute("quantity", useCount);
	}

	if (!craftersName.isEmpty()){
		alm->insertAttribute("crafter", craftersName);
	}

	if (!objectSerial.isEmpty()){
		alm->insertAttribute("serial_number", objectSerial);
	}

	switch (effectType) {
		case EFFECT_HEALING: {
			if (filling > 0) {
				if (isFood()) {
					alm->insertAttribute("stomach_food", filling);
				} else if (isDrink()) {
					alm->insertAttribute("stomach_drink", filling);
				}
			}

			if (modifiers.size() == 1 && modifiers.elementAt(0).getKey() == "mind") {
				alm->insertAttribute("mind_heal", (int)newNutrition);
			} else {
				for (int i = 0; i < modifiers.size(); ++i) {
					VectorMapEntry<String, float>* entry = &modifiers.elementAt(i);
					alm->insertAttribute("examine_heal_damage_" + entry->getKey(), Math::getPrecision(newNutrition, 6));
				}
			}

			break;
		}
		case EFFECT_ATTRIBUTE: {
			if (filling > 0) {
				if (isFood()) {
					alm->insertAttribute("stomach_food", filling);
				} else if (isDrink()) {
					alm->insertAttribute("stomach_drink", filling);
				}
			}

			if (duration <= 0) {
				return;
			}

			StringBuffer durationstring;

			int minutes = (int)floor(duration / 60.0f);
			int seconds = duration % 60;

			if (minutes > 0) {
				durationstring << minutes << "m ";
			}

			durationstring << seconds << "s";

			int mods = modifiers.size();

			if (mods > 0) {
				alm->insertAttribute("attribmods", mods);

				for (int i = 0; i < mods; ++i) {
					VectorMapEntry<String, float>* entry = &modifiers.elementAt(i);
					StringBuffer nutritionstring;

					if (!isForagedFood()) {
						if (isDrink()) {
							nutritionstring << ((newNutrition > 0) ? "+" : "") << (int)newNutrition << " for " << durationstring.toString();
						} else {
							nutritionstring << ((newNutrition > 0) ? "+" : "") << Math::getPrecision(newNutrition, 6) << " for " << durationstring.toString();
						}
					} else {
						nutritionstring << ((entry->getValue() > 0) ? "+" : "") << entry->getValue() << ", " << durationstring.toString();
					}

					alm->insertAttribute("attr_" + entry->getKey(), nutritionstring.toString());
				}
			}
			break;
		}
		case EFFECT_SPICE: {
			int mods = modifiers.size();

			if (mods > 0) {
				StringBuffer durationstring;
				durationstring << duration << "s";

				alm->insertAttribute("attribmods", mods);

				for (int i = 0; i < mods; ++i) {
					VectorMapEntry<String, float>* entry = &modifiers.elementAt(i);
					StringBuffer nutritionstring;
					nutritionstring << ((entry->getValue() > 0) ? "+" : "") << entry->getValue() << ", " << durationstring.toString();

					alm->insertAttribute("attr_" + entry->getKey(), nutritionstring.toString());
				}
			}

			break;
		}
		case EFFECT_SKILL: {
			if (filling > 0) {
				if (isFood()) {
					alm->insertAttribute("stomach_food", filling);
				} else if (isDrink()) {
					alm->insertAttribute("stomach_drink", filling);
				}
			}

			for (int i = 0; i < modifiers.size(); ++i) {
				VectorMapEntry<String, float>* entry = &modifiers.elementAt(i);
				alm->insertAttribute("skill", "@stat_n:" + entry->getKey());
			}

			StringBuffer nutritionstring;
			nutritionstring << ((newNutrition > 0) ? "+" : "") << Math::getPrecision(newNutrition, 6);

			alm->insertAttribute("modifier", nutritionstring.toString());

			StringBuffer durationstring;

			int minutes = (int)floor(duration / 60.0f);
			int seconds = duration % 60;

			if (minutes > 0) {
				durationstring << minutes << "m ";
			}

			durationstring << seconds << "s";

			alm->insertAttribute("duration", durationstring.toString());

			break;
		}
		case EFFECT_DURATION: {
			if (filling > 0) {
				if (isFood()) {
					alm->insertAttribute("stomach_food", filling);
				} else if (isDrink()) {
					alm->insertAttribute("stomach_drink", filling);
				}
			}

			for (int i = 0; i < modifiers.size(); ++i) {
				VectorMapEntry<String, float>* entry = &modifiers.elementAt(i);

				String key = entry->getKey();
				float value = entry->getValue();

				alm->insertAttribute("duration_effect", "@obj_attr_n:" + key + "_d");

				alm->insertAttribute(key + "_eff", Math::getPrecision(newNutrition, 6));

				StringBuffer durationstring;

				int minutes = (int)floor(duration / 60.0f);
				int seconds = duration % 60;

				if (minutes > 0)
					durationstring << minutes << "m ";

				durationstring << seconds << "s";

				alm->insertAttribute("duration", durationstring.toString());
			}

			break;
		}
		case EFFECT_DELAYED: {
			if (filling > 0) {
				if (isFood())
					alm->insertAttribute("stomach_food", filling);
				else if (isDrink())
					alm->insertAttribute("stomach_drink", filling);
			}

			for (int i = 0; i < modifiers.size(); ++i) {
				VectorMapEntry<String, float>* entry = &modifiers.elementAt(i);

				String key = entry->getKey();
				float value = entry->getValue();

				alm->insertAttribute("delay_effect", "@obj_attr_n:" + key + "_d");

				alm->insertAttribute(key + "_eff", Math::getPrecision(newNutrition, 6));

				if (duration > 1)
					alm->insertAttribute(key + "_dur", duration);
			}

			break;
		}
		case EFFECT_INSTANT: {
			if (filling > 0) {
				if (isFood())
					alm->insertAttribute("stomach_food", filling);
				else if (isDrink())
					alm->insertAttribute("stomach_drink", filling);
			}

			for (int i = 0; i < modifiers.size(); ++i) {
				VectorMapEntry<String, float>* entry = &modifiers.elementAt(i);

				String key = entry->getKey();
				float value = entry->getValue();

				alm->insertAttribute("instant_effect", "@obj_attr_n:" + key + "_d");
				alm->insertAttribute(key + "_v1", Math::getPrecision(newNutrition, 6));

				if (key == "burst_run")
					alm->insertAttribute(key + "_v2", duration);
			}
			break;
		}
	}

	if (!speciesRestriction.isEmpty()) {
		if (speciesRestriction == "pets") {
			alm->insertAttribute("race_restriction", "@obj_attr_n:speciespet"); //Pets
		} else {
			alm->insertAttribute("race_restriction", "@obj_attr_n:species" + speciesRestriction);
		}
	}
}
