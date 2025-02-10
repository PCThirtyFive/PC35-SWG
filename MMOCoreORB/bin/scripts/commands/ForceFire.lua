
ForceFireCommand = {
	name = "forcefire",
	
	speed = 2.0,
	forceCost = 40,
	visMod = 25,
	forceAttack = true,
	accuracyBonus = 95,

	animation = "force_mind_blast_1_arc_particle_level_1",
	animType = GENERATE_INTENSITY,

	combatSpam = "mindblast2",


	range = 65,

--after true dur, str, pot chnc, prim, sec

	dotEffects = {
		DotEffect( 
			ONFIRE, 
			{"resistance_fire", "fire_resist"},
			MIND,
			true,
			600,
			650,
			450, 
			300,
			200,
			0
	  	)},
	
	
	frsLightMinDamageModifier = 1,
	frsLightMaxDamageModifier = 7,
	frsDarkMinDamageModifier = 1,
	frsDarkMaxDamageModifier = 7,

	
	}

AddCommand(ForceFireCommand)
