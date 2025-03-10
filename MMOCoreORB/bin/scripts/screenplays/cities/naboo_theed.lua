NabooTheedScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "NabooTheedScreenPlay",

	planet = "naboo",

	gcwMobs = {
		{"stormtrooper", "rebel_trooper", -5206.32, 6, 4182.8, 329.254, 0, "", "", true},
		{"stormtrooper", "rebel_trooper", -4800, 6, 4113, 121.097, 0, "", ""},
		{"stormtrooper", "rebel_trooper", -5126.48, 6.52214, 4130.79, 184.164, 0, "", ""},
		{"stormtrooper", "rebel_trooper", -5132.44, 6, 4087.27, 158.596, 0, "", "", true},
		{"stormtrooper", "rebel_trooper", -5016.16, 6, 4107, 226.021, 0, "", ""},
		{"stormtrooper", "rebel_trooper", -4848.1, 6.55806, 4172.25, 222.445, 0, "", ""},
		{"stormtrooper", "rebel_trooper", -4933.43, 6, 4233.84, 32.6463, 0, "", "", true},
		{"stormtrooper_groupleader", "rebel_resistance_leader", -4857.84, 6.43289, 4178.31, 222.445, 0, "", "", true},
		{"stormtrooper_groupleader", "rebel_resistance_leader", -5969.83, 6, 4246.76, 173.432, 0, "npc_imperial", "conversation", true},
		{"stormtrooper_rifleman", "rebel_gungan_bomber", -5160.99, 6.52214, 4159.54, 216.801, 0, "", ""},
		{"stormtrooper_rifleman", "rebel_gungan_bomber", -4845.17, 6.43094, 4167.68, 222.445, 0, "", ""},
		{"naboo_police", "naboo_police", -5138.49,6,4228.36,0,0, "", "", true},
		{"naboo_police", "naboo_police", -4911.53,6,4089.7,127.784,0, "","", true},
		{"naboo_police", "naboo_police", -5889.07,6,4235.87,170.679,0, "", "", true},
		{"naboo_police", "naboo_police", -6012.09,6,4241.61,83.2023,0, "", "", true},
		{"naboo_police_chief", "naboo_police_chief", -5555.25,6,4241.44,63.404,0, "npc_imperial", "", true},
		{"naboo_police_officer", "naboo_police_officer", -5544.22,6,4232.32,267.981,0, "npc_imperial", "", true},
	},

	patrolNpcs = {"businessman_patrol", "commoner_fat_patrol", "commoner_naboo_patrol", "commoner_old_patrol", "commoner_patrol", "gambler_patrol", "naboo_nomad_patrol", "noble_patrol", "official_patrol", "scientist_patrol"},

	patrolMobiles = {
		--{patrolPoints, template, x, z, y, direction, cell, mood, combatPatrol},
		{"npc_1", "patrolNpc", -4877, 6, 4154, 100, 0, "", false},
		{"npc_2", "patrolNpc", -4924, 6, 4034, 112, 0, "", false},
		{"npc_3", "patrolNpc", -4896, 6, 4167, 352, 0, "", false},
		{"npc_4", "patrolNpc", -5054, 6, 4228, 0, 0, "", false},
		{"npc_5", "patrolNpc", -5320, 6, 4236, 175, 0, "", false},
		{"npc_6", "patrolNpc", -5489, 6, 4404, 229, 0, "", false},
		{"npc_7", "patrolNpc", -5497, 6, 4148, 166, 0, "", false},
		{"npc_8", "patrolNpc", -5291, 6, 4428, 322, 0, "", false},
		{"npc_9", "patrolNpc", -5586, 6, 4495, 212, 0, "", false},
		{"npc_10", "patrolNpc", -4829, 6, 4113, 0, 0, "", false},
		{"npc_11", "patrolNpc", -4956, 6, 4205, 106, 0, "", false},
		{"npc_12", "patrolNpc", -4904, 6, 4201, 110, 0, "conversation", false},
		{"npc_13", "patrolNpc", -4889.4, 6, 4081.8, 0, 0, "conversation", false}

	},

	patrolPoints = {
		--table_name = {{x, z, y, cell, delayAtNextPoint}}
		npc_1 = {{-4877, 6, 4154, 0, true}, {-4896, 6, 4118, 0, true}, {-4911, 6, 4145, 0, true}},
		npc_2 = {{-4924, 6, 4034, 0, true}, {-4893, 6, 4080, 0, true}, {-4896, 6, 4052, 0, true}},
		npc_3 = {{-4896, 6, 4167, 0, true}, {-4932, 6, 4093, 0, true}, {-4936, 6, 4136, 0, true}},
		npc_4 = {{-5054, 6, 4228, 0, true}, {-5087, 6, 4176, 0, true}, {-5117, 6, 4327, 0, true}},
		npc_5 = {{-5320, 6, 4236, 0, false}, {-5332, 6, 4213, 0, false}, {-5327, 6, 4180, 0, true}, {-5279, 6, 4207, 0, false}, {-5327, 6, 4180, 0, true}, {-5318, 6, 4154, 0, true}, {-5363, 6, 4167, 0, false}, {-5348, 6, 4174, 0, true}},
		npc_6 = {{-5489, 6, 4404, 0, false}, {-5471, 6, 4374, 0, false}, {-5470, 6, 4348, 0, false}, {-5502, 6, 4355, 0, true}, {-5539, 6, 4392, 0, false}},
		npc_7 = {{-5497, 6, 4148, 0, false}, {-5503.6, 6, 3989.0, 0, false}, {-5511.7, 6, 3855.8, 0, false}, {-5519.4, 6, 3855.9, 0, false}, {-5511, 6, 3991, 0, false}, {-5501, 6, 4069, 0, true}, {-5497, 6, 4300, 0, false}},
		npc_8 = {{-5291, 6, 4428, 0, false}, {-5291, 6, 4486, 0, false}, {-5311, 6, 4544, 0, false}, {-5299.3, 6, 4556.5, 0, true}, {-5298.6, 6, 4562.5, 0, false}, {-5309, 6, 4549, 0, true}},
		npc_9 = {{-5586, 6, 4495, 0, true}, {-5569, 6, 4270, 0, true}},
		npc_10  = {{-4829, 6, 4113, 0, true}, {-4871, 6, 4098, 0, true}, {-4893, 6, 4115, 0, true}, {-4923, 6, 4209, 0, true}},
		npc_11 = {{-4956, 6, 4205, 0, true}, {-4883, 6, 4170, 0, true}},
		npc_12 = {{-4902, 6, 4199, 0, true}, {-4933, 6, 4227, 0, true}},
		npc_13 = {{-4889.4, 6, 4081.8, 0, false}, {-4880, 6, 4083, 0, true}, {-4844, 6, 4118, 0, false}, {-4845, 6, 4155, 0, false}, {-4844, 6, 4118, 0, true}},
	},

	stationaryCommoners = {"commoner", "commoner_fat", "commoner_naboo", "commoner_old"},
	stationaryNpcs = {"agriculturalist", "artisan", "bodyguard", "bothan_diplomat", "bounty_hunter", "businessman", "commoner_technician", "contractor", "entertainer", "explorer", "farmer", "farmer_rancher", "fringer",
				"gambler", "gungan_hunter", "gungan_priest", "gungan_priest", "info_broker", "medic", "mercenary", "miner", "naboo_nomad", "noble", "official", "patron_ishitib", "pilot", "rancher", "scientist", "scout_trooper", "slicer", "traveller"},

	--{respawn, x, z, y, direction, cell, mood}
	stationaryMobiles = {
		{ 1, -5827.81, 6, 4173.98, 180, 0, "conversation"}, { 1, -5258.93, 6, 4187.17, 180, 0, "conversation"}, { 1, -5082.41, 6, 4261.15, 180, 0, "conversation"}, { 1, -5083.5, 6, 4259.9, 42, 0, "conversation"},
		{ 1, -5394.06, 6, 4519.32, 169, 0, ""}, { 1, -5384.95, 6, 4283.38, 71, 0, ""}, { 1, -5256.72, 6, 4254.43, 243, 0, ""}, { 1, -5319.27, 6, 4365.19, 286 , 0, ""},
		{ 1, -5327.58, 6, 4267.42, 170, 0, ""}, { 1, -5140.78, 6, 4404.92, 212, 0, ""}, { 1, -6036.18, 6, 4286.85, 147, 0, ""}, { 1, -6055.49, 6, 4319.64, 186, 0, ""},
		{ 1, -6040.72, 6, 4260.46, 325, 0, ""}, { 1, -5282.92, 6, 4405.65, 279, 0, ""}, { 1, -5280.52, 6, 4372.79, 226, 0, ""}, { 1, -5281.75, 6, 4325.98, 47, 0, ""},
		{ 1, -5306.24, 6, 4357.56, 77, 0, ""}, { 1, -5326.21, 6, 4292.88,1, 55, 0, ""},	{ 1, -5309.23, 6, 4307.01, 78, 0, ""}, { 1, -5371.2, 6, 4337.4, 57, 0, ""},
		{ 1, -5392.94, 6, 4361.06, 74, 0, ""}, { 1, -5370.57, 6, 4384.5, 150, 0, ""}, { 1, -5399.67, 6,4424.78, 313, 0, ""}, { 1, -5380.45, 6, 4628.71, 65, 0, ""},
		{ 1, -5396.24, 6, 4492.81, 306, 0, ""}, { 1, -6023.52, 6, 4213.29, 308, 0, ""}, { 1, -5219.06, 6, 4291.75, 225, 0, ""}, { 1, -5194.95, 6, 4189.82, 3, 0, ""},
		{ 1, -5135.69, 6, 4219.76, 3, 0, ""}, { 1,-5124.32, 6, 4230.7, 188, 0, ""}, { 1, -5165.37, 6, 4173.32, 44, 0, ""}, { 1, -5171.36, 6, 4148.39, 89, 0, ""},
		{ 1, -5123.13, 6, 4201.32, 268, 0, ""}, { 1, -5116.4, 6, 4263.5, 40, 0, "conversation"}, { 1, -5114.4, 6, 4265, 220, 0, "conversation"}, { 1, -5101.22, 6, 4246.47, 39, 0, ""},
		{ 1, -5089.1, 6, 4284.4, 278, 0, ""}, { 1, -5069.74, 6, 4262.45, 304, 0, ""}, {1, -4835.5, 6.0, 4151.3, 157, 0, "conversation"}, {1, -4835.3, 6.0, 4150.1, 349, 0, "conversation"},
		{ 1, -4865.4, 6, 4161.9, 308, 0, ""}, { 1, -4902.73, 6, 4106.81, 350, 0, ""}, { 1, -4917.2, 6.0, 4098.9, 338, 0, "conversation"}, {1, -4917.5, 6.0, 4100.1, 149, 0, "conversation"},
		{ 1, -5075.93, 6, 4204.5, 258, 0, ""}, { 1, -5053.71, 6, 4151.61, 236, 0, ""}, { 1, -5090.67, 6, 4173.27, 324, 0, ""}, { 1, -5088.5, 6, 4152.21, 228, 0, ""},
		{ 1, -5076.56, 6, 4162.09, 47, 0, ""}, { 1, -5032.44, 6, 4131.62, 179, 0, ""},	{ 1, -5019.1, 6, 4125.83, 354, 0, ""}, { 1, -5023.92, 6, 4040.07, 112, 0, ""},
		{ 1, -5004.8, 6, 4067.54, 285, 0, ""}, { 1, -5037.78, 6, 4078.71, 14, 0, ""}, { 1, -5028.7, 6, 4237.1, 225, 0, "conversation"},	{1, -5029.5, 6, 4236.2, 45, 0, "conversation"},
		{ 1, -5048.7, 6, 4225.4, 225, 0, "conversation"}, { 1, -5049.5, 6, 4224.1, 41, 0, "conversation"}, { 1, -5007.98, 6, 4111.83, 156, 0, ""}, { 1, -5021.05, 6, 4230.04, 95, 0, ""},
		{ 1, -4991.86, 6, 4125.22, 355, 0, ""}, { 1,-4970.37, 6, 4069.78, 230, 0, ""},	{ 1, -4892.24, 6, 4083, 131, 0, ""}, { 1, -4933.63, 6, 4090.17, 355, 0, ""},
		{ 1, -4921.08, 6, 4061.48, 324, 0, ""}, { 1, -4901.7, 6, 4197.5, 55, 0, "conversation"}, {1, -4978.62, 6, 4119.77, 158, 0, ""},	{1, -4941.05, 6, 4184.26, 54, 0, ""},
		{ 1, -4968.55, 6, 4158.78, 56, 0, ""}, { 1, -4978.84, 6, 4263.64, 225, 0, ""}, {1, -4973.93, 6, 4220.31, 28, 0, ""}, {1, -4981.69, 6, 4244.41, 37, 0, ""},
		{ 1, -4983.97, 6, 4209.75, 54, 0, ""}, { 1, -4976.0, 6, 4193.5, 45, 0, ""}, { 1, -4973.2, 6, 4175.16, 163, 0, ""}, { 1, -4969, 6, 4192, 45, 0, "conversation"},
		{ 1, -4967.6, 6, 4193.8, 225, 0, "conversation"}, { 1,-5803.39, 6, 4101.34, 219, 0, ""}, {1, -5858.79, 6, 4147.3, 177, 0, ""},	{1, -5941.62, 6, 4339.4, 156, 0, ""},
		{ 1, -5996.82, 6, 4309.73, 327, 0, ""}, { 1, -5968.83, 6, 4287.92, 169, 0, ""},	{ 1, -5996.87, 6, 4269.75, 70, 0, ""}, { 1,-5928.72, 6, 4217.24, 56, 0, ""},
		{ 1, -5727.93, 6, 4316.95, 342, 0, ""}, { 1, -5741.57, 6,4304.91, 133, 0, ""},	{ 1, -5757.67, 6, 4411.04, 296, 0, ""}, { 1,-5818.26, 6, 4407.8, 25, 0, ""},
		{ 1, -5751.98, 6, 4147.86, 61, 0, ""}, { 1, -5729.03, 6, 4120.76, 304, 0, ""},	{ 1, -5709.29, 6, 4134.09, 24, 0, ""}, { 1,-5675.02, 6, 4238.39, 193, 0, ""},
		{ 1, -5686.06, 6, 4307.41, 304, 0, ""},	{ 1, -5663.64, 6, 4136.03, 34, 0, ""}, { 1, -5690.65, 6, 4124.1, 313, 0, ""}, { 1,-5632.25, 6, 4137.72, 121, 0, ""},
		{ 1, -5592.68, 6, 4154.97, 125, 0, ""}, { 1, -5600.12, 6, 4053.65, 55, 0, ""},	{ 1, -5418.26, 6, 4347.1, 173, 0, ""}, { 1,-5409.46, 6, 4386.55, 51, 0, ""},
		{ 1, -5425.82, 6, 4371.62, 158, 0, ""}, { 1, -5416.72, 6, 4413.87, 130, 0, ""},	{ 1, -5428.98, 6, 4447.99, 285, 0, ""}, { 1,-5449.78, 6, 4428.75, 8, 0, ""},
		{ 1, -5457.38, 6, 4469.32, 299, 0, ""}, { 1, -5468.87, 6, 4432.8, 25, 0, ""}, { 1, -5458.78, 6, 4343.19, 264, 0, ""},	{ 1,-5485.31, 6, 4373.11, 251, 0, ""},
		{ 1, -5492.21, 6, 4337.69, 94, 0, ""}, { 1, -5507.67, 6, 4309.38, 330, 0, ""},	{ 1, -5520.11, 6, 4349.32, 243, 0, ""}, { 1,-5525.24, 6, 4430.28, 32, 0, ""},
		{ 1, -5537.28, 6, 4411.34, 252, 0, ""}, { 1, -5545.73, 6, 4466.12, 324, 0, ""},	{ 1, -5565.53, 6, 4469.02, 122, 0, ""}, { 1,-5541.82, 6,4394.46, 238, 0, ""},
		{ 1, -5547.21, 6, 4383.24, 155, 0, ""}, { 1, -5554.8, 6, 4319.26, 256, 0, ""}, { 1, -5541.38, 6, 4302.99, 60, 0, ""}, { 1,-5558.64, 6, 4283.8, 12, 0, ""},
		{ 1, -5599.43, 6, 4261.62, 241, 0, ""}, { 1, -5583.5, 6, 4237.52, 344, 0, ""}, { 1, -5562.58, 6, 4208.34, 326, 0, ""}, { 1, -5507.69, 6, 4195.83, 129, 0, ""},
		{ 1, -5487.23, 6, 4193.99, 298, 0, ""}, { 1, -5453.08, 6, 4198.55, 346, 0, ""}, { 1, -5457.43, 6, 4156.44, 21, 0, ""}, { 1, -5404.2, 6, 4199.59, 80, 0, ""},
		{ 1, -5437.58, 6, 4301.41, 199, 0, ""}, { 1, -5778.43, 6, 4397.54, 180, 0, "nervous"}, { 1, -5127.71, 6, 4336.34, 0, 0, ""}, { 1, -4870.86,6, 4179.63, 345, 0, "conversation"},
		{ 1, -4872.0, 6, 4181.6, 150, 0, "conversation"}, { 1, -5138.49, 6, 4229.36, 180, 0, ""}, { 1, -5827.81, 6, 4172.98, 0, 0, "conversation"}, { 1, -5886.59, 6, 4369.23, 180, 0, "conversation"},
		{ 1, -5886.59, 6, 4368.23, 0, 0, "conversation"},
	},

	mobiles = {
		--Outside
		{"imperial_recruiter",0,-4928,6,4231,174,0, ""},
		{"imperial_recruiter",0,-4936,6,4231,174,0, ""},
		{"informant_npc_lvl_1",0,-4833,6,4134,0,0, ""},
		{"informant_npc_lvl_1",0,-4892,6,4216,0,0, ""},
		{"informant_npc_lvl_1",0,-4962,6,4259,0,0, ""},
		{"informant_npc_lvl_1",0,-5100,6,4146,0,0, ""},
		{"informant_npc_lvl_1",0,-5455,6,4277,0,0, ""},
		{"informant_npc_lvl_1",0,-5436,6,4133,0,0, ""},
		{"informant_npc_lvl_1",0,-5369,6,4178,0,0, ""},
		{"informant_npc_lvl_1",0,-5477,6,4089,0,0, ""},
		{"j1_po", 1, -4859, 6, 4156, 18, 0, "neutral"},
		{"kulton_woodle", 1, -4857.1, 6, 4155.7, 299, 0, "neutral"},
		{"landau", 1, -5516.19, 6, 4404.77, 145, 0, "npc_imperial"},

		{"junk_dealer", 0, -5884.3, 6, 4214.3, 83, 0, ""},

		{"junk_dealer", 0, -5222.78, 6, 4217.68, -130, 0, ""},
		{"junk_dealer", 0, -5086.83, 6, 4142.32, 37, 0, ""},
		{"junk_dealer", 0, -4999.46, 6, 4120.26, 113, 0, ""},

		{"trainer_1hsword",0,-5565,6,4304,84,0, ""},
		{"trainer_2hsword",0,-5382,6,4327,180,0, ""},
		{"trainer_architect",0,-4931,6,4020,39,0, ""},
		{"trainer_armorsmith", 0, -12.7, 1.1, -0.7, 178, 1692092, ""},
		{"trainer_artisan",0,-4946,6,4131,138,0, ""},
		{"trainer_artisan",0,-5996.85,6,4287.56,69,0, ""},
		{"trainer_bioengineer",0,-5017,6,4009,0,0, ""},
		{"trainer_brawler",0,-5942,6,4253,169,0, ""},
		{"trainer_brawler",0,-4858,6,4087,-47,0, ""},
		{"trainer_brawler",0,-4684,6,3947,-71,0, ""},
		{"trainer_chef",0,-4877,6,4065,0,0, ""},
		{"trainer_combatmedic", 0, -16.8, 0.3, 9.7, 225, 1697364, ""},
		{"trainer_combatmedic", 0, 30.6, 7.3, 6.0, 280, 1697368, ""},
		{"trainer_doctor",0,17.4,0.3,0.8, 15, 1697360, ""},
		{"trainer_doctor",0,-5038,6,4146,180,0, ""},
		{"trainer_entertainer",0,-4840,6,4082,66,0, ""},
		{"trainer_entertainer",0,-5834,6,4241,104,0, ""},
		{"trainer_marksman",0,-4674,6,3995,180,0, ""},
		{"trainer_marksman",0,-5982,6,4254,180,0, ""},
		{"trainer_marksman",0,-4863,6,4079,0,0, ""},
		{"trainer_medic",0,-4592,6,4125,217,0, ""},
		{"trainer_medic",0,-5968,6,4277,-96,0, ""},
		{"trainer_medic",0,-4934,6,4153,129,0, ""},
		{"trainer_merchant",0,-5129,6,4238,112,0, ""},
		{"trainer_polearm",0,-5375.06,6,4310.92,84,0, ""},
		{"trainer_scout",0,-4909.36,6,4025.86,11,0, ""},
		{"trainer_scout",0,-5986.5,6,4232.79,104,0, ""},
		{"trainer_scout",0,-4796,6,4103,240,0, ""},
		{"trainer_unarmed",0,-5649,6,4206,0,0, ""},

		--Hotel
		{"businessman",60,15.5641,1.28309,-2.37071,135.005,1677395, "worried"},
		{"businessman",60,-4.2087,0.999986,2.15452,179.993,1677394, "conversation"},
		{"mercenary",300,4.2931,1,-7.62435,360.011,1677394, "angry"},
		{"mercenary",300,-11.7266,1.6,-16.4722,0,1677399, "nervous"},
		{"noble",300,16.6641,1.28309,-3.47071,360.011,1677395, "conversation"},
		{"corellia_times_investigator",300,-11.7266,1.6,-15.4722,180.001,1677399, "conversation"},
		{"comm_operator",300,16.6641,1.28309,-2.37071,180.007,1677395, ""},
		{"bounty_hunter",300,-4.2087,0.999986,1.15452,0,1677394, "angry"},
		{"ysnide_omewror",60,4.2931,1.00001,-6.52435,180.012,1677394, "conversation"},
		{"commoner_old",300,-22.6115,1.6,-10.3739,179.996,1677400, "sad"},
		{"noble",300,-22.6115,1.6,-11.4739,0,1677400, "conversation"},

		--Guild Hall/Theater
		{"mercenary",300,-6.34119,0.6,-9.37965,360.011,5475480, "neutral"},
		{"comm_operator",300,-6.34119,0.6,-8.27965,180.012,5475480, "neutral"},
		{"commoner_technician",60,22.86,2.1,58.4,0,5475486, "worried"},
		{"etheli_drenel",60,12.4716,2.31216,25.6024,180.001,5475485, "conversation"},
		{"sullustan_male",300,12.4716,2.41226,24.5116,5.24304,5475485, "neutral"},
		{"pilot",300,22.7,2.1,60.0,180,5475486, "conversation"},
		{"chiss_female",60,3.05224,2.12878,72.5469,180.005,5475487, "npc_consoling"},
		{"chiss_male",300,3.05224,2.12878,71.4469,0,5475487, "nervous"},
		{"medic",60,-11.5446,2.12878,75.9709,0,5475487, "conversation"},
		{"trainer_dancer",0,18.2374,2.12871,53.9343,6,5475487, ""},
		{"trainer_entertainer",0,26.2,2.12854,75.2,175,5475487, ""},
		{"trainer_musician",0,23.8,2.12801,54,28,5475486, ""},
		{"vendor",60,-11.5446,2.12878,76.8966,179.996,5475487, "happy"},
		{"trainer_imagedesigner",0,-22.9,2.1287,74.7,121,5475488, ""},

		--Starport
		{"trainer_shipwright",0,0.2,0.7,-71.4,-177,1692101, "conversation"},
		{"pilot",300,-29.8622,7.9418,10.8957,180.008,1692104, "happy"},
		{"commoner_technician",300,-37.5788,7.9418,22.3791,0,1692104, "conversation"},
		{"chassis_dealer",60,-1.0,0.7,-72.2,50,1692101, "neutral"},
		{"commoner_naboo", 60, -23.0, 0.7, -70.5, 190, 1692102, "conversation"},
		{"commoner_naboo", 60, -24.1, 0.7, -71.7, 35, 1692102, "conversation"},
		{"commoner_naboo", 60, -22.5, 0.7, -72.0, 350, 1692102, "conversation"},

		--Theed Palace
		{"dinge", 60, 0.80, 12.01, 6.36, 0, 1688859, "neutral"},
		{"kaydine", 60, 1.29, 21.0, -44.28, 1, 1688860, "neutral"},
		{"dulios", 60, 40.41, 33.0, -93.75, -90, 1688867, "neutral"},
		{"diness_imler", 60, -45.66, 33.0, -93.9, 90, 1688873, "neutral"},

		{"nial_declann", 60, 30.37, 23.0, -32.39, -90, 1688861, "npc_imperial"},
		{"tk_8h2", 60, 29.11, 23.0, -30.59, -129, 1688861, ""},
		{"tk_9h4", 60, 29.34, 23.00, -34.46, -60, 1688861, ""}
	}
}

