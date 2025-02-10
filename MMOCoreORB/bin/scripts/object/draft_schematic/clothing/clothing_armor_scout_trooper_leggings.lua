object_draft_schematic_clothing_clothing_armor_scout_trooper_leggings = object_draft_schematic_clothing_shared_clothing_armor_scout_trooper_leggings:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "scout_trooper_leggings",

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

   targetTemplate = "object/tangible/wearables/armor/scout_trooper/scout_trooper_leggings.iff",

   additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_armor_scout_trooper_leggings, "object/draft_schematic/clothing/clothing_armor_scout_trooper_leggings.iff.iff")
