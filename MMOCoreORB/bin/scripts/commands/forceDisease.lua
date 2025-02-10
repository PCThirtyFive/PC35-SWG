
ForceDiseaseCommand = {
	name = "forcedisease",

	speed = 2.0,
	forceCost = 20,
	visMod = 25,
	forceAttack = true,
	accuracyBonus = 95,

	
	animation = "force_choke_1_particle_level_1",
	animType = GENERATE_INTENSITY,

	combatSpam = "forcechoke",

	range = 65,


	dotEffects = {
	  DotEffect( 
		DISEASED, 
		{ "resistance_disease", "poison_disease_resist" },
		MIND,
		true,
		600,
		350,
		450, 
		300,
		200
	  )
	},
	
	frsLightMinDamageModifier = 1,
	frsLightMaxDamageModifier = 7,
	frsDarkMinDamageModifier = 1,
	frsDarkMaxDamageModifier = 7,

}

AddCommand(ForceDiseaseCommand)
