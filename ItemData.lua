local t = TransmogTokens;

t.INVENTORY_SLOTS = {
    ["INVTYPE_HEAD"] = {1},
    ["INVTYPE_SHOULDER"] = {3},
    ["INVTYPE_BODY"] = {4},
    ["INVTYPE_CHEST"] = {5},
    ["INVTYPE_ROBE"] = {5},
    ["INVTYPE_WAIST"] = {6},
    ["INVTYPE_LEGS"] = {7},
    ["INVTYPE_FEET"] = {8},
    ["INVTYPE_WRIST"] = {9},
    ["INVTYPE_HAND"] = {10},
    ["INVTYPE_CLOAK"] = {15},
    ["INVTYPE_WEAPON"] = {16, 17},
    ["INVTYPE_SHIELD"] = {17},
    ["INVTYPE_2HWEAPON"] = {16, 17},
    ["INVTYPE_WEAPONMAINHAND"] = {16},
    ["INVTYPE_RANGED"] = {16},
    ["INVTYPE_RANGEDRIGHT"] = {16},
    ["INVTYPE_WEAPONOFFHAND"] = {17},
    ["INVTYPE_HOLDABLE"] = {17},
	["INVTYPE_TABARD"] = false,
};

t.ARMOR_TYPE_PLATE = "PLATE";
t.ARMOR_TYPE_MAIL = "MAIL";
t.ARMOR_TYPE_CLOTH = "CLOTH";
t.ARMOR_TYPE_LEATHER = "LEATHER";

-- todo: is there some global enum for this already?
local CLASS_WARRIOR = 1
local CLASS_PALADIN = 2
local CLASS_DEATHKNIGHT = 6
local CLASS_MAGE = 8
local CLASS_PRIEST = 5
local CLASS_WARLOCK = 9
local CLASS_DRUID = 11
local CLASS_ROGUE = 4
local CLASS_MONK = 10
local CLASS_DEAMONHUNTER = 12
local CLASS_HUNTER = 3
local CLASS_SHAMAN = 7

t.CLASS_ITEM_TYPE = {
	[CLASS_WARRIOR] = t.ARMOR_TYPE_PLATE,
	[CLASS_PALADIN] = t.ARMOR_TYPE_PLATE,
	[CLASS_DEATHKNIGHT] = t.ARMOR_TYPE_PLATE,
	[CLASS_MAGE] = t.ARMOR_TYPE_CLOTH,
	[CLASS_WARLOCK] = t.ARMOR_TYPE_CLOTH,
	[CLASS_PRIEST] = t.ARMOR_TYPE_CLOTH,
	[CLASS_DRUID] = t.ARMOR_TYPE_LEATHER,
	[CLASS_ROGUE] = t.ARMOR_TYPE_LEATHER,
	[CLASS_MONK] = t.ARMOR_TYPE_LEATHER,
	[CLASS_DEAMONHUNTER] = t.ARMOR_TYPE_LEATHER,
	[CLASS_HUNTER] = t.ARMOR_TYPE_MAIL,
	[CLASS_SHAMAN] = t.ARMOR_TYPE_MAIL,
};

local REDEEM_TBC_SUNMOTE = 0;
local REDEEM_TOC = 1;
local REDEEM_TBC_TIER_6 = 2;
local REDEEM_TBC_HYAL = 3;
local REDEEM_MOP_OXHEART = 6;
local REDEEM_TIER_11 = 7;
local REDEEM_TIER_12 = 8;
local REDEEM_TIER_13 = 9;
local REDEEM_TIER_15 = 5;
local REDEEM_TIER_16_LFR = 10;
local REDEEM_TIER_16_NORMAL = 11;
local REDEEM_TIER_16_HEROIC = 12;
local REDEEM_TIER_16_MYTHIC = 13;
local REDEEM_TIER_10 = 14;
local REDEEM_TIER_7 = 15;
local REDEEM_TIER_8 = 16;
local REDEEM_TIER_4 = 17;
local REDEEM_TIER_5 = 18;
local REDEEM_FIRELANDS_BOE = 4;

t.REDEEM_LOOKUP = {
	[REDEEM_TBC_SUNMOTE] = "Redeem: Yrma @ Isle of Quel'Danas\nLocated on Sun's Reach Harbour [Boat] (50.2, 28.6)",
	[REDEEM_TBC_TIER_6] = "Redeem: Soryn @ Isle of Quel'Danas\nLocated in Sun's Reach Armory (49.0, 39.0)\n\nRedeem: Kayri @ Isle of Quel'Danas\nLocated in Sun's Reach Armor (49.0, 39.0)\n\nRedeem: Theremis @ Isle of Quel'Danas\nLocated on Sun's Reach Harbour [Boat] (50.2, 28.6)\n\n|cFFF58CBANote: Items can be purchased despite class requirement.|r",
	[REDEEM_TBC_HYAL] = "Redeem: Tydormu @ Hyjal Summit\nLocated just inside the entrance of the raid.\n\nRedeem: Soryn @ Isle of Quel'Danas\nLocated in Sun's Reach Armory (49.0, 39.0)\n\nRedeem: Kayri @ Isle of Quel'Danas\nLocated in Sun's Reach Armor (49.0, 39.0)",
	[REDEEM_FIRELANDS_BOE] = "Redeem: Lurah Wrathvine @ Firelands\nLocated just inside the entrance of the raid.",

	[REDEEM_TIER_15] = "Redeem: Ao Pye @ Townlong Steppes\nLocated in Niuzao Temple (37.8, 64.6)", -- Throne of Thunder T15,
	[REDEEM_MOP_OXHEART] = "Redeem: Commander Oxheart @ Townlong Steppes\nLocated in Niuzao Temple (37.8, 64.6)", -- Tier 14 (HoF/ToES)
	[REDEEM_TIER_4] = "Redeem: Arodis Sunblade @ Shattrath [Scryers]\nLocated in Seer's Library (42.6, 90.6)\n\nRedeem: Asuur @ Shattrath [Aldor]\nLocated in Shrine of Unending Light (23.6, 32.6)\n\nRedeem: Karynna @ Isle of Quel'Danas\nLocated in Sun's Reach Armory (49.0, 39.0)", -- Tier 4
	[REDEEM_TIER_5] = "Redeem: Veynna Dawnstar @ Shattrath [Scryers]\nLocated in Seer's Library (44.8, 91.6)\n\nRedeem: Kelara @ Shattrath [Aldor]\nLocated in Shrine of Unending Light (24.6, 27.8)\n\nRedeem: Olus @ Isle of Quel'Danas\nLocated in Sun's Reach Armory (49.0, 39.0)", -- Tier 5
};

t.ALLIANCE_REDEEM_LOOKUP = {
	[REDEEM_TOC] = "Redeem: Valiant Laradia @ Icecrown\nLocated at Argent Tournament (75.4, 21.6)", -- ToC Trophy Vendor T9 (Alliance)

	[REDEEM_TIER_11] = "Redeem: Toren Landow @ Stormwind\nLocated in the Command Center (79.0, 70.0)", -- T11 (Alliance)
	[REDEEM_TIER_12] = "Redeem: Magatha Silverton @ Stormwind\nLocated in the Command Center (79.0, 69.6)", -- Firelands T12 (Alliance)
	[REDEEM_TIER_13] = "Redeem: Faldren Tillsdale @ Stormwind\nLocated in the Command Center (79.0, 69.6)", -- Dragon Soul T13 (Alliance)

	[REDEEM_TIER_16_LFR] = "Redeem: Welbiz Cheerwhistle @ Pandaria\nLocated in Shrine of Seven Stars (41.6, 42.6)", -- Siege of Orgrimmar T16 [Raid Finder] (Alliance)
	[REDEEM_TIER_16_NORMAL] = "Redeem: Thelett Shaleheart @ Pandaria\nLocated in Shrine of Seven Stars (41.6, 42.6)", -- Siege of Orgrimmar T16 [Normal] (Alliance)
	[REDEEM_TIER_16_HEROIC] = "Redeem: Clarice Chapmann @ Pandaria\nLocated in Shrine of Seven Stars (41.6, 42.6)", -- Siege of Orgrimmar T16 [Heroic] (Alliance)
	[REDEEM_TIER_16_MYTHIC] = "Redeem: Lorry Warmheart @ Pandaria\nLocated in Shrine of Seven Stars (41.6, 42.6)", -- Siege of Orgrimmar T16 [Mythic] (Alliance)
};

t.HORDE_REDEEM_LOOKUP = {
	[REDEEM_TOC] = "Redeem: Valiant Bressia @ Icecrown\nLocated at Argent Tournament (75.4, 21.6)", -- ToC Trophy Vendor T9 (Horde)

	[REDEEM_TIER_11] = "Redeem: Rugok @ Orgrimmar\nLocated in Grommash Hold (48.2, 71.6)", -- T11 (Horde)
	[REDEEM_TIER_12] = "Redeem: Gunra @ Orgrimmar\nLocated in Grommash Hold (48.4, 71.6)", -- Firelands T12 (Horde)
	[REDEEM_TIER_13] = "Redeem: Jamus'Vaz @ Orgrimmar\nLocated in Grommash Hold (48.6, 71.4)", -- Dragon Soul T13 (Horde)

	[REDEEM_TIER_16_LFR] = "Redeem: Blizzix Sparkshiv @ Pandaria\nLocated in Shrine of Two Moons (43.6, 74.8)", -- Siege of Orgrimmar T16 [Raid Finder] (Horde)
	[REDEEM_TIER_16_NORMAL] = "Redeem: Nadina Stargem @ Pandaria\nLocated in Shrine of Two Moons (43.6, 74.8)", -- Siege of Orgrimmar T16 [Normal] (Horde)
	[REDEEM_TIER_16_HEROIC] = "Redeem: Ki'agnuu @ Pandaria\nLocated in Shrine of Two Moons (43.6, 74.8)", -- Siege of Orgrimmar T16 [Heroic] (Horde)
	[REDEEM_TIER_16_MYTHIC] = "Redeem: Tu'aho Pathcutter @ Pandaria\nLocated in Shrine of Two Moons (43.6, 74.8)", -- Siege of Orgrimmar T16 [Mythic] (Horde)
};

t.CLASS_REDEEM_LOOKUP = {
	[CLASS_WARRIOR] = {
		[REDEEM_TIER_10] = "Redeem: Horace Hunderland @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Icecrown Citadel T10 (Warriors)
		[REDEEM_TIER_7] = "Redeem: Griselda Hunderland @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Naxxramas T7 (Warriors)
		[REDEEM_TIER_8] = "Redeem: Dubin Clay @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Ulduar T8 (Warriors)
	},

	[CLASS_PALADIN] = {
		[REDEEM_TIER_10] = "Redeem: Horace Hunderland @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Icecrown Citadel T10 (Paladins)
		[REDEEM_TIER_7] = "Redeem: Griselda Hunderland @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Naxxramas T7 (Paladins)
		[REDEEM_TIER_8] = "Redeem: Dubin Clay @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Ulduar T8 (Paladins)
	},

	[CLASS_DEATHKNIGHT] = {
		[REDEEM_TIER_10] = "Redeem: Horace Hunderland @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Icecrown Citadel T10 (Death Knights)
		[REDEEM_TIER_7] = "Redeem: Griselda Hunderland @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Naxxramas T7 (Death Knights)
		[REDEEM_TIER_8] = "Redeem: Dubin Clay @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Ulduar T8 (Death Knights)
	},

	[CLASS_MAGE] = {
		[REDEEM_TIER_10] = "Redeem: Rueben Lauren @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Icecrown Citadel T10 (Mages)
		[REDEEM_TIER_7] = "Redeem: Paldesse @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Naxxramas T7 (Mages)
		[REDEEM_TIER_8] = "Redeem: Paldesse @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Ulduar T8 (Mages)
	},

	[CLASS_WARLOCK] = {
		[REDEEM_TIER_10] = "Redeem: Rueben Lauren @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Icecrown Citadel T10 (Warlocks)
		[REDEEM_TIER_7] = "Redeem: Paldesse @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Naxxramas T7 (Warlocks)
		[REDEEM_TIER_8] = "Redeem: Paldesse @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Ulduar T8 (Warlocks)
	},

	[CLASS_PRIEST] = {
		[REDEEM_TIER_10] = "Redeem: Rueben Lauren @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Icecrown Citadel T10 (Priests)
		[REDEEM_TIER_7] = "Redeem: Paldesse @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Naxxramas T7 (Priests)
		[REDEEM_TIER_8] = "Redeem: Paldesse @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Ulduar T8 (Priests)
	},

	[CLASS_DRUID] = {
		[REDEEM_TIER_10] = "Redeem: Rafael Langrom @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Icecrown Citadel T10 (Druids)
		[REDEEM_TIER_7] = "Redeem: Valerie Langrom @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Naxxramas T7 (Druids)
		[REDEEM_TIER_8] = "Redeem: Valerie Langrom @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Ulduar T8 (Druids)
	},

	[CLASS_ROGUE] = {
		[REDEEM_TIER_10] = "Redeem: Rafael Langrom @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Icecrown Citadel T10 (Rogues)
		[REDEEM_TIER_7] = "Redeem: Valerie Langrom @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Naxxramas T7 (Rogues)
		[REDEEM_TIER_8] = "Redeem: Valerie Langrom @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Ulduar T8 (Rogues)
	},

	[CLASS_HUNTER] = {
		[REDEEM_TIER_10] = "Redeem: Matilda Brightlink @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Icecrown Citadel T10 (Hunters)
		[REDEEM_TIER_7] = "Redeem: Bragund Brightlink @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Naxramas T7 (Hunters)
		[REDEEM_TIER_8] = "Redeem: Bragund Brightlink @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Ulduar T8 (Hunters)
	},

	[CLASS_SHAMAN] = {
		[REDEEM_TIER_10] = "Redeem: Matilda Brightlink @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Icecrown Citadel T10 (Shamans)
		[REDEEM_TIER_7] = "Redeem: Bragund Brightlink @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Naxramas T7 (Shamans)
		[REDEEM_TIER_8] = "Redeem: Bragund Brightlink @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Ulduar T8 (Shamans)
	}
};

t.SET_INDEX = {
	"Tier 4 (TBC)", -- 1
	"Tier 5 (TBC)", -- 2
	"Tier 6 (TBC)", -- 3
	"Tier 7 (WotLK)", -- 4
	--"Tier 8 (WotLK)", -- 5
	--"Tier 9 (WotLK)", -- 6
	--"Tier 10 (WotLK)", -- 7
};

local SET_TIER_4 = 1;
local SET_TIER_5 = 2;
local SET_TIER_6 = 3;
local SET_TIER_7 = 4;
local SET_TIER_8 = 5;
local SET_TIER_9 = 6;
local SET_TIER_10 = 7;

local NO_USE = "This token cannot be redeemed for anything.";

local BALEFUL_WEP_STAFF = 124630;
local BALEFUL_WEP_2H_SWORD = 124625;
local BALEFUL_WEP_1H_SWORD = 124624;
local BALEFUL_WEP_GUN = 124626;
local BALEFUL_WEP_1H_AXE = 124628;
local BALEFUL_WEP_DAGGER = 124627;
local BALEFUL_WEP_POLEARM = 124629;
local BALEFUL_WEP_1H_MACE = 124631;

