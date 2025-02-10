/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCEBLEEDCOMMAND_H_
#define FORCEBLEEDCOMMAND_H_

#include "ForcePowersQueueCommand.h"

class ForceBleedCommand : public ForcePowersQueueCommand {
public:

	ForceBleedCommand(const String& name, ZoneProcessServer* server)
		: ForcePowersQueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (isWearingArmor(creature)) {
			return NOJEDIARMOR;
		}

		ManagedReference<SceneObject*> targetObject = server->getZoneServer()->getObject(target);

		if (targetObject == nullptr || !targetObject->isCreatureObject()) {
			return INVALIDTARGET;
		}

		return doCombatAction(creature, target);

	}

};

#endif //FORCEBLEEDCOMMAND_H_
