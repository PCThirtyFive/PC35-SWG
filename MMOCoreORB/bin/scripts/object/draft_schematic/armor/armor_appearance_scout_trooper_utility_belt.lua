object_draft_schematic_armor_armor_appearance_scout_trooper_utility_belt = object_draft_schematic_armor_shared_armor_appearance_scout_trooper_utility_belt:new {
	templateType = DRAFTSCHEMATIC,

--	customObjectName = "Painting of a Krayt Dragon Skeleton",

--	craftingToolTab = 512, -- (See DraftSchematicObjectTemplate.h)
--	complexity = 15,
--	size = 2,

--	xpType = "crafting_structure_general",
--	xp = 80,

--	assemblySkill = "structure_assembly",
--	experimentingSkill = "structure_experimentation",
--	customizationSkill = "structure_customization",

--	customizationOptions = {},
--	customizationStringNames = {},
--	customizationDefaults = {},

--	ingredientTemplateNames = {"craft_furniture_ingredients_n", "craft_furniture_ingredients_n", "craft_furniture_ingredients_n"},
--	ingredientTitleNames = {"frame", "canvas", "paints"},
--	ingredientSlotType = {0, 0, 0},
--	resourceTypes = {"metal", "hide", "petrochem_inert_polymer"},
--	resourceQuantities = {50, 50, 40},
--	contribution = {100, 100, 100},


	targetTemplate = "object/tangible/wearables/armor/marine/armor_appearance_scout_trooper_utility_belt.iff",

	additionalTemplates = {
	}
}

ObjectTemplates:addTemplate(object_draft_schematic_armor_armor_appearance_scout_trooper_utility_belt, "object/draft_schematic/armor/armor_appearance_scout_trooper_utility_belt.iff")