t.ITEM_DATA = {
	[71682] = { ["NOTE"] = NO_USE, [CLASS_WARRIOR] = {}, [CLASS_HUNTER] = {}, [CLASS_SHAMAN] = {}, }, -- Helm of the Fiery Protector
	[71688] = { ["NOTE"] = NO_USE, [CLASS_WARRIOR] = {}, [CLASS_HUNTER] = {}, [CLASS_SHAMAN] = {}, }, -- Mantle of the Fiery Protector
	[63684] = { ["NOTE"] = NO_USE, [CLASS_WARRIOR] = {}, [CLASS_HUNTER] = {}, [CLASS_SHAMAN] = {}, }, -- Helm of the Forlorn Protector
	[64316] = { ["NOTE"] = NO_USE, [CLASS_WARRIOR] = {}, [CLASS_HUNTER] = {}, [CLASS_SHAMAN] = {}, }, -- Mantle of the Forlorn Protector
	[71675] = { ["NOTE"] = NO_USE, [CLASS_PALADIN] = {}, [CLASS_PRIEST] = {}, [CLASS_WARLOCK] = {}, }, -- Helm of the Fiery Conqueror
	[71681] = { ["NOTE"] = NO_USE, [CLASS_PALADIN] = {}, [CLASS_PRIEST] = {}, [CLASS_WARLOCK] = {}, }, -- Mantle of the Fiery Conqueror
	[71668] = { ["NOTE"] = NO_USE, [CLASS_ROGUE] = {}, [CLASS_DEATHKNIGHT] = {}, [CLASS_MAGE] = {}, [CLASS_DRUID] = {}, }, -- Helm of the Fiery Vanquisher
	[71674] = { ["NOTE"] = NO_USE, [CLASS_ROGUE] = {}, [CLASS_DEATHKNIGHT] = {}, [CLASS_MAGE] = {}, [CLASS_DRUID] = {}, }, -- Mantle of the Fiery Vanquisher

	[34664] = { -- Sunmote
		["REDEEM"] = REDEEM_TBC_SUNMOTE,
		[t.ARMOR_TYPE_PLATE] = {34388, 34389, 34394, 34395, 34382, 34400, 34401, 34381},
		[t.ARMOR_TYPE_CLOTH] = {34399, 34393, 34386, 34406, 34405},
		[t.ARMOR_TYPE_LEATHER] = {34384, 34385, 34391, 34392, 34397, 34398, 34403, 34404, 34408, 34407},
		[t.ARMOR_TYPE_MAIL] = {34396, 34390, 34402, 34383, 34409},
	},

	[66998] = { -- Essence of the Forlorn
		["REDEEM"] = REDEEM_TIER_11,
		["LINK"] = {67428, 65088, 67423, 67424, 67425, 67426, 67427, 65089, 67429, 67430, 67431, 65000, 65001, 65002, 65087},
	},

	[71617] = { -- Crystallized Firestone
		["REDEEM"] = REDEEM_FIRELANDS_BOE,
		[CLASS_WARRIOR] = {71562, 71557, 71559, 71560, 71558},
		[CLASS_PALADIN] = {71562, 71557},
		[CLASS_HUNTER] = {71562, 71557, 71559, 71560, 71558, 71561},
		[CLASS_ROGUE] = {71562, 71560, 71558, 71641},
		[CLASS_PRIEST] = {71559, 71560, 71579, 71575},
		[CLASS_DEATHKNIGHT] = {71562, 71557},
		[CLASS_SHAMAN] = {71562, 71559, 71560, 71561},
		[CLASS_MAGE] = {71559, 71560, 71579, 71575},
		[CLASS_WARLOCK] = {71559, 71560, 71579, 71575},
		[CLASS_MONK] = {71562, 71557, 71559, 71641},
		[CLASS_DRUID] = {71557, 71559, 71560, 71579, 71575, 71641},
		[CLASS_DEAMONHUNTER] = {71562, 71560, 71641},
	},

	[29753] = { -- Chestguard of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "Magtheridon (Magtheridon's Lair)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_WARRIOR] = {24544, 29019, 29012},
		[CLASS_PRIEST] = {31413, 27711, 29050, 29056},
		[CLASS_DRUID] = {28130, 28140, 31379, 29096, 29087, 29091},
	},

	[29754] = { -- Chestguard of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "Magtheridon (Magtheridon's Lair)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_PALADIN] = {31613, 27702, 27879, 29071, 29062, 29066},
		[CLASS_ROGUE] = {25831, 29045},
		[CLASS_SHAMAN] = {25997, 27469, 31396, 29033, 29038, 29029},
	},

	[29755] = { -- Chestguard of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "Magtheridon (Magtheridon's Lair)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_HUNTER] = {28334, 29082},
		[CLASS_MAGE] = {25856, 29077},
		[CLASS_WARLOCK] = {24552, 30200, 28964},
	},

	[29756] = { -- Gloves of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "The Curator (Karazhan)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_HUNTER] = {28335, 29085},
		[CLASS_MAGE] = {25857, 29080},
		[CLASS_WARLOCK] = {24556, 30188, 28968},
	},

	[29757] = { -- Gloves of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "The Curator (Karazhan)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_PALADIN] = {27703, 27880, 31614, 29072, 29065, 29067},
		[CLASS_ROGUE] = {25834, 29048},
		[CLASS_SHAMAN] = {31397, 26000, 27470, 29034, 29039, 29032},
	},

	[29758] = { -- Gloves of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "The Curator (Karazhan)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_WARRIOR] = {24549, 29020, 29017},
		[CLASS_PRIEST] = {27707, 31409, 29055, 29057},
		[CLASS_DRUID] = {31375, 28126, 28136, 29097, 29090, 29092},
	},

	[29759] = { -- Helm of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "Prince Malchezaar (Karazhan)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_HUNTER] = {28331, 29081},
		[CLASS_MAGE] = {25855, 29076},
		[CLASS_WARLOCK] = {24553, 30187, 28963},
	},

	[29760] = { -- Helm of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "Prince Malchezaar (Karazhan)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_PALADIN] = {27704, 27881, 31616, 29073, 29061, 29068},
		[CLASS_ROGUE] = {25830, 29044},
		[CLASS_SHAMAN] = {27471, 31400, 25998, 29035, 29040, 29028},
	},

	[29761] = { -- Helm of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "Prince Malchezaar (Karazhan)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_WARRIOR] = {24545, 29021, 29011},
		[CLASS_PRIEST] = {27708, 31410, 29049, 29058},
		[CLASS_DRUID] = {28137, 31376, 28127, 29098, 29086, 29093},
	},

	[29762] = { -- Pauldrons of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "High King Maulgar (Gruul's Lair)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_HUNTER] = {28333, 29084},
		[CLASS_MAGE] = {25854, 29079},
		[CLASS_WARLOCK] = {24554, 30186, 28967},
	},

	[29763] = { -- Pauldrons of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "High King Maulgar (Gruul's Lair)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_PALADIN] = {31619, 27706, 27883, 29075, 29064, 29070},
		[CLASS_ROGUE] = {25832, 29047},
		[CLASS_SHAMAN] = {25999, 27473, 31407, 29037, 29043, 29031},
	},

	[29764] = { -- Pauldrons of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "High King Maulgar (Gruul's Lair)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_WARRIOR] = {24546, 29023, 29016},
		[CLASS_PRIEST] = {31412, 27710, 29054, 29060},
		[CLASS_DRUID] = {28129, 28139, 31378, 29100, 29089, 29095},
	},

	[29765] = { -- Leggings of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "Gruul (Gruul's Lair)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_HUNTER] = {28332, 29083},
		[CLASS_MAGE] = {25858, 29078},
		[CLASS_WARLOCK] = {30201, 24555, 28966},
	},

	[29766] = { -- Leggings of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "Gruul (Gruul's Lair)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_PALADIN] = {31618, 27705, 27882, 29074, 29063, 29069},
		[CLASS_ROGUE] = {25833, 29046},
		[CLASS_SHAMAN] = {26001, 27472, 31406, 29036, 29042, 29030},
	},

	[29767] = { -- Leggings of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "Gruul (Gruul's Lair)"},
		["REDEEM"] = REDEEM_TIER_4,
		[CLASS_WARRIOR] = {24547, 29022, 29015},
		[CLASS_PRIEST] = {31411, 27709, 29053, 29059},
		[CLASS_DRUID] = {28128, 28138, 31377, 29099, 29088, 29094},
	},

	[30236] = { -- Chestguard of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Kael'thas Sunstrider (The Eye)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_PALADIN] = {32020, 32039, 31992, 30129, 30134, 30123},
		[CLASS_ROGUE] = {32002, 30144},
		[CLASS_SHAMAN] = {32009, 32029, 32004, 30185, 30164, 30169},
	},

	[30237] = { -- Chestguard of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Kael'thas Sunstrider (The Eye)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_WARRIOR] = {30486, 30118, 30113},
		[CLASS_PRIEST] = {32019, 32038, 30150, 30159},
		[CLASS_DRUID] = {31991, 32060, 31972, 30231, 30216, 30222},
	},

	[30238] = { -- Chestguard of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Kael'thas Sunstrider (The Eye)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_HUNTER] = {31960, 30139},
		[CLASS_MAGE] = {32050, 30196},
		[CLASS_WARLOCK] = {31977, 31982, 30214},
	},

	[30239] = { -- Gloves of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Leothersas the Blind (Serpentshrine Cavern)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_PALADIN] = {31993, 32021, 32040, 30130, 30135, 30124},
		[CLASS_ROGUE] = {31998, 30145},
		[CLASS_SHAMAN] = {32005, 32010, 32030, 30189, 30165, 30170},
	},

	[30240] = { -- Gloves of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Leothersas the Blind (Serpentshrine Cavern)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_WARRIOR] = {30487, 30119, 30114},
		[CLASS_PRIEST] = {32015, 32034, 30151, 30160},
		[CLASS_DRUID] = {31987, 32056, 31967, 30232, 30217, 30223},
	},

	[30241] = { -- Gloves of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Leothersas the Blind (Serpentshrine Cavern)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_HUNTER] = {31961, 30140},
		[CLASS_MAGE] = {32049, 30205},
		[CLASS_WARLOCK] = {31973, 31981, 30211},
	},

	[30242] = { -- Helm of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Lady Vashj (Serpentshrine Cavern)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_PALADIN] = {31997, 32022, 32041, 30131, 30136, 30125},
		[CLASS_ROGUE] = {31999, 30146},
		[CLASS_SHAMAN] = {32006, 32011, 32031, 30190, 30166, 30171},
	},

	[30243] = { -- Helm of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Lady Vashj (Serpentshrine Cavern)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_WARRIOR] = {30488, 30120, 30115},
		[CLASS_PRIEST] = {32016, 32035, 30152, 30161},
		[CLASS_DRUID] = {32057, 31968, 31988, 30233, 30219, 30228},
	},

	[30244] = { -- Helm of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Lady Vashj (Serpentshrine Cavern)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_HUNTER] = {31962, 30141},
		[CLASS_MAGE] = {32048, 30206},
		[CLASS_WARLOCK] = {31974, 31980, 30212},
	},

	[30245] = { -- Leggings of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Fathom-Lord Karathress (Serpentshrine Cavern)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_PALADIN] = {31995, 32023, 32042, 30132, 30137, 30126},
		[CLASS_ROGUE] = {32000, 30148},
		[CLASS_SHAMAN] = {32032, 32007, 32012, 30192, 30167, 30172},
	},

	[30246] = { -- Leggings of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Fathom-Lord Karathress (Serpentshrine Cavern)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_WARRIOR] = {30489, 30121, 30116},
		[CLASS_PRIEST] = {32017, 32036, 30153, 30162},
		[CLASS_DRUID] = {31989, 32058, 31969, 30234, 30220, 30229},
	},

	[30247] = { -- Leggings of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Fathom-Lord Karathress (Serpentshrine Cavern)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_HUNTER] = {31963, 30142},
		[CLASS_MAGE] = {32051, 30207},
		[CLASS_WARLOCK] = {31975, 31983, 30213},
	},

	[30248] = { -- Pauldrons of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Void Reaver (The Eye)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_PALADIN] = {31996, 32024, 32043, 30133, 30138, 30127},
		[CLASS_ROGUE] = {32001, 30149},
		[CLASS_SHAMAN] = {32008, 32013, 32033, 30194, 30168, 30173},
	},

	[30249] = { -- Pauldrons of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Void Reaver (The Eye)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_WARRIOR] = {30490, 30117, 30122},
		[CLASS_PRIEST] = {32018, 32037, 30154, 30163},
		[CLASS_DRUID] = {31990, 32059, 31971, 30221, 30230, 30235},
	},

	[30250] = { -- Pauldrons of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Void Reaver (The Eye)"},
		["REDEEM"] = REDEEM_TIER_5,
		[CLASS_HUNTER] = {31964, 30143},
		[CLASS_MAGE] = {32047, 30210},
		[CLASS_WARLOCK] = {31976, 31979, 30215},
	},

	[31089] = { -- Chestguard of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Illidan Stormrage (Black Temple)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_PALADIN] = {30990, 30992, 30991, 32039, 31992, 32020},
		[CLASS_PRIEST] = {31065, 31066, 32019, 32038},
		[CLASS_WARLOCK] = {31052, 31982, 31977},
	},

	[31090] = { -- Chestguard of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Illidan Stormrage (Black Temple)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_ROGUE] = {31028, 32002},
		[CLASS_MAGE] = {31057, 32050},
		[CLASS_DRUID] = {31041, 31042, 31043, 31972, 31991, 32060},
	},

	[31091] = { -- Chestguard of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Illidan Stormrage (Black Temple)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_WARRIOR] = {30975, 30976, 30486},
		[CLASS_HUNTER] = {31004, 31960},
		[CLASS_SHAMAN] = {31018, 31016, 31017, 32004, 32009, 32029},
	},

	[31092] = { -- Gloves of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Azgalor (Hyjal Summit)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_PALADIN] = {30982, 30985, 30983, 32021, 32040, 31993},
		[CLASS_PRIEST] = {31060, 31061, 32015, 32034},
		[CLASS_WARLOCK] = {31050, 31981, 31973},
	},

	[31093] = { -- Gloves of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Azgalor (Hyjal Summit)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_ROGUE] = {31026, 31998},
		[CLASS_MAGE] = {31055, 32049},
		[CLASS_DRUID] = {31032, 31034, 31035, 31967, 31987, 32056},
	},

	[31094] = { -- Gloves of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Azgalor (Hyjal Summit)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_WARRIOR] = {30969, 30970, 30487},
		[CLASS_HUNTER] = {31001, 31961},
		[CLASS_SHAMAN] = {31011, 31007, 31008, 32010, 32030, 32005},
	},

	[31095] = { -- Helm of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Archimonde (Hyjal Summit)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_WARRIOR] = {30972, 30974, 30488},
		[CLASS_HUNTER] = {31003, 31962},
		[CLASS_SHAMAN] = {31015, 31012, 31014, 32006, 32011, 32031},
	},

	[31096] = { -- Helm of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Archimonde (Hyjal Summit)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_ROGUE] = {31027, 31999},
		[CLASS_MAGE] = {31056, 32048},
		[CLASS_DRUID] = {31037, 31039, 31040, 31968, 31988, 32057},
	},

	[31097] = { -- Helm of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Archimonde (Hyjal Summit)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_PALADIN] = {30987, 30989, 30988, 32041, 31997, 32022},
		[CLASS_PRIEST] = {31063, 31064, 32016, 32035},
		[CLASS_WARLOCK] = {31051, 31980, 31974},
	},

	[31098] = { -- Leggings of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "The Illidari Council (Black Temple)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_PALADIN] = {30993, 30995, 30994, 32042, 31995, 32023},
		[CLASS_PRIEST] = {31067, 31068, 32017, 32036},
		[CLASS_WARLOCK] = {31053, 31983, 31975},
	},

	[31099] = { -- Leggings of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "The Illidari Council (Black Temple)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_ROGUE] = {31029, 32000},
		[CLASS_MAGE] = {31058, 32051},
		[CLASS_DRUID] = {31044, 31045, 31046, 31969, 31989, 32058},
	},

	[31100] = { -- Leggings of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "The Illidari Council (Black Temple)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_WARRIOR] = {30977, 30978, 30489},
		[CLASS_HUNTER] = {31005, 31963},
		[CLASS_SHAMAN] = {31019, 31020, 31021, 32007, 32012, 32032},
	},

	[31101] = { -- Pauldrons of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Mother Shahraz (Black Temple)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_PALADIN] = {30996, 30998, 30997, 32043, 31996, 32024},
		[CLASS_PRIEST] = {31069, 31070, 32018, 32037},
		[CLASS_WARLOCK] = {31054, 31979, 31976},
	},

	[31102] = { -- Pauldrons of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Mother Shahraz (Black Temple)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_ROGUE] = {31030, 32001},
		[CLASS_MAGE] = {31059, 32047},
		[CLASS_DRUID] = {31047, 31048, 31049, 32059, 31971, 31990},
	},

	[31103] = { -- Pauldrons of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Mother Shahraz (Black Temple)"},
		["REDEEM"] = REDEEM_TBC_HYAL,
		[CLASS_WARRIOR] = {30979, 30980, 30490},
		[CLASS_HUNTER] = {31006, 31964},
		[CLASS_SHAMAN] = {31024, 31022, 31023, 32008, 32013, 32033},
	},

	[34848] = { -- Bracers of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		["REDEEM"] = REDEEM_TBC_TIER_6,
		[CLASS_WARRIOR] = {33910, 33889, 33904},
		[CLASS_PALADIN] = {34431, 34433, 34432, 33910, 33889, 33904},
		[CLASS_PRIEST] = {34434, 34435, 33883, 33901},
		[CLASS_MAGE] = {33883, 33901},
		[CLASS_WARLOCK] = {34436, 33883, 33901},
	},

	[34851] = { -- Bracers of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		["REDEEM"] = REDEEM_TBC_TIER_6,
		[CLASS_WARRIOR] = {34441, 34442, 33813},
		[CLASS_PALADIN] = {33813},
		[CLASS_HUNTER] = {34443, 33876, 33894, 33897, 33906},
		[CLASS_SHAMAN] = {34437, 34439, 34438, 33876, 33894, 33897, 33906},
	},

	[34852] = { -- Bracers of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		["REDEEM"] = REDEEM_TBC_TIER_6,
		[CLASS_ROGUE] = {34448, 33917, 33881, 33887, 33893},
		[CLASS_PRIEST] = {33913},
		[CLASS_MAGE] = {34447, 33913},
		[CLASS_WARLOCK] = {33913},
		[CLASS_MONK] = {33917, 33881, 33887, 33893},
		[CLASS_DRUID] = {34444, 34445, 34446, 33917, 33881, 33887, 33893},
	},

	[34853] = { -- Belt of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		["REDEEM"] = REDEEM_TBC_TIER_6,
		[CLASS_WARRIOR] = {33888, 33903, 33909},
		[CLASS_PALADIN] = {34485, 34488, 34487, 33888, 33903, 33909},
		[CLASS_PRIEST] = {34527, 34528, 33882, 33900},
		[CLASS_MAGE] = {33882, 33900},
		[CLASS_WARLOCK] = {34541, 33882, 33900},
	},

	[34854] = { -- Belt of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		["REDEEM"] = REDEEM_TBC_TIER_6,
		[CLASS_WARRIOR] = {34547, 34546, 33811},
		[CLASS_PALADIN] = {33811},
		[CLASS_HUNTER] = {34549, 33877, 33895, 33898, 33907},
		[CLASS_SHAMAN] = {34543, 34545, 34542, 33877, 33895, 33898, 33907},
	},

	[34855] = { -- Belt of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		["REDEEM"] = REDEEM_TBC_TIER_6,
		[CLASS_ROGUE] = {34558, 33879, 33885, 33891, 33915},
		[CLASS_PRIEST] = {33912},
		[CLASS_MAGE] = {34557, 33912},
		[CLASS_WARLOCK] = {33912},
		[CLASS_MONK] = {33879, 33885, 33891, 33915},
		[CLASS_DRUID] = {34554, 34555, 34556, 33879, 33885, 33891, 33915},
	},

	[34856] = { -- Boots of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		["REDEEM"] = REDEEM_TBC_TIER_6,
		[CLASS_WARRIOR] = {33890, 33905, 33911},
		[CLASS_PALADIN] = {34559, 34561, 34560, 33890, 33905, 33911},
		[CLASS_PRIEST] = {34562, 34563, 33884, 33902},
		[CLASS_MAGE] = {33884, 33902},
		[CLASS_WARLOCK] = {34564, 33884, 33902},
	},

	[34857] = { -- Boots of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		["REDEEM"] = REDEEM_TBC_TIER_6,
		[CLASS_WARRIOR] = {34568, 34569, 33812},
		[CLASS_PALADIN] = {33812},
		[CLASS_HUNTER] = {34570, 33878, 33896, 33899, 33908},
		[CLASS_SHAMAN] = {34565, 34567, 34566, 33878, 33896, 33899, 33908},
	},

	[34858] = { -- Boots of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		["REDEEM"] = REDEEM_TBC_TIER_6,
		[CLASS_ROGUE] = {34575, 33880, 33886, 33892, 33916},
		[CLASS_PRIEST] = {33914},
		[CLASS_MAGE] = {34574, 33914},
		[CLASS_WARLOCK] = {33914},
		[CLASS_MONK] = {33880, 33886, 33892, 33916},
		[CLASS_DRUID] = {34571, 34572, 34573, 33880, 33886, 33892, 33916},
	},

	[40610] = { -- Chestguard of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "The Four Horsemen (Naxxramas [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_PALADIN] = {39629, 39633, 39638},
		[CLASS_PRIEST] = {39515, 39523},
		[CLASS_WARLOCK] = {39497},
	},

	[40611] = { -- Chestguard of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Gluth (Naxxramas [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_WARRIOR] = {39606, 39611},
		[CLASS_HUNTER] = {39579},
		[CLASS_SHAMAN] = {39597, 39588, 39592},
	},

	[40612] = { -- Chestguard of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Gluth (Naxxramas [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_ROGUE] = {39558},
		[CLASS_DEATHKNIGHT] = {39617, 39623},
		[CLASS_MAGE] = {39492},
		[CLASS_DRUID] = {39538, 39547, 39554},
	},

	[40613] = { -- Gloves of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_PALADIN] = {39632, 39634, 39639},
		[CLASS_PRIEST] = {39519, 39530},
		[CLASS_WARLOCK] = {39500},
	},

	[40614] = { -- Gloves of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_WARRIOR] = {39609, 39622},
		[CLASS_HUNTER] = {39582},
		[CLASS_SHAMAN] = {39591, 39593, 39601},
	},

	[40615] = { -- Gloves of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_ROGUE] = {39560},
		[CLASS_DEATHKNIGHT] = {39618, 39624},
		[CLASS_MAGE] = {39495},
		[CLASS_DRUID] = {39543, 39544, 39557},
	},

	[40616] = { -- Helm of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_PALADIN] = {39628, 39635, 39640},
		[CLASS_PRIEST] = {39514, 39521},
		[CLASS_WARLOCK] = {39496},
	},

	[40617] = { -- Helm of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_WARRIOR] = {39605, 39610},
		[CLASS_HUNTER] = {39578},
		[CLASS_SHAMAN] = {39583, 39594, 39602},
	},

	[40618] = { -- Helm of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_ROGUE] = {39561},
		[CLASS_DEATHKNIGHT] = {39619, 39625},
		[CLASS_MAGE] = {39491},
		[CLASS_DRUID] = {39531, 39545, 39553},
	},

	[40619] = { -- Leggings of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_PALADIN] = {39630, 39636, 39641},
		[CLASS_PRIEST] = {39517, 39528},
		[CLASS_WARLOCK] = {39498},
	},

	[40620] = { -- Leggings of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_WARRIOR] = {39607, 39612},
		[CLASS_HUNTER] = {39580},
		[CLASS_SHAMAN] = {39589, 39595, 39603},
	},

	[40621] = { -- Leggings of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_ROGUE] = {39564},
		[CLASS_DEATHKNIGHT] = {39620, 39626},
		[CLASS_MAGE] = {39493},
		[CLASS_DRUID] = {39539, 39546, 39555},
	},

	[40622] = { -- Spaulders of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_PALADIN] = {39631, 39637, 39642},
		[CLASS_PRIEST] = {39518, 39529},
		[CLASS_WARLOCK] = {39499},
	},

	[40623] = { -- Spaulders of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_WARRIOR] = {39608, 39613},
		[CLASS_HUNTER] = {39581},
		[CLASS_SHAMAN] = {39590, 39596, 39604},
	},

	[40624] = { -- Spaulders of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [10-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_ROGUE] = {39565},
		[CLASS_DEATHKNIGHT] = {39621, 39627},
		[CLASS_MAGE] = {39494},
		[CLASS_DRUID] = {39542, 39548, 39556},
	},

	[40625] = {	-- Breastplate of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Four Horsemen (Naxxramas [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_WARLOCK] = {40423},
		[CLASS_PRIEST] = {40449, 40458},
		[CLASS_PALADIN] = {40569, 40574, 40579},
	},

	[40626] = { -- Breastplate of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Four Horsemen (Naxxramas [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_WARRIOR] = {40525, 40544},
		[CLASS_HUNTER] = {40503},
		[CLASS_SHAMAN] = {40514, 40523, 40508},
	},

	[40627] = { -- Breastplate of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Four Horsemen (Naxxramas [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_ROGUE] = {40495},
		[CLASS_DEATHKNIGHT] = {40550, 40559},
		[CLASS_MAGE] = {40418},
		[CLASS_DRUID] = {40463, 40469, 40471},
	},

	[40628] = { -- Gauntlets of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_PALADIN] = {40570, 40575, 40580},
		[CLASS_PRIEST] = {40445, 40454},
		[CLASS_WARLOCK] = {40420},
	},

	[40629] = { -- Gauntlets of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_WARRIOR] = {40527, 40545},
		[CLASS_HUNTER] = {40504},
		[CLASS_SHAMAN] = {40509, 40515, 40520},
	},

	[40630] = { -- Gauntlets of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_ROGUE] = {40496},
		[CLASS_DEATHKNIGHT] = {40552, 40563},
		[CLASS_MAGE] = {40415},
		[CLASS_DRUID] = {40460, 40466, 40472},
	},

	[40631] = { -- Crown of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_PALADIN] = {40571, 40576, 40581},
		[CLASS_PRIEST] = {40447, 40456},
		[CLASS_WARLOCK] = {40421},
	},

	[40632] = { -- Crown of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_WARRIOR] = {40528, 40546},
		[CLASS_HUNTER] = {40505},
		[CLASS_SHAMAN] = {40521, 40510, 40516},
	},

	[40633] = { -- Crown of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_ROGUE] = {40499},
		[CLASS_DEATHKNIGHT] = {40554, 40565},
		[CLASS_MAGE] = {40416},
		[CLASS_DRUID] = {40461, 40467, 40473},
	},

	[40634] = { -- Legplates of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_PALADIN] = {40572, 40577, 40583},
		[CLASS_PRIEST] = {40448, 40457},
		[CLASS_WARLOCK] = {40422},
	},

	[40635] = { -- Legplates of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_WARRIOR] = {40529, 40547},
		[CLASS_HUNTER] = {40506},
		[CLASS_SHAMAN] = {40512, 40517, 40522},
	},

	[40636] = { -- Legplates of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_ROGUE] = {40500},
		[CLASS_DEATHKNIGHT] = {40556, 40567},
		[CLASS_MAGE] = {40417},
		[CLASS_DRUID] = {40462, 40468, 40493},
	},

	[40637] = { -- Mantle of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_PALADIN] = {40573, 40578, 40584},
		[CLASS_PRIEST] = {40450, 40459},
		[CLASS_WARLOCK] = {40424},
	},

	[40638] = { -- Mantle of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_WARRIOR] = {40530, 40548},
		[CLASS_HUNTER] = {40507},
		[CLASS_SHAMAN] = {40513, 40518, 40524},
	},

	[40639] = { -- Mantle of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [25-Man])"},
		["REDEEM"] = REDEEM_TIER_7,
		[CLASS_ROGUE] = {40502},
		[CLASS_DEATHKNIGHT] = {40557, 40568},
		[CLASS_MAGE] = {40419},
		[CLASS_DRUID] = {40465, 40470, 40494},
	},

	[45632] = { -- Breastplate of the Wayward Conqueror
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_PALADIN] = {46154, 46173, 46178},
		[CLASS_PRIEST] = {46168, 46193},
		[CLASS_WARLOCK] = {46137},
	},

	[45633] = { -- Breastplate of the Wayward Protector
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_WARRIOR] = {46146, 46162},
		[CLASS_HUNTER] = {46141},
		[CLASS_SHAMAN] = {46198, 46205, 46206},
	},

	[45634] = { -- Breastplate of the Wayward Vanquisher
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_ROGUE] = {46123},
		[CLASS_DEATHKNIGHT] = {46111, 46118},
		[CLASS_MAGE] = {46130},
		[CLASS_DRUID] = {46159, 46186, 46194},
	},

	[45635] = { -- Chestguard of the Wayward Conqueror
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_PALADIN] = {45374, 45375, 45381},
		[CLASS_PRIEST] = {45389, 45395},
		[CLASS_WARLOCK] = {45421},
	},

	[45636] = { -- Chestguard of the Wayward Protector
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_WARRIOR] = {45424, 45429},
		[CLASS_HUNTER] = {45364},
		[CLASS_SHAMAN] = {45405, 45411, 45413},
	},

	[45637] = { -- Chestguard of the Wayward Vanquisher
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_ROGUE] = {45396},
		[CLASS_DEATHKNIGHT] = {45335, 45340},
		[CLASS_MAGE] = {45368},
		[CLASS_DRUID] = {45348, 45354, 45358},
	},

	[45638] = { -- Crown of the Wayward Conqueror
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_PALADIN] = {46156, 46175, 46180},
		[CLASS_PRIEST] = {46172, 46197},
		[CLASS_WARLOCK] = {46140},
	},

	[45639] = { -- Crown of the Wayward Protector
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_WARRIOR] = {46151, 46166},
		[CLASS_HUNTER] = {46143},
		[CLASS_SHAMAN] = {46201, 46209, 46212},
	},

	[45640] = { -- Crown of the Wayward Vanquisher
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_ROGUE] = {46125},
		[CLASS_DEATHKNIGHT] = {46115, 46120},
		[CLASS_MAGE] = {46129},
		[CLASS_DRUID] = {46161, 46184, 46191},
	},

	[45643] = { -- Gauntlets of the Wayward Vanquisher
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_ROGUE] = {46124},
		[CLASS_DEATHKNIGHT] = {46113, 46119},
		[CLASS_DRUID] = {46158, 46183, 46189},
		[CLASS_MAGE] = {46132},
	},

	[45641] = { -- Gauntlets of the Wayward Conqueror
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_PALADIN] = {46155, 46174, 46179},
		[CLASS_PRIEST] = {46163, 46188},
		[CLASS_WARLOCK] = {46135},
	},

	[45642] = { -- Gauntlets of the Wayward Protector
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_WARRIOR] = {46148, 46164},
		[CLASS_HUNTER] = {46142},
		[CLASS_SHAMAN] = {46199, 46200, 46207},
	},

	[45644] = { -- Gloves of the Wayward Conqueror
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_PALADIN] = {45370, 45376, 45383},
		[CLASS_PRIEST] = {45387, 45392},
		[CLASS_WARLOCK] = {45419},
	},

	[45645] = { -- Gloves of the Wayward Protector
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_WARRIOR] = {45426, 45430},
		[CLASS_HUNTER] = {45360},
		[CLASS_SHAMAN] = {45401, 45406, 45414},
	},

	[45646] = { -- Gloves of the Wayward Vanquisher
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_ROGUE] = {45397},
		[CLASS_DEATHKNIGHT] = {45337, 45341},
		[CLASS_MAGE] = {46131},
		[CLASS_DRUID] = {45345, 45351, 45355},
	},

	[45647] = { -- Helm of the Wayward Conqueror
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_PALADIN] = {45372, 45377, 45382},
		[CLASS_PRIEST] = {45386, 45391},
		[CLASS_WARLOCK] = {45417},
	},

	[45648] = { -- Helm of the Wayward Protector
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_WARRIOR] = {45425, 45431},
		[CLASS_HUNTER] = {45361},
		[CLASS_SHAMAN] = {45402, 45408, 45412},
	},

	[45649] = { -- Helm of the Wayward Vanquisher
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_ROGUE] = {45398},
		[CLASS_DEATHKNIGHT] = {45336, 45342},
		[CLASS_MAGE] = {45365},
		[CLASS_DRUID] = {45346, 45356, 46313},
	},

	[45650] = { -- Leggings of the Wayward Conqueror
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_PALADIN] = {45371, 45379, 45384},
		[CLASS_PRIEST] = {45388, 45394},
		[CLASS_WARLOCK] = {45420},
	},

	[45651] = { -- Leggings of the Wayward Protector
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_WARRIOR] = {45427, 45432},
		[CLASS_HUNTER] = {45362},
		[CLASS_SHAMAN] = {45403, 45409, 45416},
	},

	[45652] = { -- Leggings of the Wayward Vanquisher
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_ROGUE] = {45399},
		[CLASS_DEATHKNIGHT] = {45338, 45343},
		[CLASS_MAGE] = {45367},
		[CLASS_DRUID] = {45347, 45353, 45357},
	},

	[45653] = { -- Legplates of the Wayward Conqueror
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_PALADIN] = {46153, 46176, 46181},
		[CLASS_PRIEST] = {46170, 46195},
		[CLASS_WARLOCK] = {46139},
	},

	[45654] = { -- Legplates of the Wayward Protector
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_WARRIOR] = {46150, 46169},
		[CLASS_HUNTER] = {46144},
		[CLASS_SHAMAN] = {46202, 46208, 46210},
	},

	[45655] = { -- Legplates of the Wayward Vanquisher
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_ROGUE] = {46126},
		[CLASS_DEATHKNIGHT] = {46116, 46121},
		[CLASS_MAGE] = {46133},
		[CLASS_DRUID] = {46160, 46185, 46192},
	},

	[45656] = { -- Mantle of the Wayward Conqueror
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_PALADIN] = {46177, 46182, 46152},
		[CLASS_PRIEST] = {46165, 46190},
		[CLASS_WARLOCK] = {46136},
	},

	[45657] = { -- Mantle of the Wayward Protector
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_WARRIOR] = {46149, 46167},
		[CLASS_HUNTER] = {46145},
		[CLASS_SHAMAN] = {46203, 46204, 46211},
	},

	[45658] = { -- Mantle of the Wayward Vanquisher
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_ROGUE] = {46127},
		[CLASS_DEATHKNIGHT] = {46117, 46122},
		[CLASS_MAGE] = {46134},
		[CLASS_DRUID] = {46157, 46187, 46196},
	},

	[45659] = { -- Spaulders of the Wayward Conqueror
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_PALADIN] = {45373, 45380, 45385},
		[CLASS_PRIEST] = {45390, 45393},
		[CLASS_WARLOCK] = {45422},
	},

	[45660] = { -- Spaulders of the Wayward Protector
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_WARRIOR] = {45428, 45433},
		[CLASS_HUNTER] = {45363},
		[CLASS_SHAMAN] = {45404, 45410, 45415},
	},

	[45661] = { -- Spaulders of the Wayward Vanquisher
		["REDEEM"] = REDEEM_TIER_8,
		[CLASS_ROGUE] = {45400},
		[CLASS_DEATHKNIGHT] = {45339, 45344},
		[CLASS_MAGE] = {45369},
		[CLASS_DRUID] = {45349, 45352, 45359},
	},

	[52025] = { -- Vanquisher's Mark of Sanctification
		["REDEEM"] = REDEEM_TIER_10,
		[CLASS_ROGUE] = {51185, 51186, 51187, 51188, 51189},
		[CLASS_DEATHKNIGHT] = {51130, 51131, 51132, 51133, 51134, 51129, 51125, 51126, 51127, 51128},
		[CLASS_MAGE] = {51159, 51155, 51156, 51157, 51158},
		[CLASS_DRUID] = {51138, 51139, 51145, 51146, 51147, 51148, 51149, 51140, 51141, 51142, 51143, 51144, 51135, 51136, 51137},
	},

	[52026] = { -- Protector's Mark of Sanctification
		["REDEEM"] = REDEEM_TIER_10,
		[CLASS_WARRIOR] = {51217, 51218, 51219, 51210, 51211, 51212, 51213, 51214, 51215, 51216},
		[CLASS_HUNTER] = {51150, 51151, 51152, 51153, 51154},
		[CLASS_SHAMAN] = {51190, 51199, 51200, 51201, 51202, 51203, 51204, 51198, 51191, 51192, 51193, 51194, 51195, 51196, 51197},
	},

	[52027] = { -- Conqueror's Mark of Sanctification
		["REDEEM"] = REDEEM_TIER_10,
		[CLASS_PALADIN] = {51161, 51162, 51163, 51164, 51170, 51171, 51172, 51173, 51174, 51165, 51166, 51167, 51168, 51169, 51160},
		[CLASS_PRIEST] = {51184, 51178, 51179, 51180, 51181, 51182, 51183, 51177, 51175, 51176},
		[CLASS_WARLOCK] = {51205, 51206, 51207, 51208, 51209},
	},

	[52028] = { -- Vanquisher's Mark of Sanctification
		["REDEEM"] = REDEEM_TIER_10,
		[CLASS_ROGUE] = {51250, 51251, 51252, 51253, 51254},
		[CLASS_DEATHKNIGHT] = {51312, 51310, 51311, 51313, 51314, 51305, 51306, 51307, 51308, 51309},
		[CLASS_MAGE] = {51283, 51284, 51280, 51281, 51282},
		[CLASS_DRUID] = {51295, 51296, 51297, 51298, 51299, 51300, 51301, 51294, 51302, 51303, 51304, 51290, 51291, 51292, 51293},
	},

	[52029] = { -- Protector's Mark of Sanctification
		["REDEEM"] = REDEEM_TIER_10,
		[CLASS_WARRIOR] = {51222, 51223, 51224, 51225, 51226, 51227, 51228, 51229, 51220, 51221},
		[CLASS_HUNTER] = {51285, 51286, 51287, 51288, 51289},
		[CLASS_SHAMAN] = {51249, 51239, 51238, 51237, 51236, 51235, 51240, 51241, 51248, 51247, 51246, 51245, 51244, 51243, 51242},
	},

	[52030] = { -- Conqueror's Mark of Sanctification
		["REDEEM"] = REDEEM_TIER_10,
		[CLASS_PALADIN] = {51265, 51266, 51267, 51268, 51269, 51270, 51271, 51272, 51273, 51274, 51275, 51276, 51277, 51278, 51279},
		[CLASS_PRIEST] = {51257, 51258, 51259, 51256, 51260, 51261, 51262, 51263, 51264, 51255},
		[CLASS_WARLOCK] = {51233, 51230, 51231, 51232, 51234},
	},

	[65000] = { -- Crown of the Forlorn Protector
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_WARRIOR] = {65266, 65271},
		[CLASS_HUNTER] = {65206},
		[CLASS_SHAMAN] = {65246, 65251, 65256},
	},

	[65001] = { -- Crown of the Forlorn Conqueror
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_PALADIN] = {65216, 65221, 65226},
		[CLASS_PRIEST] = {65230, 65235},
		[CLASS_WARLOCK] = {65260},
	},

	[65002] = { -- Crown of the Forlorn Vanquisher
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_ROGUE] = {65241},
		[CLASS_DEATHKNIGHT] = {65181, 65186},
		[CLASS_MAGE] = {65210},
		[CLASS_DRUID] = {65190, 65195, 65200},
	},

	[65087] = { -- Shoulders of the Forlorn Protector
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_WARRIOR] = {65268, 65273},
		[CLASS_HUNTER] = {65208},
		[CLASS_SHAMAN] = {65248, 65253, 65258},
	},

	[65088] = { -- Shoulders of the Forlorn Conqueror
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_PALADIN] = {65218, 65223, 65228},
		[CLASS_PRIEST] = {65233, 65238},
		[CLASS_WARLOCK] = {65263},
	},

	[65089] = { -- Shoulders of the Forlorn Vanquisher
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_ROGUE] = {65243},
		[CLASS_DEATHKNIGHT] = {65183, 65188},
		[CLASS_MAGE] = {65213},
		[CLASS_DRUID] = {65193, 65198, 65203},
	},

	[67423] = { -- Chest of the Forlorn Conqueror
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_PALADIN] = {65224, 65219, 65214},
		[CLASS_PRIEST] = {65237, 65232},
		[CLASS_WARLOCK] = {65262},
	},

	[67424] = { -- Chest of the Forlorn Protector
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_WARRIOR] = {65269, 65264},
		[CLASS_HUNTER] = {65204},
		[CLASS_SHAMAN] = {65254, 65249, 65244},
	},

	[67425] = { -- Chest of the Forlorn Vanquisher
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_ROGUE] = {65239},
		[CLASS_DEATHKNIGHT] = {65184, 65179},
		[CLASS_MAGE] = {65212},
		[CLASS_DRUID] = {65202, 65197, 65192},
	},

	[67426] = { -- Leggings of the Forlorn Vanquisher
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_ROGUE] = {65242},
		[CLASS_DEATHKNIGHT] = {65187, 65182},
		[CLASS_MAGE] = {65211},
		[CLASS_DRUID] = {65201, 65196, 65191},
	},

	[67427] = { -- Leggings of the Forlorn Protector
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_WARRIOR] = {65267, 65272},
		[CLASS_HUNTER] = {65207},
		[CLASS_SHAMAN] = {65257, 65252, 65247},
	},

	[67428] = { -- Leggings of the Forlorn Conqueror
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_PALADIN] = {65227, 65222, 65217},
		[CLASS_PRIEST] = {65236, 65231},
		[CLASS_WARLOCK] = {65261},
	},

	[67429] = { -- Gauntlets of the Forlorn Conqueror
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_PALADIN] = {65215, 65220, 65225},
		[CLASS_PRIEST] = {65229, 65234},
		[CLASS_WARLOCK] = {65259},
	},

	[67430] = { -- Gauntlets of the Forlorn Protector
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_WARRIOR] = {65265, 65270},
		[CLASS_HUNTER] = {65205},
		[CLASS_SHAMAN] = {65255, 65245, 65250},
	},

	[67431] = { -- Gauntlets of the Forlorn Vanquisher
		["REDEEM"] = REDEEM_TIER_11,
		[CLASS_ROGUE] = {65240},
		[CLASS_DEATHKNIGHT] = {65180, 65185},
		[CLASS_MAGE] = {65209},
		[CLASS_DRUID] = {65194, 65199, 65189},
	},

	[71669] = { -- Gauntlets of the Fiery Vanquisher
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_ROGUE] = {71538},
		[CLASS_DEATHKNIGHT] = {71477, 71482},
		[CLASS_MAGE] = {71507},
		[CLASS_DRUID] = {71487, 71491, 71496},
	},

	[71670] = { -- Crown of the Fiery Vanquisher
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_ROGUE] = {71539},
		[CLASS_DEATHKNIGHT] = {71478, 71483},
		[CLASS_MAGE] = {71508},
		[CLASS_DRUID] = {71488, 71492, 71497},
	},

	[71671] = { -- Leggings of the Fiery Vanquisher
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_ROGUE] = {71540},
		[CLASS_DEATHKNIGHT] = {71479, 71484},
		[CLASS_MAGE] = {71509},
		[CLASS_DRUID] = {71489, 71493, 71498},
	},

	[71672] = { -- Chest of the Fiery Vanquisher
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_ROGUE] = {71537},
		[CLASS_DEATHKNIGHT] = {71476, 71481},
		[CLASS_MAGE] = {71510},
		[CLASS_DRUID] = {71486, 71494, 71499},
	},

	[71673] = { -- Shoulders of the Fiery Vanquisher
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_ROGUE] = {71541},
		[CLASS_DEATHKNIGHT] = {71480, 71485},
		[CLASS_MAGE] = {71511},
		[CLASS_DRUID] = {71490, 71495, 71500},
	},

	[71676] = { -- Gauntlets of the Fiery Conqueror
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_PALADIN] = {71513, 71518, 71523},
		[CLASS_PRIEST] = {71527, 71532},
		[CLASS_WARLOCK] = {71594},
	},

	[71677] = { -- Crown of the Fiery Conqueror
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_PALADIN] = {71514, 71519, 71524},
		[CLASS_PRIEST] = {71528, 71533},
		[CLASS_WARLOCK] = {71595},
	},

	[71678] = { -- Leggings of the Fiery Conqueror
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_PALADIN] = {71515, 71520, 71525},
		[CLASS_PRIEST] = {71529, 71534},
		[CLASS_WARLOCK] = {71596},
	},

	[71679] = { -- Chest of the Fiery Conqueror
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_PALADIN] = {71522, 71512, 71517},
		[CLASS_PRIEST] = {71530, 71535},
		[CLASS_WARLOCK] = {71597},
	},

	[71680] = { -- Shoulders of the Fiery Conqueror
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_PALADIN] = {71516, 71521, 71526},
		[CLASS_PRIEST] = {71531, 71536},
		[CLASS_WARLOCK] = {71598},
	},

	[71683] = { -- Gauntlets of the Fiery Protector
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_WARRIOR] = {71605, 71601},
		[CLASS_HUNTER] = {71502},
		[CLASS_SHAMAN] = {71543, 71548, 71553},
	},

	[71684] = { -- Crown of the Fiery Protector
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_WARRIOR] = {71599, 71606},
		[CLASS_HUNTER] = {71503},
		[CLASS_SHAMAN] = {71544, 71549, 71554},
	},

	[71685] = { -- Leggings of the Fiery Protector
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_WARRIOR] = {71602, 71607},
		[CLASS_HUNTER] = {71504},
		[CLASS_SHAMAN] = {71545, 71550, 71555},
	},

	[71686] = { -- Chest of the Fiery Protector
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_WARRIOR] = {71600, 71604},
		[CLASS_HUNTER] = {71501},
		[CLASS_SHAMAN] = {71542, 71547, 71552},
	},

	[71687] = { -- Shoulders of the Fiery Protector
		["REDEEM"] = REDEEM_TIER_12,
		[CLASS_WARRIOR] = {71603, 71608},
		[CLASS_HUNTER] = {71505},
		[CLASS_SHAMAN] = {71556, 71546, 71551},
	},

	[78170] = { -- Shoulders of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {77027},
		[CLASS_DEATHKNIGHT] = {76978, 77012},
		[CLASS_MAGE] = {76216},
		[CLASS_DRUID] = {76753, 77017, 77022},
	},

	[78171] = { -- Leggings of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {77026},
		[CLASS_DEATHKNIGHT] = {76977, 77011},
		[CLASS_MAGE] = {76214},
		[CLASS_DRUID] = {77016, 77020, 76751},
	},

	[78172] = { -- Crown of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {77025},
		[CLASS_DEATHKNIGHT] = {76976, 77010},
		[CLASS_MAGE] = {76213},
		[CLASS_DRUID] = {76750, 77015, 77019},
	},

	[78173] = { -- Gauntlets of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {77024},
		[CLASS_DEATHKNIGHT] = {76975, 77009},
		[CLASS_MAGE] = {76212},
		[CLASS_DRUID] = {76749, 77014, 77018},
	},

	[78174] = { -- Chest of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {77023},
		[CLASS_DEATHKNIGHT] = {76974, 77008},
		[CLASS_MAGE] = {76215},
		[CLASS_DRUID] = {76752, 77013, 77021},
	},

	[78175] = { -- Shoulders of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {76987, 76992},
		[CLASS_HUNTER] = {77032},
		[CLASS_SHAMAN] = {76760, 77035, 77044},
	},

	[78176] = { -- Leggings of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {76986, 76991},
		[CLASS_HUNTER] = {77031},
		[CLASS_SHAMAN] = {76759, 77036, 77043},
	},

	[78177] = { -- Crown of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {76983, 76990},
		[CLASS_HUNTER] = {77030},
		[CLASS_SHAMAN] = {76758, 77037, 77042},
	},

	[78178] = { -- Gauntlets of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {76985, 76989},
		[CLASS_HUNTER] = {77029},
		[CLASS_SHAMAN] = {76757, 77038, 77041},
	},

	[78179] = { -- Chest of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {76984, 76988},
		[CLASS_HUNTER] = {77028},
		[CLASS_SHAMAN] = {76756, 77039, 77040},
	},

	[78180] = { -- Shoulders of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {76769, 76878, 77007},
		[CLASS_PRIEST] = {76344, 76361},
		[CLASS_WARLOCK] = {76339},
	},

	[78181] = { -- Leggings of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {76768, 76877, 77006},
		[CLASS_PRIEST] = {76346, 76359},
		[CLASS_WARLOCK] = {76341},
	},

	[78182] = { -- Crown of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {76767, 76876, 77005},
		[CLASS_PRIEST] = {76347, 76358},
		[CLASS_WARLOCK] = {76342},
	},

	[78183] = { -- Gauntlets of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {76766, 76875, 77004},
		[CLASS_PRIEST] = {76348, 76357},
		[CLASS_WARLOCK] = {76343},
	},

	[78184] = { -- Chest of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {76765, 76874, 77003},
		[CLASS_PRIEST] = {76345, 76360},
		[CLASS_WARLOCK] = {76340},
	},

	[78847] = { -- Chest of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {78726, 78727, 78732},
		[CLASS_PRIEST] = {78728, 78731},
		[CLASS_WARLOCK] = {78730},
	},

	[78848] = { -- Chest of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {78658, 78657},
		[CLASS_HUNTER] = {78661},
		[CLASS_SHAMAN] = {78723, 78724, 78725},
	},

	[78849] = { -- Chest of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {78664},
		[CLASS_DEATHKNIGHT] = {78659, 78663},
		[CLASS_MAGE] = {78729},
		[CLASS_DRUID] = {78660, 78662, 78665},
	},

	[78850] = { -- Crown of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {78692, 78693, 78695},
		[CLASS_PRIEST] = {78700, 78703},
		[CLASS_WARLOCK] = {78702},
	},

	[78851] = { -- Crown of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {78688, 78689},
		[CLASS_HUNTER] = {78698},
		[CLASS_SHAMAN] = {78685, 78686, 78691},
	},

	[78852] = { -- Crown of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {78699},
		[CLASS_DEATHKNIGHT] = {78687, 78697},
		[CLASS_MAGE] = {78701},
		[CLASS_DRUID] = {78690, 78694, 78696},
	},

	[78853] = { -- Gauntlets of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {78673, 78675, 78677},
		[CLASS_PRIEST] = {78682, 78683},
		[CLASS_WARLOCK] = {78681},
	},

	[78854] = { -- Gauntlets of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {78668, 78669},
		[CLASS_HUNTER] = {78674},
		[CLASS_SHAMAN] = {78666, 78667, 78672},
	},

	[78855] = { -- Gauntlets of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {78679},
		[CLASS_DEATHKNIGHT] = {78670, 78678},
		[CLASS_MAGE] = {78671},
		[CLASS_DRUID] = {78676, 78680, 78684},
	},

	[78856] = { -- Leggings of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {78712, 78715, 78717},
		[CLASS_PRIEST] = {78719, 78722},
		[CLASS_WARLOCK] = {78721},
	},

	[78857] = { -- Leggings of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {78705, 78706},
		[CLASS_HUNTER] = {78709},
		[CLASS_SHAMAN] = {78704, 78711, 78718},
	},

	[78858] = { -- Leggings of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {78708},
		[CLASS_DEATHKNIGHT] = {78716, 78707},
		[CLASS_MAGE] = {78720},
		[CLASS_DRUID] = {78710, 78713, 78714},
	},

	[78859] = { -- Shoulders of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {78742, 78745, 78746},
		[CLASS_PRIEST] = {78747, 78750},
		[CLASS_WARLOCK] = {78749},
	},

	[78860] = { -- Shoulders of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {78734, 78735},
		[CLASS_HUNTER] = {78737},
		[CLASS_SHAMAN] = {78739, 78741, 78733},
	},

	[78861] = { -- Shoulders of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {78738},
		[CLASS_DEATHKNIGHT] = {78736, 78751},
		[CLASS_MAGE] = {78748},
		[CLASS_DRUID] = {78740, 78743, 78744},
	},

	[78862] = { -- Chest of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {78759},
		[CLASS_DEATHKNIGHT] = {78754, 78758},
		[CLASS_MAGE] = {78824},
		[CLASS_DRUID] = {78755, 78757, 78760},
	},

	[78863] = { -- Chest of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {78821, 78822, 78827},
		[CLASS_PRIEST] = {78823, 78826},
		[CLASS_WARLOCK] = {78825},
	},

	[78864] = { -- Chest of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {78752, 78753},
		[CLASS_HUNTER] = {78756},
		[CLASS_SHAMAN] = {78818, 78819, 78820},
	},

	[78865] = { -- Gauntlets of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {78774},
		[CLASS_DEATHKNIGHT] = {78765, 78773},
		[CLASS_MAGE] = {78766},
		[CLASS_DRUID] = {78771, 78775, 78779},
	},

	[78866] = { -- Gauntlets of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {78768, 78770, 78772},
		[CLASS_PRIEST] = {78777, 78778},
		[CLASS_WARLOCK] = {78776},
	},

	[78867] = { -- Gauntlets of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {78763, 78764},
		[CLASS_HUNTER] = {78769},
		[CLASS_SHAMAN] = {78761, 78762, 78767},
	},

	[78868] = { -- Crown of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {78794},
		[CLASS_DEATHKNIGHT] = {78782, 78792},
		[CLASS_MAGE] = {78796},
		[CLASS_DRUID] = {78785, 78789, 78791},
	},

	[78869] = { -- Crown of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {78787, 78788, 78790},
		[CLASS_PRIEST] = {78795, 78798},
		[CLASS_WARLOCK] = {78797},
	},

	[78870] = { -- Crown of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {78783, 78784},
		[CLASS_HUNTER] = {78793},
		[CLASS_SHAMAN] = {78780, 78781, 78786},
	},

	[78871] = { -- Leggings of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {78803},
		[CLASS_DEATHKNIGHT] = {78802, 78811},
		[CLASS_MAGE] = {78815},
		[CLASS_DRUID] = {78805, 78808, 78809},
	},

	[78872] = { -- Leggings of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {78807, 78810, 78812},
		[CLASS_PRIEST] = {78814, 78817},
		[CLASS_WARLOCK] = {78816},
	},

	[78873] = { -- Leggings of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {78800, 78801},
		[CLASS_HUNTER] = {78804},
		[CLASS_SHAMAN] = {78799, 78806, 78813},
	},

	[78874] = { -- Shoulders of the Corrupted Vanquisher
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_ROGUE] = {78833},
		[CLASS_DEATHKNIGHT] = {78846, 78831},
		[CLASS_MAGE] = {78843},
		[CLASS_DRUID] = {78838, 78839, 78835},
	},

	[78875] = { -- Shoulders of the Corrupted Conqueror
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_PALADIN] = {78840, 78841, 78837},
		[CLASS_PRIEST] = {78842, 78845},
		[CLASS_WARLOCK] = {78844},
	},

	[78876] = { -- Shoulders of the Corrupted Protector
		["REDEEM"] = REDEEM_TIER_13,
		[CLASS_WARRIOR] = {78829, 78830},
		[CLASS_HUNTER] = {78832},
		[CLASS_SHAMAN] = {78828, 78834, 78836},
	},

	[89234] = { -- Helm of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {85301},
		[CLASS_DEATHKNIGHT] = {85316, 85336},
		[CLASS_MAGE] = {85377},
		[CLASS_DRUID] = {85307, 85311, 85357, 85381},
	},

	[89235] = { -- Helm of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {85321, 85341, 85346},
		[CLASS_PRIEST] = {85362, 85365},
		[CLASS_WARLOCK] = {85370},
	},

	[89236] = { -- Helm of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {85326, 85333},
		[CLASS_HUNTER] = {85296},
		[CLASS_SHAMAN] = {85286, 85291, 85351},
		[CLASS_MONK] = {85386, 85390, 85396},
	},

	[89237] = { -- Chest of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {85323, 85343, 85348},
		[CLASS_PRIEST] = {85360, 85367},
		[CLASS_WARLOCK] = {85372},
	},

	[89238] = { -- Chest of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {85328, 85332},
		[CLASS_HUNTER] = {85298},
		[CLASS_SHAMAN] = {85288, 85289, 85353},
		[CLASS_MONK] = {85394, 85388, 85392},
	},

	[89239] = { -- Chest of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {85303},
		[CLASS_DEATHKNIGHT] = {85318, 85338},
		[CLASS_MAGE] = {85375},
		[CLASS_DRUID] = {85305, 85313, 85355, 85379},
	},

	[89240] = { -- Gauntlets of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {85322, 85342, 85347},
		[CLASS_PRIEST] = {85363, 85364},
		[CLASS_WARLOCK] = {85369},
	},

	[89241] = { -- Gauntlets of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {85327, 85331},
		[CLASS_HUNTER] = {85297},
		[CLASS_SHAMAN] = {85287, 85290, 85352},
		[CLASS_MONK] = {85387, 85389, 85395},
	},

	[89242] = { -- Gauntlets of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {85302},
		[CLASS_DEATHKNIGHT] = {85317, 85337},
		[CLASS_MAGE] = {85378},
		[CLASS_DRUID] = {85308, 85312, 85358, 85380},
	},

	[89243] = { -- Leggings of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {85320, 85340, 85345},
		[CLASS_PRIEST] = {85361, 85366},
		[CLASS_WARLOCK] = {85371},
	},

	[89244] = { -- Leggings of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {85325, 85330},
		[CLASS_HUNTER] = {85295},
		[CLASS_SHAMAN] = {85285, 85292, 85350},
		[CLASS_MONK] = {85385, 85391, 85397},
	},

	[89245] = { -- Leggings of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {85300},
		[CLASS_DEATHKNIGHT] = {85315, 85335},
		[CLASS_MAGE] = {85376},
		[CLASS_DRUID] = {85306, 85310, 85356, 85382},
	},

	[89246] = { -- Shoulders of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {85319, 85339, 85344},
		[CLASS_PRIEST] = {85359, 85368},
		[CLASS_WARLOCK] = {85373},
	},

	[89247] = { -- Shoulders of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {85324, 85329},
		[CLASS_HUNTER] = {85294},
		[CLASS_SHAMAN] = {85284, 85293, 85349},
		[CLASS_MONK] = {85384, 85393, 85398},
	},

	[89248] = { -- Shoulders of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {85299},
		[CLASS_DEATHKNIGHT] = {85314, 85334},
		[CLASS_MAGE] = {85374},
		[CLASS_DRUID] = {85304, 85309, 85354, 85383},
	},

	[89249] = { -- Chest of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {87124},
		[CLASS_DEATHKNIGHT] = {86913, 86918},
		[CLASS_MAGE] = {87010},
		[CLASS_DRUID] = {86923, 86931, 86936, 86938},
	},

	[89250] = { -- Chest of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {87099, 87104, 87109},
		[CLASS_PRIEST] = {87117, 87122},
		[CLASS_WARLOCK] = {87190},
	},

	[89251] = { -- Chest of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {87193, 87197},
		[CLASS_HUNTER] = {87002},
		[CLASS_SHAMAN] = {87129, 87134, 87139},
		[CLASS_MONK] = {87084, 87092, 87094},
	},

	[89252] = { -- Leggings of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {87127},
		[CLASS_DEATHKNIGHT] = {86916, 86921},
		[CLASS_MAGE] = {87009},
		[CLASS_DRUID] = {86926, 86930, 86935, 86941},
	},

	[89253] = { -- Leggings of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {87102, 87107, 87112},
		[CLASS_PRIEST] = {87116, 87121},
		[CLASS_WARLOCK] = {87189},
	},

	[89254] = { -- Leggings of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {87195, 87200},
		[CLASS_HUNTER] = {87005},
		[CLASS_SHAMAN] = {87132, 87137, 87142},
		[CLASS_MONK] = {87087, 87091, 87097},
	},

	[89255] = { -- Gauntlets of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {87125},
		[CLASS_DEATHKNIGHT] = {86914, 86919},
		[CLASS_MAGE] = {87007},
		[CLASS_DRUID] = {86924, 86928, 86933, 86939},
	},

	[89256] = { -- Gauntlets of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {87100, 87105, 87110},
		[CLASS_PRIEST] = {87114, 87119},
		[CLASS_WARLOCK] = {87187},
	},

	[89257] = { -- Gauntlets of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {87194, 87198},
		[CLASS_HUNTER] = {87003},
		[CLASS_SHAMAN] = {87130, 87135, 87140},
		[CLASS_MONK] = {87085, 87089, 87095},
	},

	[89258] = { -- Helm of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {87126},
		[CLASS_DEATHKNIGHT] = {86915, 86920},
		[CLASS_MAGE] = {87008},
		[CLASS_DRUID] = {86934, 86940, 86925, 86929},
	},

	[89259] = { -- Helm of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {87101, 87106, 87111},
		[CLASS_PRIEST] = {87115, 87120},
		[CLASS_WARLOCK] = {87188},
	},

	[89260] = { -- Helm of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {87192, 87199},
		[CLASS_HUNTER] = {87004},
		[CLASS_SHAMAN] = {87131, 87136, 87141},
		[CLASS_MONK] = {87086, 87090, 87096},
	},

	[89261] = { -- Shoulders of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {87128},
		[CLASS_DEATHKNIGHT] = {86917, 86922},
		[CLASS_MAGE] = {87011},
		[CLASS_DRUID] = {86927, 86932, 86937, 86942},
	},

	[89262] = { -- Shoulders of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {87103, 87108, 87113},
		[CLASS_PRIEST] = {87118, 87123},
		[CLASS_WARLOCK] = {87191},
	},

	[89263] = { -- Shoulders of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {87196, 87201},
		[CLASS_HUNTER] = {87006},
		[CLASS_SHAMAN] = {87133, 87138, 87143},
		[CLASS_MONK] = {87088, 87093, 87098},
	},

	[89264] = { -- Chest of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {86643},
		[CLASS_DEATHKNIGHT] = {86658, 86678},
		[CLASS_MAGE] = {86715},
		[CLASS_DRUID] = {86719, 86645, 86653, 86695},
	},

	[89265] = { -- Chest of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {86663, 86683, 86688},
		[CLASS_PRIEST] = {86700, 86707},
		[CLASS_WARLOCK] = {86712},
	},

	[89266] = { -- Chest of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {86668, 86672},
		[CLASS_HUNTER] = {86638},
		[CLASS_SHAMAN] = {86693, 86628, 86629},
		[CLASS_MONK] = {86728, 86732, 86734},
	},

	[89267] = { -- Leggings of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {86640},
		[CLASS_DEATHKNIGHT] = {86655, 86675},
		[CLASS_MAGE] = {86716},
		[CLASS_DRUID] = {86646, 86650, 86696, 86722},
	},

	[89268] = { -- Leggings of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {86660, 86680, 86685},
		[CLASS_PRIEST] = {86706, 86701},
		[CLASS_WARLOCK] = {86711},
	},

	[89269] = { -- Leggings of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {86665, 86670},
		[CLASS_HUNTER] = {86635},
		[CLASS_SHAMAN] = {86632, 86690, 86625},
		[CLASS_MONK] = {86725, 86731, 86737},
	},

	[89270] = { -- Gauntlets of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {86642},
		[CLASS_DEATHKNIGHT] = {86657, 86677},
		[CLASS_MAGE] = {86718},
		[CLASS_DRUID] = {86648, 86652, 86698, 86720},
	},

	[89271] = { -- Gauntlets of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {86662, 86682, 86687},
		[CLASS_PRIEST] = {86703, 86704},
		[CLASS_WARLOCK] = {86709},
	},

	[89272] = { -- Gauntlets of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {86667, 86671},
		[CLASS_HUNTER] = {86637},
		[CLASS_SHAMAN] = {86627, 86630, 86692},
		[CLASS_MONK] = {86727, 86729, 86735},
	},

	[89273] = { -- Helm of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {86641},
		[CLASS_DEATHKNIGHT] = {86656, 86676},
		[CLASS_MAGE] = {86717},
		[CLASS_DRUID] = {86647, 86651, 86697, 86721},
	},

	[89274] = { -- Helm of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {86661, 86681, 86686},
		[CLASS_PRIEST] = {86702, 86705},
		[CLASS_WARLOCK] = {86710},
	},

	[89275] = { -- Helm of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {86666, 86673},
		[CLASS_HUNTER] = {86636},
		[CLASS_SHAMAN] = {86626, 86631, 86691},
		[CLASS_MONK] = {86726, 86730, 86736},
	},

	[89276] = { -- Shoulders of the Shadowy Vanquisher
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = {86639},
		[CLASS_DEATHKNIGHT] = {86654, 86674},
		[CLASS_MAGE] = {86714},
		[CLASS_DRUID] = {86644, 86649, 86694, 86723},
	},

	[89277] = { -- Shoulders of the Shadowy Conqueror
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {86659, 86679, 86684},
		[CLASS_PRIEST] = {86699, 86708},
		[CLASS_WARLOCK] = {86713},
	},

	[89278] = { -- Shoulders of the Shadowy Protector
		["REDEEM"] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {86664, 86669},
		[CLASS_HUNTER] = {86634},
		[CLASS_SHAMAN] = {86624, 86633, 86689},
		[CLASS_MONK] = {86724, 86733, 86738},
	},

	[95569] = { -- Chest of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {95305},
		[CLASS_DEATHKNIGHT] = {95225, 95230},
		[CLASS_MAGE] = {95263},
		[CLASS_DRUID] = {95235, 95243, 95248, 95250},
	},

	[95570] = { -- Gauntlets of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {95306},
		[CLASS_DEATHKNIGHT] = {95226, 95231},
		[CLASS_MAGE] = {95260},
		[CLASS_DRUID] = {95236, 95240, 95245, 95251},
	},

	[95571] = { -- Helm of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {95307},
		[CLASS_DEATHKNIGHT] = {95227, 95232},
		[CLASS_MAGE] = {95261},
		[CLASS_DRUID] = {95237, 95241, 95246, 95252},
	},

	[95572] = { -- Leggings of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {95308},
		[CLASS_DEATHKNIGHT] = {95228, 95233},
		[CLASS_MAGE] = {95262},
		[CLASS_DRUID] = {95238, 95242, 95247, 95253},
	},

	[95573] = { -- Shoulders of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {95309},
		[CLASS_DEATHKNIGHT] = {95229, 95234},
		[CLASS_MAGE] = {95264},
		[CLASS_DRUID] = {95239, 95244, 95249, 95254},
	},

	[95574] = { -- Chest of the Crackling Conqueror
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95280, 95285, 95290},
		[CLASS_PRIEST] = {95298, 95303},
		[CLASS_WARLOCK] = {95328},
	},

	[95575] = { -- Gauntlets of the Crackling Conqueror
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95281, 95286, 95291},
		[CLASS_PRIEST] = {95295, 95300},
		[CLASS_WARLOCK] = {95325},
	},

	[95576] = { -- Leggings of the Crackling Conqueror
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95283, 95288, 95293},
		[CLASS_PRIEST] = {95297, 95302},
		[CLASS_WARLOCK] = {95327},
	},

	[95577] = { -- Helm of the Crackling Conqueror
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95282, 95287, 95292},
		[CLASS_PRIEST] = {95296, 95301},
		[CLASS_WARLOCK] = {95326},
	},

	[95578] = { -- Shoulders of the Crackling Conqueror
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95284, 95289, 95294},
		[CLASS_PRIEST] = {95299, 95304},
		[CLASS_WARLOCK] = {95329},
	},

	[95579] = { -- Chest of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95331, 95335},
		[CLASS_HUNTER] = {95255},
		[CLASS_SHAMAN] = {95310, 95315, 95320},
		[CLASS_MONK] = {95265, 95273, 95275},
	},

	[95580] = { -- Gauntlets of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95332, 95336},
		[CLASS_HUNTER] = {95256},
		[CLASS_SHAMAN] = {95311, 95316, 95321},
		[CLASS_MONK] = {95266, 95270, 95276},
	},

	[95581] = { -- Leggings of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95333, 95338},
		[CLASS_HUNTER] = {95258},
		[CLASS_SHAMAN] = {95313, 95318, 95323},
		[CLASS_MONK] = {95268, 95272, 95278},
	},

	[95582] = { -- Helm of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95330, 95337},
		[CLASS_HUNTER] = {95257},
		[CLASS_SHAMAN] = {95312, 95317, 95322},
		[CLASS_MONK] = {95267, 95271, 95277},
	},

	[95583] = { -- Shoulders of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95334, 95339},
		[CLASS_HUNTER] = {95259},
		[CLASS_SHAMAN] = {95314, 95319, 95324},
		[CLASS_MONK] = {95269, 95274, 95279},
	},

	[95822] = { -- Chest of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {95935},
		[CLASS_DEATHKNIGHT] = {95825, 95830},
		[CLASS_MAGE] = {95893},
		[CLASS_DRUID] = {95843, 95848, 95850, 95835},
	},

	[95823] = { -- Chest of the Crackling Conqueror
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95910, 95915, 95920},
		[CLASS_PRIEST] = {95928, 95933},
		[CLASS_WARLOCK] = {95984},
	},

	[95824] = { -- Chest of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95987, 95991},
		[CLASS_HUNTER] = {95882},
		[CLASS_SHAMAN] = {95940, 95945, 95950},
		[CLASS_MONK] = {95895, 95903, 95905},
	},

	[95855] = { -- Gauntlets of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {95936},
		[CLASS_DEATHKNIGHT] = {95826, 95831},
		[CLASS_MAGE] = {95890},
		[CLASS_DRUID] = {95836, 95840, 95845, 95851},
	},

	[95856] = { -- Gauntlets of the Crackling Conqueror
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95911, 95916, 95921},
		[CLASS_PRIEST] = {95925, 95930},
		[CLASS_WARLOCK] = {95981},
	},

	[95857] = { -- Gauntlets of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95988, 95992},
		[CLASS_HUNTER] = {95883},
		[CLASS_SHAMAN] = {95941, 95946, 95951},
		[CLASS_MONK] = {95896, 95900, 95906},
	},

	[95879] = { -- Helm of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {95937},
		[CLASS_DEATHKNIGHT] = {95827, 95832},
		[CLASS_MAGE] = {95891},
		[CLASS_DRUID] = {95837, 95841, 95846, 95852},
	},

	[95880] = { -- Helm of the Crackling Conqueror
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95912, 95917, 95922},
		[CLASS_PRIEST] = {95926, 95931},
		[CLASS_WARLOCK] = {95982},
	},

	[95881] = { -- Helm of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95986, 95993},
		[CLASS_HUNTER] = {95884},
		[CLASS_SHAMAN] = {95942, 95947, 95952},
		[CLASS_MONK] = {95897, 95901, 95907},
	},

	[95887] = { -- Leggings of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {95938},
		[CLASS_DEATHKNIGHT] = {95828, 95833},
		[CLASS_MAGE] = {95892},
		[CLASS_DRUID] = {95838, 95842, 95847, 95853},
	},

	[95889] = { -- Leggings of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95989, 95994},
		[CLASS_HUNTER] = {95885},
		[CLASS_SHAMAN] = {95943, 95948, 95953},
		[CLASS_MONK] = {95898, 95902, 95908},
	},

	[95955] = { -- Shoulders of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {95939},
		[CLASS_DEATHKNIGHT] = {95834, 95829},
		[CLASS_MAGE] = {95894},
		[CLASS_DRUID] = {95839, 95844, 95849, 95854},
	},

	[95956] = { -- Shoulders of the Crackling Conqueror
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95924, 95914, 95919},
		[CLASS_PRIEST] = {95929, 95934},
		[CLASS_WARLOCK] = {95985},
	},

	[95957] = { -- Shoulders of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95990, 95995},
		[CLASS_HUNTER] = {95886},
		[CLASS_SHAMAN] = {95944, 95949, 95954},
		[CLASS_MONK] = {95899, 95904, 95909},
	},

	[96566] = { -- Chest of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {96679},
		[CLASS_DEATHKNIGHT] = {96569, 96574},
		[CLASS_MAGE] = {96637},
		[CLASS_DRUID] = {96579, 96587, 96592, 96594},
	},

	[96567] = { -- Chest of the Crackling Conqueror
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {96654, 96659, 96664},
		[CLASS_PRIEST] = {96672, 96677},
		[CLASS_WARLOCK] = {96728},
	},

	[96568] = { -- Chest of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {96731, 96735},
		[CLASS_HUNTER] = {96626},
		[CLASS_SHAMAN] = {96694, 96684, 96689},
		[CLASS_MONK] = {96639, 96647, 96649},
	},

	[96599] = { -- Gauntlets of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {96680},
		[CLASS_DEATHKNIGHT] = {96570, 96575},
		[CLASS_MAGE] = {96634},
		[CLASS_DRUID] = {96580, 96584, 96589, 96595},
	},

	[96601] = { -- Gauntlets of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {96732, 96736},
		[CLASS_HUNTER] = {96627},
		[CLASS_SHAMAN] = {96695, 96685, 96690},
		[CLASS_MONK] = {96640, 96644, 96650},
	},

	[96623] = { -- Helm of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {96681},
		[CLASS_DEATHKNIGHT] = {96571, 96576},
		[CLASS_MAGE] = {96635},
		[CLASS_DRUID] = {96581, 96585, 96590, 96596},
	},

	[96624] = { -- Helm of the Crackling Conqueror
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {96656, 96661, 96666},
		[CLASS_PRIEST] = {96670, 96675},
		[CLASS_WARLOCK] = {96726},
	},

	[96625] = { -- Helm of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {96730, 96737},
		[CLASS_HUNTER] = {96628},
		[CLASS_SHAMAN] = {96686, 96691, 96696},
		[CLASS_MONK] = {96641, 96645, 96651},
	},

	[96631] = { -- Leggings of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {96682},
		[CLASS_DEATHKNIGHT] = {96572, 96577},
		[CLASS_MAGE] = {96636},
		[CLASS_DRUID] = {96582, 96586, 96591, 96597},
	},

	[96632] = { -- Leggings of the Crackling Conqueror
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {96657, 96662, 96667},
		[CLASS_PRIEST] = {96671, 96676},
		[CLASS_WARLOCK] = {96727},
	},

	[96633] = { -- Leggings of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {96733, 96738},
		[CLASS_HUNTER] = {96629},
		[CLASS_SHAMAN] = {96687, 96692, 96697},
		[CLASS_MONK] = {96642, 96646, 96652},
	},

	[96699] = { -- Shoulders of the Crackling Vanquisher
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_ROGUE] = {96683},
		[CLASS_DEATHKNIGHT] = {96573, 96578},
		[CLASS_MAGE] = {96638},
		[CLASS_DRUID] = {96583, 96588, 96593, 96598},
	},

	[96700] = { -- Shoulders of the Crackling Conqueror
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {96658, 96663, 96668},
		[CLASS_PRIEST] = {96673, 96678},
		[CLASS_WARLOCK] = {96729},
	},

	[96701] = { -- Shoulders of the Crackling Protector
		["REDEEM"] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {96734, 96739},
		[CLASS_HUNTER] = {96630},
		[CLASS_SHAMAN] = {96688, 96693, 96698},
		[CLASS_MONK] = {96643, 96648, 96653},
	},

	[99667] = { -- Gauntlets of the Cursed Protector (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_WARRIOR] = {99034, 99038},
		[CLASS_HUNTER] = {99086},
		[CLASS_SHAMAN] = {98993, 99088, 98988},
		[CLASS_MONK] = {99064, 99068, 99072},
	},

	[99668] = { -- Shoulders of the Cursed Vanquisher (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_ROGUE] = {99010},
		[CLASS_DEATHKNIGHT] = {99040, 99059},
		[CLASS_MAGE] = {99079},
		[CLASS_DRUID] = {98978, 98998, 99016, 99022},
	},

	[99669] = { -- Shoulders of the Cursed Conqueror (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_PALADIN] = {98987, 99027, 99076},
		[CLASS_PRIEST] = {99005, 99018},
		[CLASS_WARLOCK] = {99045},
	},

	[99670] = { -- Shoulders of the Cursed Protector (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_WARRIOR] = {99030, 99036},
		[CLASS_HUNTER] = {99082},
		[CLASS_SHAMAN] = {99091, 98977, 98991},
		[CLASS_MONK] = {99051, 99062, 99075},
	},

	[99671] = { -- Helm of the Cursed Vanquisher (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_ROGUE] = {99008},
		[CLASS_DEATHKNIGHT] = {99049, 99057},
		[CLASS_MAGE] = {99084},
		[CLASS_DRUID] = {98995, 99001, 99013, 99043},
	},

	[99672] = { -- Helm of the Cursed Conqueror (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_PALADIN] = {98979, 98985, 99029},
		[CLASS_PRIEST] = {99020, 99024},
		[CLASS_WARLOCK] = {99054},
	},

	[99673] = { -- Helm of the Cursed Protector (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_WARRIOR] = {99032, 99046},
		[CLASS_HUNTER] = {99080},
		[CLASS_SHAMAN] = {99089, 98983, 98989},
		[CLASS_MONK] = {99065, 99069, 99073},
	},

	[99674] = { -- Leggings of the Cursed Vanquisher (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_ROGUE] = {99009},
		[CLASS_DEATHKNIGHT] = {99039, 99058},
		[CLASS_MAGE] = {99077},
		[CLASS_DRUID] = {98981, 98996, 99014, 99044},
	},

	[99675] = { -- Leggings of the Cursed Conqueror (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_PALADIN] = {99026, 98980, 98986},
		[CLASS_PRIEST] = {99025, 99021},
		[CLASS_WARLOCK] = {99055},
	},

	[99676] = { -- Leggings of the Cursed Protector (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_WARRIOR] = {99033, 99035},
		[CLASS_HUNTER] = {99081},
		[CLASS_SHAMAN] = {98984, 98990, 99090},
		[CLASS_MONK] = {99050, 99070, 99074},
	},

	[99677] = { -- Chest of the Cursed Vanquisher (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_ROGUE] = {99006},
		[CLASS_DEATHKNIGHT] = {99060, 99066},
		[CLASS_MAGE] = {99078},
		[CLASS_DRUID] = {98997, 98999, 99015, 99041},
	},

	[99678] = { -- Chest of the Cursed Conqueror (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_PALADIN] = {99003, 99031, 99052},
		[CLASS_PRIEST] = {99004, 99017},
		[CLASS_WARLOCK] = {99056},
	},

	[99679] = { -- Chest of the Cursed Protector (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_WARRIOR] = {99037, 99047},
		[CLASS_HUNTER] = {99085},
		[CLASS_SHAMAN] = {98992, 99011, 99087},
		[CLASS_MONK] = {99061, 99063, 99071},
	},

	[99680] = { -- Gauntlets of the Cursed Vanquisher (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_ROGUE] = {99007},
		[CLASS_DEATHKNIGHT] = {99048, 99067},
		[CLASS_MAGE] = {99083},
		[CLASS_DRUID] = {98994, 99000, 99012, 99042},
	},

	[99681] = { -- Gauntlets of the Cursed Conqueror (Raid Finder)
		["REDEEM"] = REDEEM_TIER_16_LFR,
		[CLASS_PALADIN] = {98982, 99002, 99028},
		[CLASS_PRIEST] = {99019, 99023},
		[CLASS_WARLOCK] = {99053},
	},

	[99682] = { -- Gauntlets of the Cursed Vanquisher (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_ROGUE] = {99113},
		[CLASS_DEATHKNIGHT] = {99189, 99193},
		[CLASS_MAGE] = {99160},
		[CLASS_DRUID] = {99163, 99174, 99181, 99185},
	},

	[99683] = { -- Helm of the Cursed Vanquisher (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_ROGUE] = {99114},
		[CLASS_DEATHKNIGHT] = {99190, 99194},
		[CLASS_MAGE] = {99161},
		[CLASS_DRUID] = {99164, 99175, 99178, 99182},
	},

	[99684] = { -- Leggings of the Cursed Vanquisher (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_ROGUE] = {99115},
		[CLASS_DEATHKNIGHT] = {99186, 99191},
		[CLASS_MAGE] = {99162},
		[CLASS_DRUID] = {99165, 99171, 99176, 99183},
	},

	[99685] = { -- Shoulders of the Cursed Vanquisher (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_ROGUE] = {99116},
		[CLASS_DEATHKNIGHT] = {99179, 99187},
		[CLASS_MAGE] = {99153},
		[CLASS_DRUID] = {99166, 99169, 99173, 99184},
	},

	[99686] = { -- Chest of the Cursed Conqueror (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_PALADIN] = {99126, 99133, 99136},
		[CLASS_PRIEST] = {99110, 99119},
		[CLASS_WARLOCK] = {99204},
	},

	[99687] = { -- Gauntlets of the Cursed Conqueror (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_PALADIN] = {99127, 99134, 99137},
		[CLASS_PRIEST] = {99121, 99131},
		[CLASS_WARLOCK] = {99096},
	},

	[99688] = { -- Leggings of the Cursed Conqueror (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_PALADIN] = {99124, 99129, 99139},
		[CLASS_PRIEST] = {99118, 99123},
		[CLASS_WARLOCK] = {99098},
	},

	[99689] = { -- Helm of the Cursed Conqueror (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_PALADIN] = {99128, 99135, 99138},
		[CLASS_PRIEST] = {99117, 99122},
		[CLASS_WARLOCK] = {99097},
	},

	[99690] = { -- Shoulders of the Cursed Conqueror (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_PALADIN] = {99125, 99130, 99132},
		[CLASS_PRIEST] = {99111, 99120},
		[CLASS_WARLOCK] = {99205},
	},

	[99691] = { -- Chest of the Cursed Protector (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_WARRIOR] = {99197, 99201},
		[CLASS_HUNTER] = {99167},
		[CLASS_SHAMAN] = {99101, 99106, 99107},
		[CLASS_MONK] = {99140, 99150, 99154},
	},

	[99692] = { -- Gauntlets of the Cursed Protector (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_WARRIOR] = {99198, 99202},
		[CLASS_HUNTER] = {99168},
		[CLASS_SHAMAN] = {99092, 99102, 99108},
		[CLASS_MONK] = {99141, 99147, 99155},
	},

	[99693] = { -- Leggings of the Cursed Protector (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_WARRIOR] = {99195, 99199},
		[CLASS_HUNTER] = {99158},
		[CLASS_SHAMAN] = {99094, 99099, 99104},
		[CLASS_MONK] = {99143, 99145, 99149},
	},

	[99694] = { -- Helm of the Cursed Protector (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_WARRIOR] = {99203, 99206},
		[CLASS_HUNTER] = {99157},
		[CLASS_SHAMAN] = {99093, 99103, 99109},
		[CLASS_MONK] = {99142, 99148, 99156},
	},

	[99695] = { -- Shoulders of the Cursed Protector (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_WARRIOR] = {99196, 99200},
		[CLASS_HUNTER] = {99159},
		[CLASS_SHAMAN] = {99095, 99100, 99105},
		[CLASS_MONK] = {99144, 99146, 99151},
	},

	[99696] = { -- Chest of the Cursed Vanquisher (Heroic)
		["REDEEM"] = REDEEM_TIER_16_HEROIC,
		[CLASS_ROGUE] = {99112},
		[CLASS_DEATHKNIGHT] = {99188, 99192},
		[CLASS_MAGE] = {99152},
		[CLASS_DRUID] = {99170, 99172, 99177, 99180},
	},

	[99712] = { -- Leggings of the Cursed Conqueror (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_PALADIN] = {99371, 99372, 99377},
		[CLASS_PRIEST] = {99361, 99367},
		[CLASS_WARLOCK] = {99426},
	},

	[99713] = { -- Leggings of the Cursed Protector (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_WARRIOR] = {99410, 99413},
		[CLASS_HUNTER] = {99403},
		[CLASS_SHAMAN] = {99333, 99342, 99354},
		[CLASS_MONK] = {99385, 99390, 99394},
	},

	[99714] = { -- Chest of the Cursed Vanquisher (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_ROGUE] = {99356},
		[CLASS_DEATHKNIGHT] = {99330, 99335},
		[CLASS_MAGE] = {99400},
		[CLASS_DRUID] = {99326, 99419, 99427, 99430},
	},

	[99715] = { -- Chest of the Cursed Conqueror (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_PALADIN] = {99368, 99374, 99387},
		[CLASS_PRIEST] = {99357, 99362},
		[CLASS_WARLOCK] = {99416},
	},

	[99716] = { -- Chest of the Cursed Protector (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_WARRIOR] = {99411, 99415},
		[CLASS_HUNTER] = {99405},
		[CLASS_SHAMAN] = {99344, 99347, 99351},
		[CLASS_MONK] = {99382, 99391, 99396},
	},

	[99717] = { -- Shoulders of the Cursed Vanquisher (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_ROGUE] = {99350},
		[CLASS_DEATHKNIGHT] = {99325, 99339},
		[CLASS_MAGE] = {99401},
		[CLASS_DRUID] = {99322, 99423, 99428, 99431},
	},

	[99718] = { -- Shoulders of the Cursed Conqueror (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_PALADIN] = {99364, 99373, 99378},
		[CLASS_PRIEST] = {99358, 99363},
		[CLASS_WARLOCK] = {99417},
	},

	[99719] = { -- Shoulders of the Cursed Protector (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_WARRIOR] = {99407, 99414},
		[CLASS_HUNTER] = {99404},
		[CLASS_SHAMAN] = {99334, 99343, 99346},
		[CLASS_MONK] = {99381, 99386, 99395},
	},

	[99720] = { -- Gauntlets of the Cursed Vanquisher (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_ROGUE] = {99355},
		[CLASS_DEATHKNIGHT] = {99331, 99336},
		[CLASS_MAGE] = {99397},
		[CLASS_DRUID] = {99327, 99420, 99432, 99435},
	},

	[99721] = { -- Gauntlets of the Cursed Conqueror (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_PALADIN] = {99369, 99375, 99380},
		[CLASS_PRIEST] = {99359, 99365},
		[CLASS_WARLOCK] = {99424},
	},

	[99722] = { -- Gauntlets of the Cursed Protector (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_WARRIOR] = {99408, 99412},
		[CLASS_HUNTER] = {99406},
		[CLASS_SHAMAN] = {99340, 99345, 99352},
		[CLASS_MONK] = {99383, 99388, 99392},
	},

	[99723] = { -- Helm of the Cursed Vanquisher (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_ROGUE] = {99348},
		[CLASS_DEATHKNIGHT] = {99323, 99337},
		[CLASS_MAGE] = {99398},
		[CLASS_DRUID] = {99328, 99421, 99433, 99436},
	},

	[99724] = { -- Helm of the Cursed Conqueror (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_PALADIN] = {99370, 99376, 99379},
		[CLASS_PRIEST] = {99360, 99366},
		[CLASS_WARLOCK] = {99425},
	},

	[99725] = { -- Helm of the Cursed Protector (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_WARRIOR] = {99409, 99418},
		[CLASS_HUNTER] = {99402},
		[CLASS_SHAMAN] = {99332, 99341, 99353},
		[CLASS_MONK] = {99393, 99384, 99389},
	},

	[99726] = { -- Leggings of the Cursed Vanquisher (Mythic)
		["REDEEM"] = REDEEM_TIER_16_MYTHIC,
		[CLASS_ROGUE] = {99349},
		[CLASS_DEATHKNIGHT] = {99324, 99338},
		[CLASS_MAGE] = {99399},
		[CLASS_DRUID] = {99329, 99422, 99429, 99434},
	},

	[99742] = { -- Chest of the Cursed Vanquisher
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_ROGUE] = {99629},
		[CLASS_DEATHKNIGHT] = {99608, 99640},
		[CLASS_MAGE] = {99658},
		[CLASS_DRUID] = {99582, 99620, 99622, 99632},
	},

	[99743] = { -- Chest of the Cursed Conqueror
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_PALADIN] = {99566, 99598, 99626},
		[CLASS_PRIEST] = {99584, 99627},
		[CLASS_WARLOCK] = {99570},
	},

	[99744] = { -- Chest of the Cursed Protector
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_WARRIOR] = {99562, 99603},
		[CLASS_HUNTER] = {99577},
		[CLASS_SHAMAN] = {99636, 99579, 99615},
		[CLASS_MONK] = {99641, 99643, 99555},
	},

	[99745] = { -- Gauntlets of the Cursed Vanquisher
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_ROGUE] = {99630},
		[CLASS_DEATHKNIGHT] = {99604, 99609},
		[CLASS_MAGE] = {99575},
		[CLASS_DRUID] = {99623, 99633, 99637, 99617},
	},

	[99746] = { -- Gauntlets of the Cursed Conqueror
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_PALADIN] = {99595, 99625, 99648},
		[CLASS_PRIEST] = {99586, 99590},
		[CLASS_WARLOCK] = {99567},
	},

	[99747] = { -- Gauntlets of the Cursed Protector
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_WARRIOR] = {99559, 99563},
		[CLASS_HUNTER] = {99578},
		[CLASS_SHAMAN] = {99616, 99580, 99611},
		[CLASS_MONK] = {99644, 99552, 99556},
	},

	[99748] = { -- Helm of the Cursed Vanquisher
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_ROGUE] = {99631},
		[CLASS_DEATHKNIGHT] = {99571, 99605},
		[CLASS_MAGE] = {99576},
		[CLASS_DRUID] = {99599, 99618, 99624, 99638},
	},

	[99749] = { -- Helm of the Cursed Conqueror
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_PALADIN] = {99596, 99651, 99665},
		[CLASS_PRIEST] = {99587, 99591},
		[CLASS_WARLOCK] = {99568},
	},

	[99750] = { -- Helm of the Cursed Protector
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_WARRIOR] = {99557, 99602},
		[CLASS_HUNTER] = {99660},
		[CLASS_SHAMAN] = {99612, 99645, 99649},
		[CLASS_MONK] = {99553, 99607, 99653},
	},

	[99751] = { -- Leggings of the Cursed Vanquisher
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_ROGUE] = {99634},
		[CLASS_DEATHKNIGHT] = {99564, 99572},
		[CLASS_MAGE] = {99657},
		[CLASS_DRUID] = {99581, 99600, 99610, 99619},
	},

	[99752] = { -- Leggings of the Cursed Conqueror
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_PALADIN] = {99593, 99661, 99666},
		[CLASS_PRIEST] = {99588, 99592},
		[CLASS_WARLOCK] = {99569},
	},

	[99753] = { -- Leggings of the Cursed Protector
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_WARRIOR] = {99558, 99560},
		[CLASS_HUNTER] = {99573},
		[CLASS_SHAMAN] = {99613, 99646, 99650},
		[CLASS_MONK] = {99554, 99606, 99654},
	},

	[99754] = { -- Shoulders of the Cursed Vanquisher
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_ROGUE] = {99635},
		[CLASS_DEATHKNIGHT] = {99639, 99652},
		[CLASS_MAGE] = {99659},
		[CLASS_DRUID] = {99664, 99583, 99589, 99621},
	},

	[99755] = { -- Shoulders of the Cursed Conqueror
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_PALADIN] = {99594, 99656, 99662},
		[CLASS_PRIEST] = {99585, 99628},
		[CLASS_WARLOCK] = {99601},
	},

	[99756] = { -- Shoulders of the Cursed Protector
		["REDEEM"] = REDEEM_TIER_16_NORMAL,
		[CLASS_WARRIOR] = {99561, 99597},
		[CLASS_HUNTER] = {99574},
		[CLASS_SHAMAN] = {99614, 99647, 99663},
		[CLASS_MONK] = {99565, 99642, 99655},
	},

	[124550] = { -- Baleful Bracers
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124566},
		[CLASS_PALADIN] = {124566},
		[CLASS_DEATHKNIGHT] = {124566},
		[CLASS_HUNTER] = {124565},
		[CLASS_SHAMAN] = {124565},
		[CLASS_MAGE] = {124563},
		[CLASS_PRIEST] = {124563},
		[CLASS_WARLOCK] = {124563},
		[CLASS_DRUID] = {124564},
		[CLASS_DEAMONHUNTER] = {124564},
		[CLASS_MONK] = {124564},
		[CLASS_ROGUE] = {124564},
	},

	[124551] = { -- Baleful Tunic
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124569},
		[CLASS_PALADIN] = {124569},
		[CLASS_DEATHKNIGHT] = {124569},
		[CLASS_HUNTER] = {124568},
		[CLASS_SHAMAN] = {124568},
		[CLASS_MAGE] = {124570},
		[CLASS_PRIEST] = {124570},
		[CLASS_WARLOCK] = {124570},
		[CLASS_DRUID] = {124567},
		[CLASS_DEAMONHUNTER] = {124567},
		[CLASS_MONK] = {124567},
		[CLASS_ROGUE] = {124567},
	},

	[124552] = { -- Baleful Treads
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124574},
		[CLASS_PALADIN] = {124574},
		[CLASS_DEATHKNIGHT] = {124574},
		[CLASS_HUNTER] = {124573},
		[CLASS_SHAMAN] = {124573},
		[CLASS_MAGE] = {124571},
		[CLASS_PRIEST] = {124571},
		[CLASS_WARLOCK] = {124571},
		[CLASS_DRUID] = {124572},
		[CLASS_DEAMONHUNTER] = {124572},
		[CLASS_MONK] = {124572},
		[CLASS_ROGUE] = {124572},
	},

	[124553] = { -- Baleful Gauntlets
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124578},
		[CLASS_PALADIN] = {124578},
		[CLASS_DEATHKNIGHT] = {124578},
		[CLASS_HUNTER] = {124577},
		[CLASS_SHAMAN] = {124577},
		[CLASS_MAGE] = {124575},
		[CLASS_PRIEST] = {124575},
		[CLASS_WARLOCK] = {124575},
		[CLASS_DRUID] = {124576},
		[CLASS_DEAMONHUNTER] = {124576},
		[CLASS_MONK] = {124576},
		[CLASS_ROGUE] = {124576},
	},

	[124554] = { -- Baleful Hood
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124582},
		[CLASS_PALADIN] = {124582},
		[CLASS_DEATHKNIGHT] = {124582},
		[CLASS_HUNTER] = {124581},
		[CLASS_SHAMAN] = {124581},
		[CLASS_MAGE] = {124579},
		[CLASS_PRIEST] = {124579},
		[CLASS_WARLOCK] = {124579},
		[CLASS_DRUID] = {124580},
		[CLASS_DEAMONHUNTER] = {124580},
		[CLASS_MONK] = {124580},
		[CLASS_ROGUE] = {124580},
	},

	[124555] = { -- Baleful Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124586},
		[CLASS_PALADIN] = {124586},
		[CLASS_DEATHKNIGHT] = {124586},
		[CLASS_HUNTER] = {124585},
		[CLASS_SHAMAN] = {124585},
		[CLASS_MAGE] = {124583},
		[CLASS_PRIEST] = {124583},
		[CLASS_WARLOCK] = {124583},
		[CLASS_DRUID] = {124584},
		[CLASS_DEAMONHUNTER] = {124584},
		[CLASS_MONK] = {124584},
		[CLASS_ROGUE] = {124584},
	},

	[124556] = { -- Baleful Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124590},
		[CLASS_PALADIN] = {124590},
		[CLASS_DEATHKNIGHT] = {124590},
		[CLASS_HUNTER] = {124589},
		[CLASS_SHAMAN] = {124589},
		[CLASS_MAGE] = {124587},
		[CLASS_PRIEST] = {124587},
		[CLASS_WARLOCK] = {124587},
		[CLASS_DRUID] = {124588},
		[CLASS_DEAMONHUNTER] = {124588},
		[CLASS_MONK] = {124588},
		[CLASS_ROGUE] = {124588},
	},

	[124557] = { -- Baleful Girdle
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124594},
		[CLASS_PALADIN] = {124594},
		[CLASS_DEATHKNIGHT] = {124594},
		[CLASS_HUNTER] = {124593},
		[CLASS_SHAMAN] = {124593},
		[CLASS_MAGE] = {124591},
		[CLASS_PRIEST] = {124591},
		[CLASS_WARLOCK] = {124591},
		[CLASS_DRUID] = {124592},
		[CLASS_DEAMONHUNTER] = {124592},
		[CLASS_MONK] = {124592},
		[CLASS_ROGUE] = {124592},
	},

	[127777] = { -- Baleful Cloth Bracers
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {124563},
		[CLASS_PRIEST] = {124563},
		[CLASS_WARLOCK] = {124563},
	},

	[127778] = { -- Baleful Cloth Robe
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {124570},
		[CLASS_PRIEST] = {124570},
		[CLASS_WARLOCK] = {124570},
	},

	[127779] = { -- Baleful Cloth Treads
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {124571},
		[CLASS_PRIEST] = {124571},
		[CLASS_WARLOCK] = {124571},
	},

	[127780] = { -- Baleful Cloth Gauntlets
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {124575},
		[CLASS_PRIEST] = {124575},
		[CLASS_WARLOCK] = {124575},
	},

	[127781] = { -- Baleful Cloth Hood
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {124579},
		[CLASS_PRIEST] = {124579},
		[CLASS_WARLOCK] = {124579},
	},

	[127782] = { -- Baleful Cloth Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {124583},
		[CLASS_PRIEST] = {124583},
		[CLASS_WARLOCK] = {124583},
	},

	[127783] = { -- Baleful Cloth Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {124587},
		[CLASS_PRIEST] = {124587},
		[CLASS_WARLOCK] = {124587},
	},

	[127784] = { -- Baleful Cloth Girdle
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {124591},
		[CLASS_PRIEST] = {124591},
		[CLASS_WARLOCK] = {124591},
	},

	[127790] = { -- Baleful Leather Bracers
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {124564},
		[CLASS_DEAMONHUNTER] = {124564},
		[CLASS_MONK] = {124564},
		[CLASS_ROGUE] = {124564},
	},

	[127791] = { -- Baleful Leather Tunic
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {124567},
		[CLASS_DEAMONHUNTER] = {124567},
		[CLASS_MONK] = {124567},
		[CLASS_ROGUE] = {124567},
	},

	[127792] = { -- Baleful Leather Treads
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {124572},
		[CLASS_DEAMONHUNTER] = {124572},
		[CLASS_MONK] = {124572},
		[CLASS_ROGUE] = {124572},
	},

	[127793] = { -- Baleful Leather Gauntlets
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {124576},
		[CLASS_DEAMONHUNTER] = {124576},
		[CLASS_MONK] = {124576},
		[CLASS_ROGUE] = {124576},
	},

	[127794] = { -- Baleful Leather Hood
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {124580},
		[CLASS_DEAMONHUNTER] = {124580},
		[CLASS_MONK] = {124580},
		[CLASS_ROGUE] = {124580},
	},

	[127795] = { -- Baleful Leather Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {124584},
		[CLASS_DEAMONHUNTER] = {124584},
		[CLASS_MONK] = {124584},
		[CLASS_ROGUE] = {124584},
	},

	[127796] = { -- Baleful Leather Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {124588},
		[CLASS_DEAMONHUNTER] = {124588},
		[CLASS_MONK] = {124588},
		[CLASS_ROGUE] = {124588},
	},

	[127797] = { -- Baleful Leather Girdle
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {124592},
		[CLASS_DEAMONHUNTER] = {124592},
		[CLASS_MONK] = {124592},
		[CLASS_ROGUE] = {124592},
	},

	[127803] = { -- Baleful Mail Bracers
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {124565},
		[CLASS_SHAMAN] = {124565},
	},

	[127804] = { -- Baleful Mail Robe
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {124568},
		[CLASS_SHAMAN] = {124568},
	},

	[127805] = { -- Baleful Mail Treads
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {124573},
		[CLASS_SHAMAN] = {124573},
	},

	[127806] = { -- Baleful Mail Gauntlets
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {124577},
		[CLASS_SHAMAN] = {124577},
	},

	[127807] = { -- Baleful Mail Hood
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {124581},
		[CLASS_SHAMAN] = {124581},
	},

	[127808] = { -- Baleful Mail Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {124585},
		[CLASS_SHAMAN] = {124585},
	},

	[127809] = { -- Baleful Mail Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {124589},
		[CLASS_SHAMAN] = {124589},
	},

	[127810] = { -- Baleful Mail Girdle
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {124593},
		[CLASS_SHAMAN] = {124593},
	},

	[127816] = { -- Baleful Plate Bracers
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124566},
		[CLASS_PALADIN] = {124566},
		[CLASS_DEATHKNIGHT] = {124566},
	},

	[127817] = { -- Baleful Plate Chest
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124569},
		[CLASS_PALADIN] = {124569},
		[CLASS_DEATHKNIGHT] = {124569},
	},

	[127818] = { -- Baleful Plate Treads
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124574},
		[CLASS_PALADIN] = {124574},
		[CLASS_DEATHKNIGHT] = {124574},
	},

	[127819] = { -- Baleful Plate Gauntlets
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124578},
		[CLASS_PALADIN] = {124578},
		[CLASS_DEATHKNIGHT] = {124578},
	},

	[127820] = { -- Baleful Plate Hood
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124582},
		[CLASS_PALADIN] = {124582},
		[CLASS_DEATHKNIGHT] = {124582},
	},

	[127821] = { -- Baleful Plate Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124586},
		[CLASS_PALADIN] = {124586},
		[CLASS_DEATHKNIGHT] = {124586},
	},

	[127822] = { -- Baleful Plate Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124590},
		[CLASS_PALADIN] = {124590},
		[CLASS_DEATHKNIGHT] = {124590},
	},

	[127823] = { -- Baleful Plate Girdle
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124594},
		[CLASS_PALADIN] = {124594},
		[CLASS_DEATHKNIGHT] = {124594},
	},

	[128348] = { -- Baleful Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124590},
		[CLASS_PALADIN] = {124590},
		[CLASS_DEATHKNIGHT] = {124590},
		[CLASS_HUNTER] = {124589},
		[CLASS_SHAMAN] = {124589},
		[CLASS_MAGE] = {124587},
		[CLASS_PRIEST] = {124587},
		[CLASS_WARLOCK] = {124587},
		[CLASS_DRUID] = {124588},
		[CLASS_DEAMONHUNTER] = {124588},
		[CLASS_MONK] = {124588},
		[CLASS_ROGUE] = {124588},
	},

	[127800] = { -- Baleful Cloak
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_PALADIN] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_DEATHKNIGHT] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_HUNTER] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_SHAMAN] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_MAGE] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_PRIEST] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_WARLOCK] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_DRUID] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_DEAMONHUNTER] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_MONK] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_ROGUE] = {124613, 124616, 124614, 124615, 124618, 124617},
	},

	[124560] = { -- Baleful Cloak
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_PALADIN] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_DEATHKNIGHT] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_HUNTER] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_SHAMAN] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_MAGE] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_PRIEST] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_WARLOCK] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_DRUID] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_DEAMONHUNTER] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_MONK] = {124613, 124616, 124614, 124615, 124618, 124617},
		[CLASS_ROGUE] = {124613, 124616, 124614, 124615, 124618, 124617},
	},

	[124562] = { -- Baleful Armament
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {BALEFUL_WEP_STAFF, BALEFUL_WEP_2H_SWORD, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_GUN, BALEFUL_WEP_DAGGER, BALEFUL_WEP_POLEARM, BALEFUL_WEP_1H_AXE},
		[CLASS_PALADIN] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_2H_SWORD, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_POLEARM},
		[CLASS_DEATHKNIGHT] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_2H_SWORD, BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_POLEARM},
		[CLASS_HUNTER] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_2H_SWORD, BALEFUL_WEP_POLEARM, BALEFUL_WEP_STAFF, BALEFUL_WEP_DAGGER, BALEFUL_WEP_GUN},
		[CLASS_SHAMAN] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_STAFF, BALEFUL_WEP_DAGGER},
		[CLASS_MAGE] = {BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_DAGGER},
		[CLASS_PRIEST] = {BALEFUL_WEP_1H_MACE, BALEFUL_WEP_STAFF, BALEFUL_WEP_DAGGER},
		[CLASS_WARLOCK] = {BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_STAFF, BALEFUL_WEP_DAGGER},
		[CLASS_DRUID] = {BALEFUL_WEP_1H_MACE, BALEFUL_WEP_POLEARM, BALEFUL_WEP_STAFF, BALEFUL_WEP_DAGGER},
		[CLASS_DEAMONHUNTER] = {BALEFUL_WEP_DAGGER, BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_1H_SWORD}, -- ?
		[CLASS_MONK] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_POLEARM, BALEFUL_WEP_STAFF},
		[CLASS_ROGUE] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_DAGGER, BALEFUL_WEP_GUN},
	},

	[102263] = { -- Timeless Plate Chestpiece
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {101789, 101851, 101819},
		[CLASS_PALADIN] = {101789, 101851, 101819},
		[CLASS_DEATHKNIGHT] = {101789, 101851, 101819},
	},

	[102264] = { -- Timeless Plate Boots
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {101797, 101859, 101825},
		[CLASS_PALADIN] = {101797, 101859, 101825},
		[CLASS_DEATHKNIGHT] = {101797, 101859, 101825},
	},

	[102265] = { -- Timeless Plate Gloves
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {101791, 101853, 101820},
		[CLASS_PALADIN] = {101791, 101853, 101820},
		[CLASS_DEATHKNIGHT] = {101791, 101853, 101820},
	},

	[102266] = { -- Timeless Plate Helm
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {101793, 101855, 101822},
		[CLASS_PALADIN] = {101793, 101855, 101822},
		[CLASS_DEATHKNIGHT] = {101793, 101855, 101822},
	},

	[102267] = { -- Timeless Plate Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {101794, 101856, 101823},
		[CLASS_PALADIN] = {101794, 101856, 101823},
		[CLASS_DEATHKNIGHT] = {101794, 101856, 101823},
	},

	[102268] = { -- Timeless Plate Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {101796, 101858, 101824},
		[CLASS_PALADIN] = {101796, 101858, 101824},
		[CLASS_DEATHKNIGHT] = {101796, 101858, 101824},
	},

	[102269] = { -- Timeless Plate Belt
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {101792, 101854, 101821},
		[CLASS_PALADIN] = {101792, 101854, 101821},
		[CLASS_DEATHKNIGHT] = {101792, 101854, 101821},
	},

	[102270] = { -- Timeless Mail Chestpiece
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {101845, 101837},
		[CLASS_SHAMAN] = {101845, 101837},
	},

	[102271] = { -- Timeless Mail Boots
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {101841, 101833},
		[CLASS_SHAMAN] = {101841, 101833},
	},

	[102272] = { -- Timeless Mail Gloves
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {101840, 101832},
		[CLASS_SHAMAN] = {101840, 101832},
	},

	[102273] = { -- Timeless Mail Helm
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {101842, 101834},
		[CLASS_SHAMAN] = {101842, 101834},
	},

	[102274] = { -- Timeless Mail Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {101843, 101835},
		[CLASS_SHAMAN] = {101843, 101835},
	},

	[102275] = { -- Timeless Mail Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {101844, 101836},
		[CLASS_SHAMAN] = {101844, 101836},
	},

	[102276] = { -- Timeless Mail Belt
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {101838, 101830},
		[CLASS_SHAMAN] = {101838, 101830},
	},

	[102277] = { -- Timeless Leather Chestpiece
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {101867, 101786},
		[CLASS_DEAMONHUNTER] = {101867, 101786},
		[CLASS_MONK] = {101867, 101786},
		[CLASS_ROGUE] = {101867, 101786},
	},

	[102278] = { -- Timeless Leather Boots
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {101863, 101782},
		[CLASS_DEAMONHUNTER] = {101863, 101782},
		[CLASS_MONK] = {101863, 101782},
		[CLASS_ROGUE] = {101863, 101782},
	},

	[102279] = { -- Timeless Leather Gloves
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {101865, 101784},
		[CLASS_DEAMONHUNTER] = {101865, 101784},
		[CLASS_MONK] = {101865, 101784},
		[CLASS_ROGUE] = {101865, 101784},
	},

	[102280] = { -- Timeless Leather Helm
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {101866, 101785},
		[CLASS_DEAMONHUNTER] = {101866, 101785},
		[CLASS_MONK] = {101866, 101785},
		[CLASS_ROGUE] = {101866, 101785},
	},

	[102281] = { -- Timeless Leather Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {101864, 101783},
		[CLASS_DEAMONHUNTER] = {101864, 101783},
		[CLASS_MONK] = {101864, 101783},
		[CLASS_ROGUE] = {101864, 101783},
	},

	[102282] = { -- Timeless Leather Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {101868, 101787},
		[CLASS_DEAMONHUNTER] = {101868, 101787},
		[CLASS_MONK] = {101868, 101787},
		[CLASS_ROGUE] = {101868, 101787},
	},

	[102283] = { -- Timeless Leather Belt
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {101869, 101788},
		[CLASS_DEAMONHUNTER] = {101869, 101788},
		[CLASS_MONK] = {101869, 101788},
		[CLASS_ROGUE] = {101869, 101788},
	},

	[102284] = { -- Timeless Cloth Robes
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {101806, 101815},
		[CLASS_PRIEST] = {101806, 101815},
		[CLASS_WARLOCK] = {101806, 101815},
	},

	[102285] = { -- Timeless Cloth Boots
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {101807, 101816},
		[CLASS_PRIEST] = {101807, 101816},
		[CLASS_WARLOCK] = {101807, 101816},
	},

	[102286] = { -- Timeless Cloth Gloves
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {101803, 101813},
		[CLASS_PRIEST] = {101803, 101813},
		[CLASS_WARLOCK] = {101803, 101813},
	},

	[102287] = { -- Timeless Cloth Helm
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {101802, 101812},
		[CLASS_PRIEST] = {101802, 101812},
		[CLASS_WARLOCK] = {101802, 101812},
	},

	[102288] = { -- Timeless Cloth Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {101804, 101814},
		[CLASS_PRIEST] = {101804, 101814},
		[CLASS_WARLOCK] = {101804, 101814},
	},

	[102289] = { -- Timeless Cloth Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {101808, 101817},
		[CLASS_PRIEST] = {101808, 101817},
		[CLASS_WARLOCK] = {101808, 101817},
	},

	[102290] = { -- Timeless Cloth Belt
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {101801, 101811},
		[CLASS_PRIEST] = {101801, 101811},
		[CLASS_WARLOCK] = {101801, 101811},
	},

	[102320] = { -- Timeless Plate Bracers
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {101799, 101861, 101826},
		[CLASS_PALADIN] = {101799, 101861, 101826},
		[CLASS_DEATHKNIGHT] = {101799, 101861, 101826},
	},

	[102321] = { -- Timeless Cloth Bracers
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {101810, 101818},
		[CLASS_PRIEST] = {101810, 101818},
		[CLASS_WARLOCK] = {101810, 101818},
	},

	[102322] = { -- Timeless Leather Bracers
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {101862, 101781},
		[CLASS_DEAMONHUNTER] = {101862, 101781},
		[CLASS_MONK] = {101862, 101781},
		[CLASS_ROGUE] = {101862, 101781},
	},

	[102323] = { -- Timeless Mail Bracers
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {101839, 101831},
		[CLASS_SHAMAN] = {101839, 101831},
	},

	[102318] = { -- Timeless Cloak
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {101800, 101790, 101852, 101848, 101828},
		[CLASS_PALADIN] = {101800, 101790, 101852, 101848, 101828},
		[CLASS_DEATHKNIGHT] = {101800, 101790, 101852, 101848, 101828},
		[CLASS_HUNTER] = {101800, 101790, 101852, 101848, 101828},
		[CLASS_SHAMAN] = {101800, 101790, 101852, 101848, 101828},
		[CLASS_MAGE] = {101800, 101790, 101852, 101848, 101828},
		[CLASS_PRIEST] = {101800, 101790, 101852, 101848, 101828},
		[CLASS_WARLOCK] = {101800, 101790, 101852, 101848, 101828},
		[CLASS_DRUID] = {101800, 101790, 101852, 101848, 101828},
		[CLASS_DEAMONHUNTER] = {101800, 101790, 101852, 101848, 101828},
		[CLASS_MONK] = {101800, 101790, 101852, 101848, 101828},
		[CLASS_ROGUE] = {101800, 101790, 101852, 101848, 101828},
	},

	[104009] = { -- Timeless Plate Armor Cache
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {101799, 101861, 101826, 101789, 101851, 101819, 101797, 101859, 101825, 101791, 101853, 101820, 101793, 101855, 101822, 101794, 101856, 101823, 101796, 101858, 101824, 101792, 101854, 101821},
		[CLASS_DEATHKNIGHT] = {101799, 101861, 101826, 101789, 101851, 101819, 101797, 101859, 101825, 101791, 101853, 101820, 101793, 101855, 101822, 101794, 101856, 101823, 101796, 101858, 101824, 101792, 101854, 101821},
		[CLASS_PALADIN] = {101799, 101861, 101826, 101789, 101851, 101819, 101797, 101859, 101825, 101791, 101853, 101820, 101793, 101855, 101822, 101794, 101856, 101823, 101796, 101858, 101824, 101792, 101854, 101821},
	},

	[104013] = { -- Timeless Cloth Armor Cache 
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = {101806, 101815, 101807, 101816, 101803, 101813, 101802, 101812, 101804, 101814, 101808, 101817, 101801, 101811, 101810, 101818},
		[CLASS_PRIEST] = {101806, 101815, 101807, 101816, 101803, 101813, 101802, 101812, 101804, 101814, 101808, 101817, 101801, 101811, 101810, 101818},
		[CLASS_WARLOCK] = {101806, 101815, 101807, 101816, 101803, 101813, 101802, 101812, 101804, 101814, 101808, 101817, 101801, 101811, 101810, 101818},
	},

	[104010] = { -- Timeless Mail Armor Cache
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = {101845, 101837, 101841, 101833, 101840, 101832, 101842, 101834, 101843, 101835, 101844, 101836, 101838, 101830, 101839, 101831},
		[CLASS_SHAMAN] = {101845, 101837, 101841, 101833, 101840, 101832, 101842, 101834, 101843, 101835, 101844, 101836, 101838, 101830, 101839, 101831},
	},

	[104012] = { -- Timeless Leather Armor Cache
		["DEPENDANT_WARNING"] = true,
		[CLASS_ROGUE] = {101862, 101781, 101869, 101788, 101868, 101787, 101864, 101783, 101866, 101785, 101865, 101784, 101863, 101782, 101867, 101786},
		[CLASS_DRUID] = {101862, 101781, 101869, 101788, 101868, 101787, 101864, 101783, 101866, 101785, 101865, 101784, 101863, 101782, 101867, 101786},
		[CLASS_MONK] = {101862, 101781, 101869, 101788, 101868, 101787, 101864, 101783, 101866, 101785, 101865, 101784, 101863, 101782, 101867, 101786},
		[CLASS_DEAMONHUNTER] = {101862, 101781, 101869, 101788, 101868, 101787, 101864, 101783, 101866, 101785, 101865, 101784, 101863, 101782, 101867, 101786},
	},
};

