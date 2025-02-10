
ForceBleedCommand = {
	name = "forcebleed",

	speed = 2.0,
	forceCost = 20,
	visMod = 25,
	forceAttack = true,
	accuracyBonus = 95,

	animation = "force_choke_1_particle_level_1",
	animType = GENERATE_INTENSITY,

	combatSpam = "forcebleed",


	range = 65,

	dotEffects = {
		DotEffect( 
			BLEEDING, 
			{ "resistance_bleeding", "bleed_resist" },
			MIND,
			true,
			650,
			650,
			450, 
			450
		  	)
	},
	
	frsLightMinDamageModifier = 1,
	frsLightMaxDamageModifier = 7,
	frsDarkMinDamageModifier = 1,
	frsDarkMaxDamageModifier = 7,

		
}

AddCommand(ForceBleedCommand)
