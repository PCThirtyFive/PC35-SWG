
StrongDiseaseCommand = {
        name = "strongdisease",
        combatSpam = "attack",
	dotEffects = {
	  DotEffect( 
		DISEASED, 
		{ "resistance_disease", "poison_disease_resist" },
		ATTACK_POOL,
		true,
		0,
		60,
		80, 
		405,
		45
	  )
	}
}

AddCommand(StrongDiseaseCommand)