t.HORDE_ONLY_DATA = {
	[47242] = { -- Trophy of the Crusade
		["REDEEM"] = REDEEM_TOC,
		[CLASS_WARRIOR] = {48465, 48463, 48391, 48461, 48392, 48393, 48462, 48464, 48394, 48395},
		[CLASS_PALADIN] = {48626, 48622, 48657, 48658, 48623, 48659, 48593, 48594, 48592, 48591, 48590, 48660, 48624, 48661, 48625},
		[CLASS_HUNTER] = {48271, 48272, 48273, 48274, 48270},
		[CLASS_ROGUE] = {48240, 48238, 48241, 48242, 48239},
		[CLASS_PRIEST] = {48094, 48062, 48096, 48063, 48064, 48095, 48065, 48066, 48092, 48093},
		[CLASS_DEATHKNIGHT] = {48499, 48500, 48553, 48496, 48554, 48555, 48497, 48556, 48557, 48498},
		[CLASS_SHAMAN] = {48363, 48334, 48364, 48304, 48332, 48365, 48335, 48331, 48300, 48361, 48301, 48333, 48302, 48362, 48303},
		[CLASS_MAGE] = {47771, 47770, 47769, 47772, 47768},
		[CLASS_WARLOCK] = {47807, 47803, 47804, 47805, 47806},
		[CLASS_DRUID] = {48196, 48178, 48149, 48179, 48180, 48150, 48181, 48197, 48182, 48151, 48193, 48148, 48194, 48152, 48195},
	},
};

