object_draft_schematic_clothing_clothing_armor_Nightsister_ hat_02 = object_draft_schematic_clothing_shared_clothing_armor_Nightsister_ hat_02:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Nightsister_ hat_02",

   craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
   complexity = 45, 
   size = 4, 
   factoryCrateType = "object/factory/factory_crate_clothing.iff",

   xpType = "crafting_clothing_armor", 
   xp = 650, 

   assemblySkill = "armor_assembly", 
   experimentingSkill = "armor_experimentation", 
   customizationSkill = "armor_customization", 

   customizationOptions = {2},
   customizationStringNames = {"/private/index_color_1"},
   customizationDefaults = {0},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"auxilary_coverage", "body", "liner"},
   ingredientSlotType = {0, 0, 0},
   resourceTypes = {"fiberplast_naboo", "aluminum", "hide_wooly"},
   resourceQuantities = {100, 100, 100},
   contribution = {100, 100, 100},

   targetTemplate = "object/tangible/wearables/armor/nightsister/Nightsister_ hat_02.iff",

   additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_armor_Nightsister_ hat_02, "object/draft_schematic/clothing/clothing_armor_Nightsister_ hat_02.iff.iff")
