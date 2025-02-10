
ForceBleedsCommand = {
	name = "forcebleeds",

	minDamage = 35,
	maxDamage = 350,
	speed = 2.0,
	forceCost = 40,
	visMod = 25,
	forceAttack = true,
	accuracyBonus = 95,

	animation = "force_choke_1_particle_level_1",
	animType = GENERATE_INTENSITY,

	combatSpam = "forcechoke",

	poolsToDamage = MIND_ATTRIBUTE,
	damageType = LIGHTSABER_DAMAGE,

	range = 65,

	dotEffects = {
		  DotEffect(
			BLEEDING,
			{ "resistance_bleeding", "bleed_resist" },
			MIND,
			true,
			0,
			100,
			60,
			180
	  		)
		},
	
	
		
	frsLightMinDamageModifier = 1,
	frsLightMaxDamageModifier = 7,
	frsDarkMinDamageModifier = 1,
	frsDarkMaxDamageModifier = 7,
}

AddCommand(ForceBleedsCommand)
