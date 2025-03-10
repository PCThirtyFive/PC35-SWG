han_solo_naboopc35 = Creature:new {
	objectName = "Han Solo",
	customName = "Han Solo",
	randomNameTag = false,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 300,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 118,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED + INTERESTING + CONVERSABLE,
	diet = HERBIVORE,
	templates = {"object/mobile/han_solo.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "han_solo_naboopc35_convo_template",
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(han_solo_naboopc35, "han_solo_naboopc35")
