

object_draft_schematic_weapon_carbine_geo = object_draft_schematic_weapon_shared_carbine_geo:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Carbine Geo",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 8, 
   size = 3, 
   factoryCrateType = "object/factory/factory_crate_weapon.iff",
   
   xpType = "crafting_general", 
   xp = 42, 

   assemblySkill = "general_assembly", 
   experimentingSkill = "general_experimentation", 
   customizationSkill = "clothing_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly"},
   ingredientSlotType = {0, 0, 0},
   resourceTypes = {"metal", "chemical", "metal"},
   resourceQuantities = {12, 6, 3},
   contribution = {100, 100, 100},


   targetTemplate = "object/weapon/ranged/carbine/carbine_geo.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_carbine_geo, "object/draft_schematic/weapon/carbine_geo.iff")
