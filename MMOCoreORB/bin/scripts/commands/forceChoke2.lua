
ForceChoke2Command = {
	name = "forcechoke2",

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
			ONFIRE, 
			{"resistance_fire", "fire_resist"},
			MIND,
			true,
			30,
			350,
			250, 
			100,
			100,
			80
	  	)},
	
	
	
	stateEffects = {
		StateEffect(
			BLIND_EFFECT,
			{},
			{ "blind_defense" },
			{ "jedi_state_defense", "resistance_states" },
			100,
			0,
			60
		),
		StateEffect(
			DIZZY_EFFECT,
			{},
			{ "dizzy_defense" },
			{ "jedi_state_defense", "resistance_states" },
			100,
			0,
			60
		),
		StateEffect(
			STUN_EFFECT,
			{},
			{ "stun_defense" },
			{ "jedi_state_defense", "resistance_states" },
			100,
			0,
			60
		),
		StateEffect(
			KNOCKDOWN_EFFECT,
			{ "knockdownRecovery", "lastKnockdown" },
			{},
			{},
			100,
			0,
			35
	 	 )

	},

	
	frsLightMinDamageModifier = 1,
	frsLightMaxDamageModifier = 7,
	frsDarkMinDamageModifier = 1,
	frsDarkMaxDamageModifier = 7,
}

AddCommand(ForceChoke2Command)