registerScreenPlay("NabooTheedScreenPlay", true)

function NabooTheedScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:spawnGcwMobiles()
		self:spawnPatrolMobiles()
		self:spawnStationaryMobiles()
	end
end

function NabooTheedScreenPlay:spawnSceneObjects()
	--outside starport
	spawnSceneObject(self.planet, "object/tangible/crafting/station/public_space_station.iff", -4830.96, 6, 4141.53, 0, math.rad(-140) )
	spawnSceneObject(self.planet, "object/tangible/crafting/station/public_space_station.iff", -4886.07, 6, 4188.23, 0, math.rad(-140) )

	-- Imperial Banners Near Commander Landau - Imperial JTL Coordinator
	spawnSceneObject(self.planet, "object/tangible/gcw/flip_banner_onpole_imperial.iff", -5518.5, 6.0, 4406.1, 0, math.rad(-20))
	spawnSceneObject(self.planet, "object/tangible/gcw/flip_banner_onpole_imperial.iff", -5515.0, 6.0, 4406.6, 0, 0)
end

function NabooTheedScreenPlay:spawnMobiles()
	local mobiles = self.mobiles

	for i = 1, #mobiles, 1 do
		local mob = mobiles[i]

		-- {template, respawn, x, z, y, direction, cell, mood}
		local pMobile = spawnMobile(self.planet, mob[1], mob[2], mob[3], mob[4], mob[5], mob[6], mob[7])

		if (pMobile ~= nil) then
			if mob[8] ~= "" then
				CreatureObject(pMobile):setMoodString(mob[8])
			end

			AiAgent(pMobile):addObjectFlag(AI_STATIC)

			if CreatureObject(pMobile):getPvpStatusBitmask() == 0 then
				CreatureObject(pMobile):clearOptionBit(AIENABLED)
			end
		end
	end

	local pNpc = spawnMobile(self.planet, "junk_dealer", 0, -5762.59, 6.6, 4234.66, 87, 0)
	if pNpc ~= nil then
		AiAgent(pNpc):setConvoTemplate("junkDealerFineryConvoTemplate")
	end

	--Creatures
	
	spawnMobile(self.planet, "bounty_hunter_thug", 200, 2126.1, -196.3, 5722.7, -131, 0)
	spawnMobile(self.planet, "bounty_hunter_thug", 200, 2108.7, -196.8, 5720.3, -131, 0)
	spawnMobile(self.planet, "bounty_hunter_thug", 200, 2096.6, -196.3, 5721.1, -131, 0)
	spawnMobile(self.planet, "bounty_hunter_thug", 150, -4092, 6.2, 3140, -123, 0)
	spawnMobile(self.planet, "tusken_raider", 150, -4090, 6.2, 3144, -123, 0)
	--spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -5195, 6, getRandomNumber(10) + 3988, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -5200, 6, getRandomNumber(10) + 3997, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -5207, 6, getRandomNumber(10) + 3992, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -5205, 6, getRandomNumber(10) + 3989, getRandomNumber(360), 0)
	spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -5201, 6, getRandomNumber(10) + 3981, getRandomNumber(360), 0)
	spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -5202, 6, getRandomNumber(10) + 3975, getRandomNumber(360), 0)

	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -5152.02, 6, getRandomNumber(10) + 3882.86, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -5156.30, 6, getRandomNumber(10) + 3880.18, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -5145.15, 6, getRandomNumber(10) + 3882.41, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -5148.77, 6, getRandomNumber(10) + 3879.10, getRandomNumber(360), 0)
	spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -5153.03, 6, getRandomNumber(10) + 3876.91, getRandomNumber(360), 0)
	spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -5143.66, 6, getRandomNumber(10) + 3875.17, getRandomNumber(360), 0)

	--spawnMobile(self.planet, "nuna", 300, getRandomNumber(10) + -5054.71, 6, getRandomNumber(10) + 3959.16, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nuna", 300, getRandomNumber(10) + -5049.91, 6, getRandomNumber(10) + 3959.13, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nuna", 300, getRandomNumber(10) + -5056.38, 6, getRandomNumber(10) + 3954.13, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nuna", 300, getRandomNumber(10) + -5050.76, 6, getRandomNumber(10) + 3955.11, getRandomNumber(360), 0)
	spawnMobile(self.planet, "nuna", 300, getRandomNumber(10) + -5046.74, 6, getRandomNumber(10) + 3956.10, getRandomNumber(360), 0)
	spawnMobile(self.planet, "nuna", 300, getRandomNumber(10) + -5050.08, 6, getRandomNumber(10) + 3951.88, getRandomNumber(360), 0)

	--spawnMobile(self.planet, "mott_calf", 300, getRandomNumber(10) + -5068.63, 6, getRandomNumber(10) + 3874.93, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "mott_calf", 300, getRandomNumber(10) + -5063.50, 6, getRandomNumber(10) + 3874.98, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "mott_calf", 300, getRandomNumber(10) + -5059.21, 6, getRandomNumber(10) + 3873.08, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "mott_calf", 300, getRandomNumber(10) + -5064.77, 6, getRandomNumber(10) + 3870.68, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "mott_calf", 300, getRandomNumber(10) + -5069.20, 6, getRandomNumber(10) + 3867.40, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "mott_calf", 300, getRandomNumber(10) + -5059.54, 6, getRandomNumber(10) + 3866.31, getRandomNumber(360), 0)

	--spawnMobile(self.planet, "hermit_spider", 300, getRandomNumber(10) + -5062.01, 6, getRandomNumber(10) + 3771.87, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "hermit_spider", 300, getRandomNumber(10) + -5070.54, 6, getRandomNumber(10) + 3772.20, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "hermit_spider", 300, getRandomNumber(10) + -5067.63, 6, getRandomNumber(10) + 3777.25, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "hermit_spider", 300, getRandomNumber(10) + -5072.20, 6, getRandomNumber(10) + 3778.46, getRandomNumber(360), 0)
	spawnMobile(self.planet, "hermit_spider", 300, getRandomNumber(10) + -5065.83, 6, getRandomNumber(10) + 3781.39, getRandomNumber(360), 0)
	spawnMobile(self.planet, "hermit_spider", 300, getRandomNumber(10) + -5061.01, 6, getRandomNumber(10) + 3779.68, getRandomNumber(360), 0)

	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -4952.30, 6, getRandomNumber(10) + 3863.72, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -4947.92, 6, getRandomNumber(10) + 3863.87, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -4944.95, 6, getRandomNumber(10) + 3866.25, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -4948.41, 6, getRandomNumber(10) + 3869.46, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -4946.46, 6, getRandomNumber(10) + 3873.06, getRandomNumber(360), 0)
	spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -4952.32, 6, getRandomNumber(10) + 3873.58, getRandomNumber(360), 0)

	--spawnMobile(self.planet, "hermit_spider", 300, getRandomNumber(10) + -4969.69, 6, getRandomNumber(10) + 3767.96, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "hermit_spider", 300, getRandomNumber(10) + -4962.60, 6, getRandomNumber(10) + 3767.81, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "hermit_spider", 300, getRandomNumber(10) + -4960.24, 6, getRandomNumber(10) + 3772.21, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "hermit_spider", 300, getRandomNumber(10) + -4965.28, 6, getRandomNumber(10) + 3772.93, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "hermit_spider", 300, getRandomNumber(10) + -4970.08, 6, getRandomNumber(10) + 3776.47, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "hermit_spider", 300, getRandomNumber(10) + -4967.46, 6, getRandomNumber(10) + 3780.19, getRandomNumber(360), 0)

	--spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -4862.57, 6, getRandomNumber(10) + 3768.61, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -4854.70, 6, getRandomNumber(10) + 3768.47, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -4858.64, 6, getRandomNumber(10) + 3773.44, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -4866.15, 6, getRandomNumber(10) + 3775.88, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -4860.42, 6, getRandomNumber(10) + 3778.87, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -4856.47, 6, getRandomNumber(10) + 3776.79, getRandomNumber(360), 0)

	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -5041, 6, getRandomNumber(10) + 3681, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -5050, 6, getRandomNumber(10) + 3682, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -5046, 6, getRandomNumber(10) + 3675, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -5040, 6, getRandomNumber(10) + 3671, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -5039, 6, getRandomNumber(10) + 3685, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "nightspider", 300, getRandomNumber(10) + -5047, 6, getRandomNumber(10) + 3686, getRandomNumber(360), 0)

	--spawnMobile(self.planet, "mott_calf", 300, getRandomNumber(10) + -4946.98, 6, getRandomNumber(10) + 3644.18, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "mott_calf", 300, getRandomNumber(10) + -4939.79, 6, getRandomNumber(10) + 3645.60, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "mott_calf", 300, getRandomNumber(10) + -4942.72, 6, getRandomNumber(10) + 3647.44, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "mott_calf", 300, getRandomNumber(10) + -4946.78, 6, getRandomNumber(10) + 3650.67, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "mott_calf", 300, getRandomNumber(10) + -4943.30, 6, getRandomNumber(10) + 3652.44, getRandomNumber(360), 0)
	--spawnMobile(self.planet, "mott_calf", 300, getRandomNumber(10) + -4939.35, 6, getRandomNumber(10) + 3653.82, getRandomNumber(360), 0)
	
	--Cantina
	pNpc = spawnMobile(self.planet, "junk_dealer", 0, -5.8, -0.9, -20.9, -52, 96)
	if pNpc ~= nil then
		AiAgent(pNpc):setConvoTemplate("junkDealerArmsConvoTemplate")
	end

	--[[
	--double waterfall island near Palace
	spawnMobile(self.planet, "mott_calf", 600, getRandomNumber(10) + -5201.0, 6, getRandomNumber(10) + 4542.6, getRandomNumber(360), 0)
	spawnMobile(self.planet, "mott_calf", 600, getRandomNumber(10) + -5195.0, 6, getRandomNumber(10) + 4537.4, getRandomNumber(360), 0)
	spawnMobile(self.planet, "mott_calf", 600, getRandomNumber(10) + -5202.4, 6, getRandomNumber(10) + 4552.0, getRandomNumber(360), 0)
	spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -5176.4, 6, getRandomNumber(10) + 4612.2, getRandomNumber(360), 0)
	spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -5161.3, 6, getRandomNumber(10) + 4601.7, getRandomNumber(360), 0)
	spawnMobile(self.planet, "flewt", 300, getRandomNumber(10) + -5193.3, 6, getRandomNumber(10) + 4610.0, getRandomNumber(360), 0)
	]]
end