t.ALLIANCE_ONLY_DATA = {
	[47242] = { -- Trophy of the Crusade
		["REDEEM"] = REDEEM_TOC,
		[CLASS_WARRIOR] = {48380, 48430, 48446, 48450, 48452, 48454, 48376, 48377, 48378, 48379},
		[CLASS_PALADIN] = {48575, 48576, 48577, 48578, 48579, 48607, 48608, 48609, 48610, 48611, 48637, 48638, 48639, 48640, 48641},
		[CLASS_HUNTER] = {48255, 48256, 48257, 48258, 48259},
		[CLASS_ROGUE] = {48223, 48224, 48225, 48226, 48227},
		[CLASS_PRIEST] = {48078, 48079, 48080, 48081, 47983, 47984, 47985, 47986, 47987, 48077},
		[CLASS_DEATHKNIGHT] = {48481, 48482, 48483, 48484, 48485, 48538, 48539, 48540, 48541, 48542},
		[CLASS_SHAMAN] = {48288, 48289, 48316, 48317, 48318, 48319, 48320, 48346, 48347, 48348, 48349, 48350, 48285, 48286, 48287},
		[CLASS_MAGE] = {47753, 47754, 47755, 47756, 47757},
		[CLASS_WARLOCK] = {47778, 47779, 47780, 47781, 47782},
		[CLASS_DRUID] = {48211, 48212, 48133, 48134, 48135, 48136, 48210, 48137, 48163, 48164, 48165, 48166, 48167, 48208, 48209},
	},
};
