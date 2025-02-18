object_weapon_melee_special_shared_blasterfist = SharedWeaponObjectTemplate:new {
	clientTemplateFileName = "object/weapon/melee/special/shared_blasterfist.iff"
	}

ObjectTemplates:addClientTemplate(object_weapon_melee_special_shared_blasterfist, "object/weapon/melee/special/shared_blasterfist.iff")

object_weapon_melee_special_shared_ep3_loot_soulstinger = SharedWeaponObjectTemplate:new {
	clientTemplateFileName = "object/weapon/melee/special/shared_ep3_loot_soulstinger.iff"
	}

ObjectTemplates:addClientTemplate(object_weapon_melee_special_shared_ep3_loot_soulstinger, "object/weapon/melee/special/shared_ep3_loot_soulstinger.iff")

object_weapon_melee_special_shared_wookiee_knuckler = SharedWeaponObjectTemplate:new {
	clientTemplateFileName = "object/weapon/melee/special/ep3/shared_wookiee_knuckler.iff"
	}

ObjectTemplates:addClientTemplate(object_weapon_melee_special_shared_wookiee_knuckler, "object/weapon/melee/special/ep3/shared_wookiee_knuckler.iff")







object_weapon_melee_special_shared_blacksun_razor = SharedWeaponObjectTemplate:new {
	clientTemplateFileName = "object/weapon/melee/special/shared_blacksun_razor.iff"
	}

ObjectTemplates:addClientTemplate(object_weapon_melee_special_shared_blacksun_razor, "object/weapon/melee/special/shared_blacksun_razor.iff")

object_weapon_melee_special_shared_vibroknuckler = SharedWeaponObjectTemplate:new {
	clientTemplateFileName = "object/weapon/melee/special/shared_vibroknuckler.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/wp_sp_vibroknuckler.apt",
	arrangementDescriptorFilename = "abstract/slot/arrangement/wearables/hold_r.iff",
	attackType = 1,

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "clientdata/weapon/client_melee_knuckler.cdf",
	clientGameObjectType = 131073,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 1,
	collisionMaterialBlockFlags = 0,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 1,
	containerVolumeLimit = 0,
	customizationVariableMapping = {},

	detailedDescription = "@weapon_detail:vibroknuckler",

	gameObjectType = 131073,

	locationReservationRadius = 0,
	lookAtText = "@weapon_lookat:vibroknuckler",

	noBuildRadius = 0,

	objectName = "@weapon_name:vibroknuckler",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/default_weapon.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	weaponEffect = "bolt",
	weaponEffectIndex = 0,

	clientObjectCRC = 1697024206,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/weapon/base/shared_base_weapon.iff", "object/weapon/melee/base/shared_base_melee.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_weapon_melee_special_shared_vibroknuckler, "object/weapon/melee/special/shared_vibroknuckler.iff")
