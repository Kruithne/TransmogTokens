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
	[71682] = { ["NOTE"] = NO_USE, [1] = {}, [3] = {}, [7] = {}, }, -- Helm of the Fiery Protector 
	[71688] = { ["NOTE"] = NO_USE, [1] = {}, [3] = {}, [7] = {}, }, -- Mantle of the Fiery Protector
	[64316] = { ["NOTE"] = NO_USE, [1] = {}, [3] = {}, [7] = {}, }, -- Mantle of the Forlorn Protector
	[71681] = { ["NOTE"] = NO_USE, [2] = {}, [5] = {}, [9] = {}, }, -- Mantle of the Fiery Conqueror
	[63684] = { ["NOTE"] = NO_USE, [1] = {}, [3] = {}, [7] = {}, }, -- Helm of the Forlorn Protector

	[34664] = { -- Sunmote
		[0] = REDEEM_TBC_SUNMOTE,
		[t.ARMOR_TYPE_PLATE] = {34388, 34389, 34394, 34395, 34382, 34400, 34401, 34381},
		[t.ARMOR_TYPE_CLOTH] = {34399, 34393, 34386, 34406, 34405},
		[t.ARMOR_TYPE_LEATHER] = {34384, 34385, 34391, 34392, 34397, 34398, 34403, 34404, 34408, 34407},
		[t.ARMOR_TYPE_MAIL] = {34396, 34390, 34402, 34383, 34409},
	},

	[66998] = { -- Essence of the Forlorn 
		[0] = REDEEM_TIER_11,
		["LINK"] = {67428, 65088, 67423, 67424, 67425, 67426, 67427, 65089, 67429, 67430, 67431, 65000, 65001, 65002, 65087},
	},

	[71617] = { -- Crystallized Firestone
		[0] = REDEEM_FIRELANDS_BOE,
		[1] = {71562, 71557, 71559, 71560, 71558}, -- Warrior
		[2] = {71562, 71557}, -- Paladin
		[3] = {71562, 71557, 71559, 71560, 71558, 71561}, -- Hunter 
		[4] = {71562, 71560, 71558, 71641}, -- Rogue
		[5] = {71559, 71560, 71579, 71575}, -- Priest
		[6] = {71562, 71557}, -- Death Knight
		[7] = {71562, 71559, 71560, 71561}, -- Shaman
		[8] = {71559, 71560, 71579, 71575}, -- Mage
		[9] = {71559, 71560, 71579, 71575}, -- Warlock
		[10] = {71562, 71557, 71559, 71641}, -- Monk
		[11] = {71557, 71559, 71560, 71579, 71575, 71641}, -- Druid
		[12] = {71562, 71560, 71641}, -- Demon Hunter
	},

	[29753] = { -- Chestguard of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "Magtheridon (Magtheridon's Lair)"},
		[0] = REDEEM_TIER_4,
		[1] = {24544, 29019, 29012},
		[5] = {31413, 27711, 29050, 29056},
		[11] = {28130, 28140, 31379, 29096, 29087, 29091},
	},

	[29754] = { -- Chestguard of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "Magtheridon (Magtheridon's Lair)"},
		[0] = REDEEM_TIER_4,
		[2] = {31613, 27702, 27879, 29071, 29062, 29066},
		[4] = {25831, 29045},
		[7] = {25997, 27469, 31396, 29033, 29038, 29029},
	},

	[29755] = { -- Chestguard of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "Magtheridon (Magtheridon's Lair)"},
		[0] = REDEEM_TIER_4,
		[3] = {28334, 29082},
		[8] = {25856, 29077},
		[9] = {24552, 30200, 28964},
	},

	[29756] = { -- Gloves of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "The Curator (Karazhan)"},
		[0] = REDEEM_TIER_4,
		[3] = {28335, 29085},
		[8] = {25857, 29080},
		[9] = {24556, 30188, 28968},
	},

	[29757] = { -- Gloves of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "The Curator (Karazhan)"},
		[0] = REDEEM_TIER_4,
		[2] = {27703, 27880, 31614, 29072, 29065, 29067},
		[4] = {25834, 29048},
		[7] = {31397, 26000, 27470, 29034, 29039, 29032},
	},

	[29758] = { -- Gloves of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "The Curator (Karazhan)"},
		[0] = REDEEM_TIER_4,
		[1] = {24549, 29020, 29017},
		[5] = {27707, 31409, 29055, 29057},
		[11] = {31375, 28126, 28136, 29097, 29090, 29092},
	},

	[29759] = { -- Helm of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "Prince Malchezaar (Karazhan)"},
		[0] = REDEEM_TIER_4,
		[3] = {28331, 29081},
		[8] = {25855, 29076},
		[9] = {24553, 30187, 28963},
	},

	[29760] = { -- Helm of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "Prince Malchezaar (Karazhan)"},
		[0] = REDEEM_TIER_4,
		[2] = {27704, 27881, 31616, 29073, 29061, 29068},
		[4] = {25830, 29044},
		[7] = {27471, 31400, 25998, 29035, 29040, 29028},
	},

	[29761] = { -- Helm of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "Prince Malchezaar (Karazhan)"},
		[0] = REDEEM_TIER_4,
		[1] = {24545, 29021, 29011},
		[5] = {27708, 31410, 29049, 29058},
		[11] = {28137, 31376, 28127, 29098, 29086, 29093},
	},

	[29762] = { -- Pauldrons of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "High King Maulgar (Gruul's Lair)"},
		[0] = REDEEM_TIER_4,
		[3] = {28333, 29084},
		[8] = {25854, 29079},
		[9] = {24554, 30186, 28967},
	},

	[29763] = { -- Pauldrons of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "High King Maulgar (Gruul's Lair)"},
		[0] = REDEEM_TIER_4,
		[2] = {31619, 27706, 27883, 29075, 29064, 29070},
		[4] = {25832, 29047},
		[7] = {25999, 27473, 31407, 29037, 29043, 29031},
	},

	[29764] = { -- Pauldrons of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "High King Maulgar (Gruul's Lair)"},
		[0] = REDEEM_TIER_4,
		[1] = {24546, 29023, 29016},
		[5] = {31412, 27710, 29054, 29060},
		[11] = {28129, 28139, 31378, 29100, 29089, 29095},
	},

	[29765] = { -- Leggings of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "Gruul (Gruul's Lair)"},
		[0] = REDEEM_TIER_4,
		[3] = {28332, 29083},
		[8] = {25858, 29078},
		[9] = {30201, 24555, 28966},
	},

	[29766] = { -- Leggings of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "Gruul (Gruul's Lair)"},
		[0] = REDEEM_TIER_4,
		[2] = {31618, 27705, 27882, 29074, 29063, 29069},
		[4] = {25833, 29046},
		[7] = {26001, 27472, 31406, 29036, 29042, 29030},
	},

	[29767] = { -- Leggings of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "Gruul (Gruul's Lair)"},
		[0] = REDEEM_TIER_4,
		[1] = {24547, 29022, 29015},
		[5] = {31411, 27709, 29053, 29059},
		[11] = {28128, 28138, 31377, 29099, 29088, 29094},
	},

	[30236] = { -- Chestguard of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Kael'thas Sunstrider (The Eye)"},
		[0] = REDEEM_TIER_5,
		[2] = {32020, 32039, 31992, 30129, 30134, 30123},
		[4] = {32002, 30144},
		[7] = {32009, 32029, 32004, 30185, 30164, 30169},
	},

	[30237] = { -- Chestguard of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Kael'thas Sunstrider (The Eye)"},
		[0] = REDEEM_TIER_5,
		[1] = {30486, 30118, 30113},
		[5] = {32019, 32038, 30150, 30159},
		[11] = {31991, 32060, 31972, 30231, 30216, 30222},
	},

	[30238] = { -- Chestguard of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Kael'thas Sunstrider (The Eye)"},
		[0] = REDEEM_TIER_5,
		[3] = {31960, 30139},
		[8] = {32050, 30196},
		[9] = {31977, 31982, 30214},
	},

	[30239] = { -- Gloves of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Leothersas the Blind (Serpentshrine Cavern)"},
		[0] = REDEEM_TIER_5,
		[2] = {31993, 32021, 32040, 30130, 30135, 30124},
		[4] = {31998, 30145},
		[7] = {32005, 32010, 32030, 30189, 30165, 30170},
	},

	[30240] = { -- Gloves of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Leothersas the Blind (Serpentshrine Cavern)"},
		[0] = REDEEM_TIER_5,
		[1] = {30487, 30119, 30114},
		[5] = {32015, 32034, 30151, 30160},
		[11] = {31987, 32056, 31967, 30232, 30217, 30223},
	},

	[30241] = { -- Gloves of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Leothersas the Blind (Serpentshrine Cavern)"},
		[0] = REDEEM_TIER_5,
		[3] = {31961, 30140},
		[8] = {32049, 30205},
		[9] = {31973, 31981, 30211},
	},

	[30242] = { -- Helm of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Lady Vashj (Serpentshrine Cavern)"},
		[0] = REDEEM_TIER_5,
		[2] = {31997, 32022, 32041, 30131, 30136, 30125},
		[4] = {31999, 30146},
		[7] = {32006, 32011, 32031, 30190, 30166, 30171},
	},

	[30243] = { -- Helm of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Lady Vashj (Serpentshrine Cavern)"},
		[0] = REDEEM_TIER_5,
		[1] = {30488, 30120, 30115},
		[5] = {32016, 32035, 30152, 30161},
		[11] = {32057, 31968, 31988, 30233, 30219, 30228},
	},

	[30244] = { -- Helm of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Lady Vashj (Serpentshrine Cavern)"},
		[0] = REDEEM_TIER_5,
		[3] = {31962, 30141},
		[8] = {32048, 30206},
		[9] = {31974, 31980, 30212},
	},

	[30245] = { -- Leggings of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Fathom-Lord Karathress (Serpentshrine Cavern)"},
		[0] = REDEEM_TIER_5,
		[2] = {31995, 32023, 32042, 30132, 30137, 30126},
		[4] = {32000, 30148},
		[7] = {32032, 32007, 32012, 30192, 30167, 30172},
	},

	[30246] = { -- Leggings of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Fathom-Lord Karathress (Serpentshrine Cavern)"},
		[0] = REDEEM_TIER_5,
		[1] = {30489, 30121, 30116},
		[5] = {32017, 32036, 30153, 30162},
		[11] = {31989, 32058, 31969, 30234, 30220, 30229},
	},

	[30247] = { -- Leggings of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Fathom-Lord Karathress (Serpentshrine Cavern)"},
		[0] = REDEEM_TIER_5,
		[3] = {31963, 30142},
		[8] = {32051, 30207},
		[9] = {31975, 31983, 30213},
	},

	[30248] = { -- Pauldrons of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Void Reaver (The Eye)"},
		[0] = REDEEM_TIER_5,
		[2] = {31996, 32024, 32043, 30133, 30138, 30127},
		[4] = {32001, 30149},
		[7] = {32008, 32013, 32033, 30194, 30168, 30173},
	},

	[30249] = { -- Pauldrons of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Void Reaver (The Eye)"},
		[0] = REDEEM_TIER_5,
		[1] = {30490, 30117, 30122},
		[5] = {32018, 32037, 30154, 30163},
		[11] = {31990, 32059, 31971, 30221, 30230, 30235},
	},

	[30250] = { -- Pauldrons of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Void Reaver (The Eye)"},
		[0] = REDEEM_TIER_5,
		[3] = {31964, 30143},
		[8] = {32047, 30210},
		[9] = {31976, 31979, 30215},
	},

	[31089] = { -- Chestguard of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Illidan Stormrage (Black Temple)"},
		[0] = REDEEM_TBC_HYAL,
		[2] = {30990, 30992, 30991, 32039, 31992, 32020},
		[5] = {31065, 31066, 32019, 32038},
		[9] = {31052, 31982, 31977},
	},

	[31090] = { -- Chestguard of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Illidan Stormrage (Black Temple)"},
		[0] = REDEEM_TBC_HYAL,
		[4] = {31028, 32002},
		[8] = {31057, 32050},
		[11] = {31041, 31042, 31043, 31972, 31991, 32060},
	},

	[31091] = { -- Chestguard of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Illidan Stormrage (Black Temple)"},
		[0] = REDEEM_TBC_HYAL,
		[1] = {30975, 30976, 30486},
		[3] = {31004, 31960},
		[7] = {31018, 31016, 31017, 32004, 32009, 32029},
	},

	[31092] = { -- Gloves of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Azgalor (Hyjal Summit)"},
		[0] = REDEEM_TBC_HYAL,
		[2] = {30982, 30985, 30983, 32021, 32040, 31993},
		[5] = {31060, 31061, 32015, 32034},
		[9] = {31050, 31981, 31973},
	},

	[31093] = { -- Gloves of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Azgalor (Hyjal Summit)"},
		[0] = REDEEM_TBC_HYAL,
		[4] = {31026, 31998},
		[8] = {31055, 32049},
		[11] = {31032, 31034, 31035, 31967, 31987, 32056},
	},

	[31094] = { -- Gloves of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Azgalor (Hyjal Summit)"},
		[0] = REDEEM_TBC_HYAL,
		[1] = {30969, 30970, 30487},
		[3] = {31001, 31961},
		[7] = {31011, 31007, 31008, 32010, 32030, 32005},
	},

	[31095] = { -- Helm of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Archimonde (Hyjal Summit)"},
		[0] = REDEEM_TBC_HYAL,
		[1] = {30972, 30974, 30488},
		[3] = {31003, 31962},
		[7] = {31015, 31012, 31014, 32006, 32011, 32031},
	},

	[31096] = { -- Helm of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Archimonde (Hyjal Summit)"},
		[0] = REDEEM_TBC_HYAL,
		[4] = {31027, 31999},
		[8] = {31056, 32048},
		[11] = {31037, 31039, 31040, 31968, 31988, 32057},
	},

	[31097] = { -- Helm of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Archimonde (Hyjal Summit)"},
		[0] = REDEEM_TBC_HYAL,
		[2] = {30987, 30989, 30988, 32041, 31997, 32022},
		[5] = {31063, 31064, 32016, 32035},
		[9] = {31051, 31980, 31974},
	},

	[31098] = { -- Leggings of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "The Illidari Council (Black Temple)"},
		[0] = REDEEM_TBC_HYAL,
		[2] = {30993, 30995, 30994, 32042, 31995, 32023},
		[5] = {31067, 31068, 32017, 32036},
		[9] = {31053, 31983, 31975},
	},

	[31099] = { -- Leggings of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "The Illidari Council (Black Temple)"},
		[0] = REDEEM_TBC_HYAL,
		[4] = {31029, 32000},
		[8] = {31058, 32051},
		[11] = {31044, 31045, 31046, 31969, 31989, 32058},
	},

	[31100] = { -- Leggings of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "The Illidari Council (Black Temple)"},
		[0] = REDEEM_TBC_HYAL,
		[1] = {30977, 30978, 30489},
		[3] = {31005, 31963},
		[7] = {31019, 31020, 31021, 32007, 32012, 32032},
	},

	[31101] = { -- Pauldrons of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Mother Shahraz (Black Temple)"},
		[0] = REDEEM_TBC_HYAL,
		[2] = {30996, 30998, 30997, 32043, 31996, 32024},
		[5] = {31069, 31070, 32018, 32037},
		[9] = {31054, 31979, 31976},
	},

	[31102] = { -- Pauldrons of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Mother Shahraz (Black Temple)"},
		[0] = REDEEM_TBC_HYAL,
		[4] = {31030, 32001},
		[8] = {31059, 32047},
		[11] = {31047, 31048, 31049, 32059, 31971, 31990},
	},

	[31103] = { -- Pauldrons of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Mother Shahraz (Black Temple)"},
		[0] = REDEEM_TBC_HYAL,
		[1] = {30979, 30980, 30490},
		[3] = {31006, 31964},
		[7] = {31024, 31022, 31023, 32008, 32013, 32033},
	},

	[34848] = { -- Bracers of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[0] = REDEEM_TBC_TIER_6,
		[1] = {33910, 33889, 33904},
		[2] = {34431, 34433, 34432, 33910, 33889, 33904},
		[5] = {34434, 34435, 33883, 33901},
		[8] = {33883, 33901},
		[9] = {34436, 33883, 33901},
	},

	[34851] = { -- Bracers of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[0] = REDEEM_TBC_TIER_6,
		[1] = {34441, 34442, 33813},
		[2] = {33813},
		[3] = {34443, 33876, 33894, 33897, 33906},
		[7] = {34437, 34439, 34438, 33876, 33894, 33897, 33906},
	},

	[34852] = { -- Bracers of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[0] = REDEEM_TBC_TIER_6,
		[4] = {34448, 33917, 33881, 33887, 33893},
		[5] = {33913},
		[8] = {34447, 33913},
		[9] = {33913},
		[10] = {33917, 33881, 33887, 33893},
		[11] = {34444, 34445, 34446, 33917, 33881, 33887, 33893},
	},

	[34853] = { -- Belt of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[0] = REDEEM_TBC_TIER_6,
		[1] = {33888, 33903, 33909},
		[2] = {34485, 34488, 34487, 33888, 33903, 33909},
		[5] = {34527, 34528, 33882, 33900},
		[8] = {33882, 33900},
		[9] = {34541, 33882, 33900},
	},

	[34854] = { -- Belt of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[0] = REDEEM_TBC_TIER_6,
		[1] = {34547, 34546, 33811},
		[2] = {33811},
		[3] = {34549, 33877, 33895, 33898, 33907},
		[7] = {34543, 34545, 34542, 33877, 33895, 33898, 33907},
	},

	[34855] = { -- Belt of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[0] = REDEEM_TBC_TIER_6,
		[4] = {34558, 33879, 33885, 33891, 33915},
		[5] = {33912},
		[8] = {34557, 33912},
		[9] = {33912},
		[10] = {33879, 33885, 33891, 33915},
		[11] = {34554, 34555, 34556, 33879, 33885, 33891, 33915},
	},

	[34856] = { -- Boots of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[0] = REDEEM_TBC_TIER_6,
		[1] = {33890, 33905, 33911},
		[2] = {34559, 34561, 34560, 33890, 33905, 33911},
		[5] = {34562, 34563, 33884, 33902},
		[8] = {33884, 33902},
		[9] = {34564, 33884, 33902},
	},

	[34857] = { -- Boots of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[0] = REDEEM_TBC_TIER_6,
		[1] = {34568, 34569, 33812},
		[2] = {33812},
		[3] = {34570, 33878, 33896, 33899, 33908},
		[7] = {34565, 34567, 34566, 33878, 33896, 33899, 33908},
	},

	[34858] = { -- Boots of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[0] = REDEEM_TBC_TIER_6,
		[4] = {34575, 33880, 33886, 33892, 33916},
		[5] = {33914},
		[8] = {34574, 33914},
		[9] = {33914},
		[10] = {33880, 33886, 33892, 33916},
		[11] = {34571, 34572, 34573, 33880, 33886, 33892, 33916},
	},

	[40610] = { -- Chestguard of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Gluth (Naxxramas [10-Man])"},
		[0] = REDEEM_TIER_7,
		[2] = {39629, 39633, 39638},
		[5] = {39515, 39523},
		[9] = {39497},
	},

	[40611] = { -- Chestguard of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Gluth (Naxxramas [10-Man])"},
		[0] = REDEEM_TIER_7,
		[1] = {39606, 39611},
		[3] = {39579},
		[7] = {39597, 39588, 39592},
	},

	[40612] = { -- Chestguard of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Gluth (Naxxramas [10-Man])"},
		[0] = REDEEM_TIER_7,
		[4] = {39558},
		[6] = {39617, 39623},
		[8] = {39492},
		[11] = {39538, 39547, 39554},
	},

	[40613] = { -- Gloves of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [10-Man])"},
		[0] = REDEEM_TIER_7,
		[2] = {39632, 39634, 39639},
		[5] = {39519, 39530},
		[9] = {39500},
	},

	[40614] = { -- Gloves of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [10-Man])"},
		[0] = REDEEM_TIER_7,
		[1] = {39609, 39622},
		[3] = {39582},
		[7] = {39591, 39593, 39601},
	},

	[40615] = { -- Gloves of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [10-Man])"},
		[0] = REDEEM_TIER_7,
		[4] = {39560},
		[6] = {39618, 39624},
		[8] = {39495},
		[11] = {39543, 39544, 39557},
	},

	[40616] = { -- Helm of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [10-Man])"},
		[0] = REDEEM_TIER_7,
		[2] = {39628, 39635, 39640},
		[5] = {39514, 39521},
		[9] = {39496},
	},

	[40617] = { -- Helm of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [10-Man])"},
		[0] = REDEEM_TIER_7,
		[1] = {39605, 39610},
		[3] = {39578},
		[7] = {39583, 39594, 39602},
	},

	[40618] = { -- Helm of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [10-Man])"},
		[0] = REDEEM_TIER_7,
		[4] = {39561},
		[6] = {39619, 39625},
		[8] = {39491},
		[11] = {39531, 39545, 39553},
	},

	[40619] = { -- Leggings of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [10-Man])"},
		[0] = REDEEM_TIER_7,
		[2] = {39630, 39636, 39641},
		[5] = {39517, 39528},
		[9] = {39498},
	},

	[40620] = { -- Leggings of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [10-Man])"},
		[0] = REDEEM_TIER_7,
		[1] = {39607, 39612},
		[3] = {39580},
		[7] = {39589, 39595, 39603},
	},

	[40621] = { -- Leggings of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [10-Man])"},
		[0] = REDEEM_TIER_7,
		[4] = {39564},
		[6] = {39620, 39626},
		[8] = {39493},
		[11] = {39539, 39546, 39555},
	},

	[40622] = { -- Spaulders of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [10-Man])"},
		[0] = REDEEM_TIER_7,
		[2] = {39631, 39637, 39642},
		[5] = {39518, 39529},
		[9] = {39499},
	},

	[40623] = { -- Spaulders of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [10-Man])"},
		[0] = REDEEM_TIER_7,
		[1] = {39608, 39613},
		[3] = {39581},
		[7] = {39590, 39596, 39604},
	},

	[40624] = { -- Spaulders of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [10-Man])"},
		[0] = REDEEM_TIER_7,
		[4] = {39565},
		[6] = {39621, 39627},
		[8] = {39494},
		[11] = {39542, 39548, 39556},
	},

	[40625] = {	-- Breastplate of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Four Horsemen (Naxxramas [25-Man])"},
		[0] = REDEEM_TIER_7,
		[9] = {40423},
		[5] = {40449, 40458},
		[2] = {40569, 40574, 40579},
	},

	[40626] = { -- Breastplate of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Four Horsemen (Naxxramas [25-Man])"},
		[0] = REDEEM_TIER_7,
		[1] = {40525, 40544},
		[3] = {40503},
		[7] = {40514, 40523, 40508},
	},

	[40627] = { -- Breastplate of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Four Horsemen (Naxxramas [25-Man])"},
		[0] = REDEEM_TIER_7,
		[4] = {40495},
		[6] = {40550, 40559},
		[8] = {40418},
		[11] = {40463, 40469, 40471},
	},

	[40628] = { -- Gauntlets of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [25-Man])"},
		[0] = REDEEM_TIER_7,
		[2] = {40570, 40575, 40580},
		[5] = {40445, 40454},
		[9] = {40420},
	},

	[40629] = { -- Gauntlets of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [25-Man])"},
		[0] = REDEEM_TIER_7,
		[1] = {40527, 40545},
		[3] = {40504},
		[7] = {40509, 40515, 40520},
	},

	[40630] = { -- Gauntlets of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [25-Man])"},
		[0] = REDEEM_TIER_7,
		[4] = {40496},
		[6] = {40552, 40563},
		[8] = {40415},
		[11] = {40460, 40466, 40472},
	},

	[40631] = { -- Crown of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [25-Man])"},
		[0] = REDEEM_TIER_7,
		[2] = {40571, 40576, 40581},
		[5] = {40447, 40456},
		[9] = {40421},
	},

	[40632] = { -- Crown of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [25-Man])"},
		[0] = REDEEM_TIER_7,
		[1] = {40528, 40546},
		[3] = {40505},
		[7] = {40521, 40510, 40516},
	},

	[40633] = { -- Crown of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [25-Man])"},
		[0] = REDEEM_TIER_7,
		[4] = {40499},
		[6] = {40554, 40565},
		[8] = {40416},
		[11] = {40461, 40467, 40473},
	},

	[40634] = { -- Legplates of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [25-Man])"},
		[0] = REDEEM_TIER_7,
		[2] = {40572, 40577, 40583},
		[5] = {40448, 40457},
		[9] = {40422},
	},

	[40635] = { -- Legplates of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [25-Man])"},
		[0] = REDEEM_TIER_7,
		[1] = {40529, 40547},
		[3] = {40506},
		[7] = {40512, 40517, 40522},
	},

	[40636] = { -- Legplates of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [25-Man])"},
		[0] = REDEEM_TIER_7,
		[4] = {40500},
		[6] = {40556, 40567},
		[8] = {40417},
		[11] = {40462, 40468, 40493},
	},

	[40637] = { -- Mantle of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [25-Man])"},
		[0] = REDEEM_TIER_7,
		[2] = {40573, 40578, 40584},
		[5] = {40450, 40459},
		[9] = {40424},
	},

	[40638] = { -- Mantle of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [25-Man])"},
		[0] = REDEEM_TIER_7,
		[1] = {40530, 40548},
		[3] = {40507},
		[7] = {40513, 40518, 40524},
	},

	[40639] = { -- Mantle of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [25-Man])"},
		[0] = REDEEM_TIER_7,
		[4] = {40502},
		[6] = {40557, 40568},
		[8] = {40419},
		[11] = {40465, 40470, 40494},
	},

	[45632] = { -- Breastplate of the Wayward Conqueror
		[0] = REDEEM_TIER_8,
		[2] = {46154, 46173, 46178},
		[5] = {46168, 46193},
		[9] = {46137},
	},

	[45633] = { -- Breastplate of the Wayward Protector
		[0] = REDEEM_TIER_8,
		[1] = {46146, 46162},
		[3] = {46141},
		[7] = {46198, 46205, 46206},
	},

	[45634] = { -- Breastplate of the Wayward Vanquisher
		[0] = REDEEM_TIER_8,
		[4] = {46123},
		[6] = {46111, 46118},
		[8] = {46130},
		[11] = {46159, 46186, 46194},
	},

	[45635] = { -- Chestguard of the Wayward Conqueror
		[0] = REDEEM_TIER_8,
		[2] = {45374, 45375, 45381},
		[5] = {45389, 45395},
		[9] = {45421},
	},

	[45636] = { -- Chestguard of the Wayward Protector
		[0] = REDEEM_TIER_8,
		[1] = {45424, 45429},
		[3] = {45364},
		[7] = {45405, 45411, 45413},
	},

	[45637] = { -- Chestguard of the Wayward Vanquisher
		[0] = REDEEM_TIER_8,
		[4] = {45396},
		[6] = {45335, 45340},
		[8] = {45368},
		[11] = {45348, 45354, 45358},
	},

	[45638] = { -- Crown of the Wayward Conqueror
		[0] = REDEEM_TIER_8,
		[2] = {46156, 46175, 46180},
		[5] = {46172, 46197},
		[9] = {46140},
	},

	[45639] = { -- Crown of the Wayward Protector
		[0] = REDEEM_TIER_8,
		[1] = {46151, 46166},
		[3] = {46143},
		[7] = {46201, 46209, 46212},
	},

	[45640] = { -- Crown of the Wayward Vanquisher
		[0] = REDEEM_TIER_8,
		[4] = {46125},
		[6] = {46115, 46120},
		[8] = {46129},
		[11] = {46161, 46184, 46191},
	},

	[45643] = { -- Gauntlets of the Wayward Vanquisher
		[0] = REDEEM_TIER_8,
		[4] = {46124},
		[6] = {46113, 46119},
		[11] = {46158, 46183, 46189},
		[8] = {46132},
	},

	[45641] = { -- Gauntlets of the Wayward Conqueror
		[0] = REDEEM_TIER_8,
		[2] = {46155, 46174, 46179},
		[5] = {46163, 46188},
		[9] = {46135},
	},

	[45642] = { -- Gauntlets of the Wayward Protector
		[0] = REDEEM_TIER_8,
		[1] = {46148, 46164},
		[3] = {46142},
		[7] = {46199, 46200, 46207},
	},

	[45644] = { -- Gloves of the Wayward Conqueror
		[0] = REDEEM_TIER_8,
		[2] = {45370, 45376, 45383},
		[5] = {45387, 45392},
		[9] = {45419},
	},

	[45645] = { -- Gloves of the Wayward Protector
		[0] = REDEEM_TIER_8,
		[1] = {45426, 45430},
		[3] = {45360},
		[7] = {45401, 45406, 45414},
	},

	[45646] = { -- Gloves of the Wayward Vanquisher
		[0] = REDEEM_TIER_8,
		[4] = {45397},
		[6] = {45337, 45341},
		[8] = {46131},
		[11] = {45345, 45351, 45355},
	},

	[45647] = { -- Helm of the Wayward Conqueror
		[0] = REDEEM_TIER_8,
		[2] = {45372, 45377, 45382},
		[5] = {45386, 45391},
		[9] = {45417},
	},

	[45648] = { -- Helm of the Wayward Protector
		[0] = REDEEM_TIER_8,
		[1] = {45425, 45431},
		[3] = {45361},
		[7] = {45402, 45408, 45412},
	},

	[45649] = { -- Helm of the Wayward Vanquisher
		[0] = REDEEM_TIER_8,
		[4] = {45398},
		[6] = {45336, 45342},
		[8] = {45365},
		[11] = {45346, 45356, 46313},
	},

	[45650] = { -- Leggings of the Wayward Conqueror
		[0] = REDEEM_TIER_8,
		[2] = {45371, 45379, 45384},
		[5] = {45388, 45394},
		[9] = {45420},
	},

	[45651] = { -- Leggings of the Wayward Protector
		[0] = REDEEM_TIER_8,
		[1] = {45427, 45432},
		[3] = {45362},
		[7] = {45403, 45409, 45416},
	},

	[45652] = { -- Leggings of the Wayward Vanquisher
		[0] = REDEEM_TIER_8,
		[4] = {45399},
		[6] = {45338, 45343},
		[8] = {45367},
		[11] = {45347, 45353, 45357},
	},

	[45653] = { -- Legplates of the Wayward Conqueror
		[0] = REDEEM_TIER_8,
		[2] = {46153, 46176, 46181},
		[5] = {46170, 46195},
		[9] = {46139},
	},

	[45654] = { -- Legplates of the Wayward Protector
		[0] = REDEEM_TIER_8,
		[1] = {46150, 46169},
		[3] = {46144},
		[7] = {46202, 46208, 46210},
	},

	[45655] = { -- Legplates of the Wayward Vanquisher
		[0] = REDEEM_TIER_8,
		[4] = {46126},
		[6] = {46116, 46121},
		[8] = {46133},
		[11] = {46160, 46185, 46192},
	},

	[45656] = { -- Mantle of the Wayward Conqueror
		[0] = REDEEM_TIER_8,
		[2] = {46177, 46182, 46152},
		[5] = {46165, 46190},
		[9] = {46136},
	},

	[45657] = { -- Mantle of the Wayward Protector
		[0] = REDEEM_TIER_8,
		[1] = {46149, 46167},
		[3] = {46145},
		[7] = {46203, 46204, 46211},
	},

	[45658] = { -- Mantle of the Wayward Vanquisher
		[0] = REDEEM_TIER_8,
		[4] = {46127},
		[6] = {46117, 46122},
		[8] = {46134},
		[11] = {46157, 46187, 46196},
	},

	[45659] = { -- Spaulders of the Wayward Conqueror
		[0] = REDEEM_TIER_8,
		[2] = {45373, 45380, 45385},
		[5] = {45390, 45393},
		[9] = {45422},
	},

	[45660] = { -- Spaulders of the Wayward Protector
		[0] = REDEEM_TIER_8,
		[1] = {45428, 45433},
		[3] = {45363},
		[7] = {45404, 45410, 45415},
	},

	[45661] = { -- Spaulders of the Wayward Vanquisher
		[0] = REDEEM_TIER_8,
		[4] = {45400},
		[6] = {45339, 45344},
		[8] = {45369},
		[11] = {45349, 45352, 45359},
	},

	[52025] = { -- Vanquisher's Mark of Sanctification
		[0] = REDEEM_TIER_10,
		[4] = {51185, 51186, 51187, 51188, 51189},
		[6] = {51130, 51131, 51132, 51133, 51134, 51129, 51125, 51126, 51127, 51128},
		[8] = {51159, 51155, 51156, 51157, 51158},
		[11] = {51138, 51139, 51145, 51146, 51147, 51148, 51149, 51140, 51141, 51142, 51143, 51144, 51135, 51136, 51137},
	},

	[52026] = { -- Protector's Mark of Sanctification
		[0] = REDEEM_TIER_10,
		[1] = {51217, 51218, 51219, 51210, 51211, 51212, 51213, 51214, 51215, 51216},
		[3] = {51150, 51151, 51152, 51153, 51154},
		[7] = {51190, 51199, 51200, 51201, 51202, 51203, 51204, 51198, 51191, 51192, 51193, 51194, 51195, 51196, 51197},
	},

	[52027] = { -- Conqueror's Mark of Sanctification
		[0] = REDEEM_TIER_10,
		[2] = {51161, 51162, 51163, 51164, 51170, 51171, 51172, 51173, 51174, 51165, 51166, 51167, 51168, 51169, 51160},
		[5] = {51184, 51178, 51179, 51180, 51181, 51182, 51183, 51177, 51175, 51176},
		[9] = {51205, 51206, 51207, 51208, 51209},
	},

	[52028] = { -- Vanquisher's Mark of Sanctification
		[0] = REDEEM_TIER_10,
		[4] = {51250, 51251, 51252, 51253, 51254},
		[6] = {51312, 51310, 51311, 51313, 51314, 51305, 51306, 51307, 51308, 51309},
		[8] = {51283, 51284, 51280, 51281, 51282},
		[11] = {51295, 51296, 51297, 51298, 51299, 51300, 51301, 51294, 51302, 51303, 51304, 51290, 51291, 51292, 51293},
	},

	[52029] = { -- Protector's Mark of Sanctification
		[0] = REDEEM_TIER_10,
		[1] = {51222, 51223, 51224, 51225, 51226, 51227, 51228, 51229, 51220, 51221},
		[3] = {51285, 51286, 51287, 51288, 51289},
		[7] = {51249, 51239, 51238, 51237, 51236, 51235, 51240, 51241, 51248, 51247, 51246, 51245, 51244, 51243, 51242},
	},

	[52030] = { -- Conqueror's Mark of Sanctification
		[0] = REDEEM_TIER_10,
		[2] = {51265, 51266, 51267, 51268, 51269, 51270, 51271, 51272, 51273, 51274, 51275, 51276, 51277, 51278, 51279},
		[5] = {51257, 51258, 51259, 51256, 51260, 51261, 51262, 51263, 51264, 51255},
		[9] = {51233, 51230, 51231, 51232, 51234},
	},

	[65000] = { -- Crown of the Forlorn Protector
		[0] = REDEEM_TIER_11,
		[1] = {65266, 65271},
		[3] = {65206},
		[7] = {65246, 65251, 65256},
	},

	[65001] = { -- Crown of the Forlorn Conqueror
		[0] = REDEEM_TIER_11,
		[2] = {65216, 65221, 65226},
		[5] = {65230, 65235},
		[9] = {65260},
	},

	[65002] = { -- Crown of the Forlorn Vanquisher
		[0] = REDEEM_TIER_11,
		[4] = {65241},
		[6] = {65181, 65186},
		[8] = {65210},
		[11] = {65190, 65195, 65200},
	},

	[65087] = { -- Shoulders of the Forlorn Protector
		[0] = REDEEM_TIER_11,
		[1] = {65268, 65273},
		[3] = {65208},
		[7] = {65248, 65253, 65258},
	},

	[65088] = { -- Shoulders of the Forlorn Conqueror
		[0] = REDEEM_TIER_11,
		[2] = {65218, 65223, 65228},
		[5] = {65233, 65238},
		[9] = {65263},
	},

	[65089] = { -- Shoulders of the Forlorn Vanquisher
		[0] = REDEEM_TIER_11,
		[4] = {65243},
		[6] = {65183, 65188},
		[8] = {65213},
		[11] = {65193, 65198, 65203},
	},

	[67423] = { -- Chest of the Forlorn Conqueror
		[0] = REDEEM_TIER_11,
		[2] = {65224, 65219, 65214},
		[5] = {65237, 65232},
		[9] = {65262},
	},

	[67424] = { -- Chest of the Forlorn Protector
		[0] = REDEEM_TIER_11,
		[1] = {65269, 65264},
		[3] = {65204},
		[7] = {65254, 65249, 65244},
	},

	[67425] = { -- Chest of the Forlorn Vanquisher
		[0] = REDEEM_TIER_11,
		[4] = {65239},
		[6] = {65184, 65179},
		[8] = {65212},
		[11] = {65202, 65197, 65192},
	},

	[67426] = { -- Leggings of the Forlorn Vanquisher
		[0] = REDEEM_TIER_11,
		[4] = {65242},
		[6] = {65187, 65182},
		[8] = {65211},
		[11] = {65201, 65196, 65191},
	},

	[67427] = { -- Leggings of the Forlorn Protector
		[0] = REDEEM_TIER_11,
		[1] = {65267, 65272},
		[3] = {65207},
		[7] = {65257, 65252, 65247},
	},

	[67428] = { -- Leggings of the Forlorn Conqueror
		[0] = REDEEM_TIER_11,
		[2] = {65227, 65222, 65217},
		[5] = {65236, 65231},
		[9] = {65261},
	},

	[67429] = { -- Gauntlets of the Forlorn Conqueror
		[0] = REDEEM_TIER_11,
		[2] = {65215, 65220, 65225},
		[5] = {65229, 65234},
		[9] = {65259},
	},

	[67430] = { -- Gauntlets of the Forlorn Protector
		[0] = REDEEM_TIER_11,
		[1] = {65265, 65270},
		[3] = {65205},
		[7] = {65255, 65245, 65250},
	},

	[67431] = { -- Gauntlets of the Forlorn Vanquisher
		[0] = REDEEM_TIER_11,
		[4] = {65240},
		[6] = {65180, 65185},
		[8] = {65209},
		[11] = {65194, 65199, 65189},
	},

	[71669] = { -- Gauntlets of the Fiery Vanquisher
		[0] = REDEEM_TIER_12,
		[4] = {71538},
		[6] = {71477, 71482},
		[8] = {71507},
		[11] = {71487, 71491, 71496},
	},

	[71670] = { -- Crown of the Fiery Vanquisher
		[0] = REDEEM_TIER_12,
		[4] = {71539},
		[6] = {71478, 71483},
		[8] = {71508},
		[11] = {71488, 71492, 71497},
	},

	[71671] = { -- Leggings of the Fiery Vanquisher
		[0] = REDEEM_TIER_12,
		[4] = {71540},
		[6] = {71479, 71484},
		[8] = {71509},
		[11] = {71489, 71493, 71498},
	},

	[71672] = { -- Chest of the Fiery Vanquisher
		[0] = REDEEM_TIER_12,
		[4] = {71537},
		[6] = {71476, 71481},
		[8] = {71510},
		[11] = {71486, 71494, 71499},
	},

	[71673] = { -- Shoulders of the Fiery Vanquisher
		[0] = REDEEM_TIER_12,
		[4] = {71541},
		[6] = {71480, 71485},
		[8] = {71511},
		[11] = {71490, 71495, 71500},
	},

	[71676] = { -- Gauntlets of the Fiery Conqueror
		[0] = REDEEM_TIER_12,
		[2] = {71513, 71518, 71523},
		[5] = {71527, 71532},
		[9] = {71594},
	},

	[71677] = { -- Crown of the Fiery Conqueror
		[0] = REDEEM_TIER_12,
		[2] = {71514, 71519, 71524},
		[5] = {71528, 71533},
		[9] = {71595},
	},

	[71678] = { -- Leggings of the Fiery Conqueror
		[0] = REDEEM_TIER_12,
		[2] = {71515, 71520, 71525},
		[5] = {71529, 71534},
		[9] = {71596},
	},

	[71679] = { -- Chest of the Fiery Conqueror
		[0] = REDEEM_TIER_12,
		[2] = {71522, 71512, 71517},
		[5] = {71530, 71535},
		[9] = {71597},
	},

	[71680] = { -- Shoulders of the Fiery Conqueror
		[0] = REDEEM_TIER_12,
		[2] = {71516, 71521, 71526},
		[5] = {71531, 71536},
		[9] = {71598},
	},

	[71683] = { -- Gauntlets of the Fiery Protector
		[0] = REDEEM_TIER_12,
		[1] = {71605, 71601},
		[3] = {71502},
		[7] = {71543, 71548, 71553},
	},

	[71684] = { -- Crown of the Fiery Protector
		[0] = REDEEM_TIER_12,
		[1] = {71599, 71606},
		[3] = {71503},
		[7] = {71544, 71549, 71554},
	},

	[71685] = { -- Leggings of the Fiery Protector
		[0] = REDEEM_TIER_12,
		[1] = {71602, 71607},
		[3] = {71504},
		[7] = {71545, 71550, 71555},
	},

	[71686] = { -- Chest of the Fiery Protector
		[0] = REDEEM_TIER_12,
		[1] = {71600, 71604},
		[3] = {71501},
		[7] = {71542, 71547, 71552},
	},

	[71687] = { -- Shoulders of the Fiery Protector
		[0] = REDEEM_TIER_12,
		[1] = {71603, 71608},
		[3] = {71505},
		[7] = {71556, 71546, 71551},
	},

	[78170] = { -- Shoulders of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {77027},
		[6] = {76978, 77012},
		[8] = {76216},
		[11] = {76753, 77017, 77022},
	},

	[78171] = { -- Leggings of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {77026},
		[6] = {76977, 77011},
		[8] = {76214},
		[11] = {77016, 77020, 76751},
	},

	[78172] = { -- Crown of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {77025},
		[6] = {76976, 77010},
		[8] = {76213},
		[11] = {76750, 77015, 77019},
	},

	[78173] = { -- Gauntlets of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {77024},
		[6] = {76975, 77009},
		[8] = {76212},
		[11] = {76749, 77014, 77018},
	},

	[78174] = { -- Chest of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {77023},
		[6] = {76974, 77008},
		[8] = {76215},
		[11] = {76752, 77013, 77021},
	},

	[78175] = { -- Shoulders of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {76987, 76992},
		[3] = {77032},
		[7] = {76760, 77035, 77044},
	},

	[78176] = { -- Leggings of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {76986, 76991},
		[3] = {77031},
		[7] = {76759, 77036, 77043},
	},

	[78177] = { -- Crown of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {76983, 76990},
		[3] = {77030},
		[7] = {76758, 77037, 77042},
	},

	[78178] = { -- Gauntlets of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {76985, 76989},
		[3] = {77029},
		[7] = {76757, 77038, 77041},
	},

	[78179] = { -- Chest of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {76984, 76988},
		[3] = {77028},
		[7] = {76756, 77039, 77040},
	},

	[78180] = { -- Shoulders of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {76769, 76878, 77007},
		[5] = {76344, 76361},
		[9] = {76339},
	},

	[78181] = { -- Leggings of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {76768, 76877, 77006},
		[5] = {76346, 76359},
		[9] = {76341},
	},

	[78182] = { -- Crown of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {76767, 76876, 77005},
		[5] = {76347, 76358},
		[9] = {76342},
	},

	[78183] = { -- Gauntlets of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {76766, 76875, 77004},
		[5] = {76348, 76357},
		[9] = {76343},
	},

	[78184] = { -- Chest of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {76765, 76874, 77003},
		[5] = {76345, 76360},
		[9] = {76340},
	},

	[78847] = { -- Chest of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {78726, 78727, 78732},
		[5] = {78728, 78731},
		[9] = {78730},
	},

	[78848] = { -- Chest of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {78658, 78657},
		[3] = {78661},
		[7] = {78723, 78724, 78725},
	},

	[78849] = { -- Chest of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {78664},
		[6] = {78659, 78663},
		[8] = {78729},
		[11] = {78660, 78662, 78665},
	},

	[78850] = { -- Crown of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {78692, 78693, 78695},
		[5] = {78700, 78703},
		[9] = {78702},
	},

	[78851] = { -- Crown of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {78688, 78689},
		[3] = {78698},
		[7] = {78685, 78686, 78691},
	},

	[78852] = { -- Crown of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {78699},
		[6] = {78687, 78697},
		[8] = {78701},
		[11] = {78690, 78694, 78696},
	},

	[78853] = { -- Gauntlets of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {78673, 78675, 78677},
		[5] = {78682, 78683},
		[9] = {78681},
	},

	[78854] = { -- Gauntlets of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {78668, 78669},
		[3] = {78674},
		[7] = {78666, 78667, 78672},
	},

	[78855] = { -- Gauntlets of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {78679},
		[6] = {78670, 78678},
		[8] = {78671},
		[11] = {78676, 78680, 78684},
	},

	[78856] = { -- Leggings of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {78712, 78715, 78717},
		[5] = {78719, 78722},
		[9] = {78721},
	},

	[78857] = { -- Leggings of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {78705, 78706},
		[3] = {78709},
		[7] = {78704, 78711, 78718},
	},

	[78858] = { -- Leggings of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {78708},
		[6] = {78716, 78707},
		[8] = {78720},
		[11] = {78710, 78713, 78714},
	},

	[78859] = { -- Shoulders of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {78742, 78745, 78746},
		[5] = {78747, 78750},
		[9] = {78749},
	},

	[78860] = { -- Shoulders of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {78734, 78735},
		[3] = {78737},
		[7] = {78739, 78741, 78733},
	},

	[78861] = { -- Shoulders of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {78738},
		[6] = {78736, 78751},
		[8] = {78748},
		[11] = {78740, 78743, 78744},
	},

	[78862] = { -- Chest of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {78759},
		[6] = {78754, 78758},
		[8] = {78824},
		[11] = {78755, 78757, 78760},
	},

	[78863] = { -- Chest of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {78821, 78822, 78827},
		[5] = {78823, 78826},
		[9] = {78825},
	},

	[78864] = { -- Chest of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {78752, 78753},
		[3] = {78756},
		[7] = {78818, 78819, 78820},
	},

	[78865] = { -- Gauntlets of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {78774},
		[6] = {78765, 78773},
		[8] = {78766},
		[11] = {78771, 78775, 78779},
	},

	[78866] = { -- Gauntlets of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {78768, 78770, 78772},
		[5] = {78777, 78778},
		[9] = {78776},
	},

	[78867] = { -- Gauntlets of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {78763, 78764},
		[3] = {78769},
		[7] = {78761, 78762, 78767},
	},

	[78868] = { -- Crown of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {78794},
		[6] = {78782, 78792},
		[8] = {78796},
		[11] = {78785, 78789, 78791},
	},

	[78869] = { -- Crown of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {78787, 78788, 78790},
		[5] = {78795, 78798},
		[9] = {78797},
	},

	[78870] = { -- Crown of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {78783, 78784},
		[3] = {78793},
		[7] = {78780, 78781, 78786},
	},

	[78871] = { -- Leggings of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {78803},
		[6] = {78802, 78811},
		[8] = {78815},
		[11] = {78805, 78808, 78809},
	},

	[78872] = { -- Leggings of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {78807, 78810, 78812},
		[5] = {78814, 78817},
		[9] = {78816},
	},

	[78873] = { -- Leggings of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {78800, 78801},
		[3] = {78804},
		[7] = {78799, 78806, 78813},
	},

	[78874] = { -- Shoulders of the Corrupted Vanquisher
		[0] = REDEEM_TIER_13,
		[4] = {78833},
		[6] = {78846, 78831},
		[8] = {78843},
		[11] = {78838, 78839, 78835},
	},

	[78875] = { -- Shoulders of the Corrupted Conqueror
		[0] = REDEEM_TIER_13,
		[2] = {78840, 78841, 78837},
		[5] = {78842, 78845},
		[9] = {78844},
	},

	[78876] = { -- Shoulders of the Corrupted Protector
		[0] = REDEEM_TIER_13,
		[1] = {78829, 78830},
		[3] = {78832},
		[7] = {78828, 78834, 78836},
	},

	[89234] = { -- Helm of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {85301},
		[6] = {85316, 85336},
		[8] = {85377},
		[11] = {85307, 85311, 85357, 85381},
	},

	[89235] = { -- Helm of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {85321, 85341, 85346},
		[5] = {85362, 85365},
		[9] = {85370},
	},

	[89236] = { -- Helm of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {85326, 85333},
		[3] = {85296},
		[7] = {85286, 85291, 85351},
		[10] = {85386, 85390, 85396},
	},

	[89237] = { -- Chest of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {85323, 85343, 85348},
		[5] = {85360, 85367},
		[9] = {85372},
	},

	[89238] = { -- Chest of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {85328, 85332},
		[3] = {85298},
		[7] = {85288, 85289, 85353},
		[10] = {85394, 85388, 85392},
	},

	[89239] = { -- Chest of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {85303},
		[6] = {85318, 85338},
		[8] = {85375},
		[11] = {85305, 85313, 85355, 85379},
	},

	[89240] = { -- Gauntlets of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {85322, 85342, 85347},
		[5] = {85363, 85364},
		[9] = {85369},
	},

	[89241] = { -- Gauntlets of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {85327, 85331},
		[3] = {85297},
		[7] = {85287, 85290, 85352},
		[10] = {85387, 85389, 85395},
	},

	[89242] = { -- Gauntlets of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {85302},
		[6] = {85317, 85337},
		[8] = {85378},
		[11] = {85308, 85312, 85358, 85380},
	},

	[89243] = { -- Leggings of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {85320, 85340, 85345},
		[5] = {85361, 85366},
		[9] = {85371},
	},

	[89244] = { -- Leggings of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {85325, 85330},
		[3] = {85295},
		[7] = {85285, 85292, 85350},
		[10] = {85385, 85391, 85397},
	},

	[89245] = { -- Leggings of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {85300},
		[6] = {85315, 85335},
		[8] = {85376},
		[11] = {85306, 85310, 85356, 85382},
	},

	[89246] = { -- Shoulders of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {85319, 85339, 85344},
		[5] = {85359, 85368},
		[9] = {85373},
	},

	[89247] = { -- Shoulders of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {85324, 85329},
		[3] = {85294},
		[7] = {85284, 85293, 85349},
		[10] = {85384, 85393, 85398},
	},

	[89248] = { -- Shoulders of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {85299},
		[6] = {85314, 85334},
		[8] = {85374},
		[11] = {85304, 85309, 85354, 85383},
	},

	[89249] = { -- Chest of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {87124},
		[6] = {86913, 86918},
		[8] = {87010},
		[11] = {86923, 86931, 86936, 86938},
	},

	[89250] = { -- Chest of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {87099, 87104, 87109},
		[5] = {87117, 87122},
		[9] = {87190},
	},

	[89251] = { -- Chest of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {87193, 87197},
		[3] = {87002},
		[7] = {87129, 87134, 87139},
		[10] = {87084, 87092, 87094},
	},

	[89252] = { -- Leggings of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {87127},
		[6] = {86916, 86921},
		[8] = {87009},
		[11] = {86926, 86930, 86935, 86941},
	},

	[89253] = { -- Leggings of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {87102, 87107, 87112},
		[5] = {87116, 87121},
		[9] = {87189},
	},

	[89254] = { -- Leggings of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {87195, 87200},
		[3] = {87005},
		[7] = {87132, 87137, 87142},
		[10] = {87087, 87091, 87097},
	},

	[89255] = { -- Gauntlets of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {87125},
		[6] = {86914, 86919},
		[8] = {87007},
		[11] = {86924, 86928, 86933, 86939},
	},

	[89256] = { -- Gauntlets of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {87100, 87105, 87110},
		[5] = {87114, 87119},
		[9] = {87187},
	},

	[89257] = { -- Gauntlets of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {87194, 87198},
		[3] = {87003},
		[7] = {87130, 87135, 87140},
		[10] = {87085, 87089, 87095},
	},

	[89258] = { -- Helm of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {87126},
		[6] = {86915, 86920},
		[8] = {87008},
		[11] = {86934, 86940, 86925, 86929},
	},

	[89259] = { -- Helm of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {87101, 87106, 87111},
		[5] = {87115, 87120},
		[9] = {87188},
	},

	[89260] = { -- Helm of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {87192, 87199},
		[3] = {87004},
		[7] = {87131, 87136, 87141},
		[10] = {87086, 87090, 87096},
	},

	[89261] = { -- Shoulders of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {87128},
		[6] = {86917, 86922},
		[8] = {87011},
		[11] = {86927, 86932, 86937, 86942},
	},

	[89262] = { -- Shoulders of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {87103, 87108, 87113},
		[5] = {87118, 87123},
		[9] = {87191},
	},

	[89263] = { -- Shoulders of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {87196, 87201},
		[3] = {87006},
		[7] = {87133, 87138, 87143},
		[10] = {87088, 87093, 87098},
	},

	[89264] = { -- Chest of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {86643},
		[6] = {86658, 86678},
		[8] = {86715},
		[11] = {86719, 86645, 86653, 86695},
	},

	[89265] = { -- Chest of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {86663, 86683, 86688},
		[5] = {86700, 86707},
		[9] = {86712},
	},

	[89266] = { -- Chest of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {86668, 86672},
		[3] = {86638},
		[7] = {86693, 86628, 86629},
		[10] = {86728, 86732, 86734},
	},

	[89267] = { -- Leggings of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {86640},
		[6] = {86655, 86675},
		[8] = {86716},
		[11] = {86646, 86650, 86696, 86722},
	},

	[89268] = { -- Leggings of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {86660, 86680, 86685},
		[5] = {86706, 86701},
		[9] = {86711},
	},

	[89269] = { -- Leggings of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {86665, 86670},
		[3] = {86635},
		[7] = {86632, 86690, 86625},
		[10] = {86725, 86731, 86737},
	},

	[89270] = { -- Gauntlets of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {86642},
		[6] = {86657, 86677},
		[8] = {86718},
		[11] = {86648, 86652, 86698, 86720},
	},

	[89271] = { -- Gauntlets of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {86662, 86682, 86687},
		[5] = {86703, 86704},
		[9] = {86709},
	},

	[89272] = { -- Gauntlets of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {86667, 86671},
		[3] = {86637},
		[7] = {86627, 86630, 86692},
		[10] = {86727, 86729, 86735},
	},

	[89273] = { -- Helm of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {86641},
		[6] = {86656, 86676},
		[8] = {86717},
		[11] = {86647, 86651, 86697, 86721},
	},

	[89274] = { -- Helm of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {86661, 86681, 86686},
		[5] = {86702, 86705},
		[9] = {86710},
	},

	[89275] = { -- Helm of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {86666, 86673},
		[3] = {86636},
		[7] = {86626, 86631, 86691},
		[10] = {86726, 86730, 86736},
	},

	[89276] = { -- Shoulders of the Shadowy Vanquisher
		[0] = REDEEM_MOP_OXHEART,
		[4] = {86639},
		[6] = {86654, 86674},
		[8] = {86714},
		[11] = {86644, 86649, 86694, 86723},
	},

	[89277] = { -- Shoulders of the Shadowy Conqueror
		[0] = REDEEM_MOP_OXHEART,
		[2] = {86659, 86679, 86684},
		[5] = {86699, 86708},
		[9] = {86713},
	},

	[89278] = { -- Shoulders of the Shadowy Protector
		[0] = REDEEM_MOP_OXHEART,
		[1] = {86664, 86669},
		[3] = {86634},
		[7] = {86624, 86633, 86689},
		[10] = {86724, 86733, 86738},
	},

	[95569] = { -- Chest of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {95305},
		[6] = {95225, 95230},
		[8] = {95263},
		[11] = {95235, 95243, 95248, 95250},
	},

	[95570] = { -- Gauntlets of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {95306},
		[6] = {95226, 95231},
		[8] = {95260},
		[11] = {95236, 95240, 95245, 95251},
	},

	[95571] = { -- Helm of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {95307},
		[6] = {95227, 95232},
		[8] = {95261},
		[11] = {95237, 95241, 95246, 95252},
	},

	[95572] = { -- Leggings of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {95308},
		[6] = {95228, 95233},
		[8] = {95262},
		[11] = {95238, 95242, 95247, 95253},
	},

	[95573] = { -- Shoulders of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {95309},
		[6] = {95229, 95234},
		[8] = {95264},
		[11] = {95239, 95244, 95249, 95254},
	},

	[95574] = { -- Chest of the Crackling Conqueror
		[0] = REDEEM_TIER_15,
		[2] = {95280, 95285, 95290},
		[5] = {95298, 95303},
		[9] = {95328},
	},

	[95575] = { -- Gauntlets of the Crackling Conqueror
		[0] = REDEEM_TIER_15,
		[2] = {95281, 95286, 95291},
		[5] = {95295, 95300},
		[9] = {95325},
	},

	[95576] = { -- Leggings of the Crackling Conqueror
		[0] = REDEEM_TIER_15,
		[2] = {95283, 95288, 95293},
		[5] = {95297, 95302},
		[9] = {95327},
	},

	[95577] = { -- Helm of the Crackling Conqueror
		[0] = REDEEM_TIER_15,
		[2] = {95282, 95287, 95292},
		[5] = {95296, 95301},
		[9] = {95326},
	},

	[95578] = { -- Shoulders of the Crackling Conqueror
		[0] = REDEEM_TIER_15,
		[2] = {95284, 95289, 95294},
		[5] = {95299, 95304},
		[9] = {95329},
	},

	[95579] = { -- Chest of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {95331, 95335},
		[3] = {95255},
		[7] = {95310, 95315, 95320},
		[10] = {95265, 95273, 95275},
	},

	[95580] = { -- Gauntlets of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {95332, 95336},
		[3] = {95256},
		[7] = {95311, 95316, 95321},
		[10] = {95266, 95270, 95276},
	},

	[95581] = { -- Leggings of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {95333, 95338},
		[3] = {95258},
		[7] = {95313, 95318, 95323},
		[10] = {95268, 95272, 95278},
	},

	[95582] = { -- Helm of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {95330, 95337},
		[3] = {95257},
		[7] = {95312, 95317, 95322},
		[10] = {95267, 95271, 95277},
	},

	[95583] = { -- Shoulders of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {95334, 95339},
		[3] = {95259},
		[7] = {95314, 95319, 95324},
		[10] = {95269, 95274, 95279},
	},

	[95822] = { -- Chest of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {95935},
		[6] = {95825, 95830},
		[8] = {95893},
		[11] = {95843, 95848, 95850, 95835},
	},

	[95823] = { -- Chest of the Crackling Conqueror
		[0] = REDEEM_TIER_15,
		[2] = {95910, 95915, 95920},
		[5] = {95928, 95933},
		[9] = {95984},
	},

	[95824] = { -- Chest of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {95987, 95991},
		[3] = {95882},
		[7] = {95940, 95945, 95950},
		[10] = {95895, 95903, 95905},
	},

	[95855] = { -- Gauntlets of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {95936},
		[6] = {95826, 95831},
		[8] = {95890},
		[11] = {95836, 95840, 95845, 95851},
	},

	[95856] = { -- Gauntlets of the Crackling Conqueror
		[0] = REDEEM_TIER_15,
		[2] = {95911, 95916, 95921},
		[5] = {95925, 95930},
		[9] = {95981},
	},

	[95857] = { -- Gauntlets of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {95988, 95992},
		[3] = {95883},
		[7] = {95941, 95946, 95951},
		[10] = {95896, 95900, 95906},
	},

	[95879] = { -- Helm of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {95937},
		[6] = {95827, 95832},
		[8] = {95891},
		[11] = {95837, 95841, 95846, 95852},
	},

	[95880] = { -- Helm of the Crackling Conqueror
		[0] = REDEEM_TIER_15,
		[2] = {95912, 95917, 95922},
		[5] = {95926, 95931},
		[9] = {95982},
	},

	[95881] = { -- Helm of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {95986, 95993},
		[3] = {95884},
		[7] = {95942, 95947, 95952},
		[10] = {95897, 95901, 95907},
	},

	[95887] = { -- Leggings of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {95938},
		[6] = {95828, 95833},
		[8] = {95892},
		[11] = {95838, 95842, 95847, 95853},
	},

	[95889] = { -- Leggings of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {95989, 95994},
		[3] = {95885},
		[7] = {95943, 95948, 95953},
		[10] = {95898, 95902, 95908},
	},

	[95955] = { -- Shoulders of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {95939},
		[6] = {95834, 95829},
		[8] = {95894},
		[11] = {95839, 95844, 95849, 95854},
	},

	[95956] = { -- Shoulders of the Crackling Conqueror
		[0] = REDEEM_TIER_15,
		[2] = {95924, 95914, 95919},
		[5] = {95929, 95934},
		[9] = {95985},
	},

	[95957] = { -- Shoulders of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {95990, 95995},
		[3] = {95886},
		[7] = {95944, 95949, 95954},
		[10] = {95899, 95904, 95909},
	},

	[96566] = { -- Chest of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {96679},
		[6] = {96569, 96574},
		[8] = {96637},
		[11] = {96579, 96587, 96592, 96594},
	},

	[96567] = { -- Chest of the Crackling Conqueror
		[0] = REDEEM_TIER_15,
		[2] = {96654, 96659, 96664},
		[5] = {96672, 96677},
		[9] = {96728},
	},

	[96568] = { -- Chest of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {96731, 96735},
		[3] = {96626},
		[7] = {96694, 96684, 96689},
		[10] = {96639, 96647, 96649},
	},

	[96599] = { -- Gauntlets of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {96680},
		[6] = {96570, 96575},
		[8] = {96634},
		[11] = {96580, 96584, 96589, 96595},
	},

	[96601] = { -- Gauntlets of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {96732, 96736},
		[3] = {96627},
		[7] = {96695, 96685, 96690},
		[10] = {96640, 96644, 96650},
	},

	[96623] = { -- Helm of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {96681},
		[6] = {96571, 96576},
		[8] = {96635},
		[11] = {96581, 96585, 96590, 96596},
	},

	[96624] = { -- Helm of the Crackling Conqueror
		[0] = REDEEM_TIER_15,
		[2] = {96656, 96661, 96666},
		[5] = {96670, 96675},
		[9] = {96726},
	},

	[96625] = { -- Helm of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {96730, 96737},
		[3] = {96628},
		[7] = {96686, 96691, 96696},
		[10] = {96641, 96645, 96651},
	},

	[96631] = { -- Leggings of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {96682},
		[6] = {96572, 96577},
		[8] = {96636},
		[11] = {96582, 96586, 96591, 96597},
	},

	[96632] = { -- Leggings of the Crackling Conqueror
		[0] = REDEEM_TIER_15,
		[2] = {96657, 96662, 96667},
		[5] = {96671, 96676},
		[9] = {96727},
	},

	[96633] = { -- Leggings of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {96733, 96738},
		[3] = {96629},
		[7] = {96687, 96692, 96697},
		[10] = {96642, 96646, 96652},
	},

	[96699] = { -- Shoulders of the Crackling Vanquisher
		[0] = REDEEM_TIER_15,
		[4] = {96683},
		[6] = {96573, 96578},
		[8] = {96638},
		[11] = {96583, 96588, 96593, 96598},
	},

	[96700] = { -- Shoulders of the Crackling Conqueror
		[0] = REDEEM_TIER_15,
		[2] = {96658, 96663, 96668},
		[5] = {96673, 96678},
		[9] = {96729},
	},

	[96701] = { -- Shoulders of the Crackling Protector
		[0] = REDEEM_TIER_15,
		[1] = {96734, 96739},
		[3] = {96630},
		[7] = {96688, 96693, 96698},
		[10] = {96643, 96648, 96653},
	},

	[99667] = { -- Gauntlets of the Cursed Protector (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[1] = {99034, 99038},
		[3] = {99086},
		[7] = {98993, 99088, 98988},
		[10] = {99064, 99068, 99072},
	},

	[99668] = { -- Shoulders of the Cursed Vanquisher (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[4] = {99010},
		[6] = {99040, 99059},
		[8] = {99079},
		[11] = {98978, 98998, 99016, 99022},
	},

	[99669] = { -- Shoulders of the Cursed Conqueror (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[2] = {98987, 99027, 99076},
		[5] = {99005, 99018},
		[9] = {99045},
	},

	[99670] = { -- Shoulders of the Cursed Protector (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[1] = {99030, 99036},
		[3] = {99082},
		[7] = {99091, 98977, 98991},
		[10] = {99051, 99062, 99075},
	},

	[99671] = { -- Helm of the Cursed Vanquisher (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[4] = {99008},
		[6] = {99049, 99057},
		[8] = {99084},
		[11] = {98995, 99001, 99013, 99043},
	},

	[99672] = { -- Helm of the Cursed Conqueror (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[2] = {98979, 98985, 99029},
		[5] = {99020, 99024},
		[9] = {99054},
	},

	[99673] = { -- Helm of the Cursed Protector (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[1] = {99032, 99046},
		[3] = {99080},
		[7] = {99089, 98983, 98989},
		[10] = {99065, 99069, 99073},
	},

	[99674] = { -- Leggings of the Cursed Vanquisher (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[4] = {99009},
		[6] = {99039, 99058},
		[8] = {99077},
		[11] = {98981, 98996, 99014, 99044},
	},

	[99675] = { -- Leggings of the Cursed Conqueror (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[2] = {99026, 98980, 98986},
		[5] = {99025, 99021},
		[9] = {99055},
	},

	[99676] = { -- Leggings of the Cursed Protector (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[1] = {99033, 99035},
		[3] = {99081},
		[7] = {98984, 98990, 99090},
		[10] = {99050, 99070, 99074},
	},

	[99677] = { -- Chest of the Cursed Vanquisher (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[4] = {99006},
		[6] = {99060, 99066},
		[8] = {99078},
		[11] = {98997, 98999, 99015, 99041},
	},

	[99678] = { -- Chest of the Cursed Conqueror (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[2] = {99003, 99031, 99052},
		[5] = {99004, 99017},
		[9] = {99056},
	},

	[99679] = { -- Chest of the Cursed Protector (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[1] = {99037, 99047},
		[3] = {99085},
		[7] = {98992, 99011, 99087},
		[10] = {99061, 99063, 99071},
	},

	[99680] = { -- Gauntlets of the Cursed Vanquisher (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[4] = {99007},
		[6] = {99048, 99067},
		[8] = {99083},
		[11] = {98994, 99000, 99012, 99042},
	},

	[99681] = { -- Gauntlets of the Cursed Conqueror (Raid Finder)
		[0] = REDEEM_TIER_16_LFR,
		[2] = {98982, 99002, 99028},
		[5] = {99019, 99023},
		[9] = {99053},
	},

	[99682] = { -- Gauntlets of the Cursed Vanquisher (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[4] = {99113},
		[6] = {99189, 99193},
		[8] = {99160},
		[11] = {99163, 99174, 99181, 99185},
	},

	[99683] = { -- Helm of the Cursed Vanquisher (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[4] = {99114},
		[6] = {99190, 99194},
		[8] = {99161},
		[11] = {99164, 99175, 99178, 99182},
	},

	[99684] = { -- Leggings of the Cursed Vanquisher (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[4] = {99115},
		[6] = {99186, 99191},
		[8] = {99162},
		[11] = {99165, 99171, 99176, 99183},
	},

	[99685] = { -- Shoulders of the Cursed Vanquisher (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[4] = {99116},
		[6] = {99179, 99187},
		[8] = {99153},
		[11] = {99166, 99169, 99173, 99184},
	},

	[99686] = { -- Chest of the Cursed Conqueror (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[2] = {99126, 99133, 99136},
		[5] = {99110, 99119},
		[9] = {99204},
	},

	[99687] = { -- Gauntlets of the Cursed Conqueror (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[2] = {99127, 99134, 99137},
		[5] = {99121, 99131},
		[9] = {99096},
	},

	[99688] = { -- Leggings of the Cursed Conqueror (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[2] = {99124, 99129, 99139},
		[5] = {99118, 99123},
		[9] = {99098},
	},

	[99689] = { -- Helm of the Cursed Conqueror (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[2] = {99128, 99135, 99138},
		[5] = {99117, 99122},
		[9] = {99097},
	},

	[99690] = { -- Shoulders of the Cursed Conqueror (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[2] = {99125, 99130, 99132},
		[5] = {99111, 99120},
		[9] = {99205},
	},

	[99691] = { -- Chest of the Cursed Protector (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[1] = {99197, 99201},
		[3] = {99167},
		[7] = {99101, 99106, 99107},
		[10] = {99140, 99150, 99154},
	},

	[99692] = { -- Gauntlets of the Cursed Protector (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[1] = {99198, 99202},
		[3] = {99168},
		[7] = {99092, 99102, 99108},
		[10] = {99141, 99147, 99155},
	},

	[99693] = { -- Leggings of the Cursed Protector (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[1] = {99195, 99199},
		[3] = {99158},
		[7] = {99094, 99099, 99104},
		[10] = {99143, 99145, 99149},
	},

	[99694] = { -- Helm of the Cursed Protector (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[1] = {99203, 99206},
		[3] = {99157},
		[7] = {99093, 99103, 99109},
		[10] = {99142, 99148, 99156},
	},

	[99695] = { -- Shoulders of the Cursed Protector (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[1] = {99196, 99200},
		[3] = {99159},
		[7] = {99095, 99100, 99105},
		[10] = {99144, 99146, 99151},
	},

	[99696] = { -- Chest of the Cursed Vanquisher (Heroic)
		[0] = REDEEM_TIER_16_HEROIC,
		[4] = {99112},
		[6] = {99188, 99192},
		[8] = {99152},
		[11] = {99170, 99172, 99177, 99180},
	},

	[99712] = { -- Leggings of the Cursed Conqueror (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[2] = {99371, 99372, 99377},
		[5] = {99361, 99367},
		[9] = {99426},
	},

	[99713] = { -- Leggings of the Cursed Protector (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[1] = {99410, 99413},
		[3] = {99403},
		[7] = {99333, 99342, 99354},
		[10] = {99385, 99390, 99394},
	},

	[99714] = { -- Chest of the Cursed Vanquisher (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[4] = {99356},
		[6] = {99330, 99335},
		[8] = {99400},
		[11] = {99326, 99419, 99427, 99430},
	},

	[99715] = { -- Chest of the Cursed Conqueror (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[2] = {99368, 99374, 99387},
		[5] = {99357, 99362},
		[9] = {99416},
	},

	[99716] = { -- Chest of the Cursed Protector (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[1] = {99411, 99415},
		[3] = {99405},
		[7] = {99344, 99347, 99351},
		[10] = {99382, 99391, 99396},
	},

	[99717] = { -- Shoulders of the Cursed Vanquisher (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[4] = {99350},
		[6] = {99325, 99339},
		[8] = {99401},
		[11] = {99322, 99423, 99428, 99431},
	},

	[99718] = { -- Shoulders of the Cursed Conqueror (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[2] = {99364, 99373, 99378},
		[5] = {99358, 99363},
		[9] = {99417},
	},

	[99719] = { -- Shoulders of the Cursed Protector (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[1] = {99407, 99414},
		[3] = {99404},
		[7] = {99334, 99343, 99346},
		[10] = {99381, 99386, 99395},
	},

	[99720] = { -- Gauntlets of the Cursed Vanquisher (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[4] = {99355},
		[6] = {99331, 99336},
		[8] = {99397},
		[11] = {99327, 99420, 99432, 99435},
	},

	[99721] = { -- Gauntlets of the Cursed Conqueror (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[2] = {99369, 99375, 99380},
		[5] = {99359, 99365},
		[9] = {99424},
	},

	[99722] = { -- Gauntlets of the Cursed Protector (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[1] = {99408, 99412},
		[3] = {99406},
		[7] = {99340, 99345, 99352},
		[10] = {99383, 99388, 99392},
	},

	[99723] = { -- Helm of the Cursed Vanquisher (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[4] = {99348},
		[6] = {99323, 99337},
		[8] = {99398},
		[11] = {99328, 99421, 99433, 99436},
	},

	[99724] = { -- Helm of the Cursed Conqueror (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[2] = {99370, 99376, 99379},
		[5] = {99360, 99366},
		[9] = {99425},
	},

	[99725] = { -- Helm of the Cursed Protector (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[1] = {99409, 99418},
		[3] = {99402},
		[7] = {99332, 99341, 99353},
		[10] = {99393, 99384, 99389},
	},

	[99726] = { -- Leggings of the Cursed Vanquisher (Mythic)
		[0] = REDEEM_TIER_16_MYTHIC,
		[4] = {99349},
		[6] = {99324, 99338},
		[8] = {99399},
		[11] = {99329, 99422, 99429, 99434},
	},

	[99742] = { -- Chest of the Cursed Vanquisher
		[0] = REDEEM_TIER_16_NORMAL,
		[4] = {99629},
		[6] = {99608, 99640},
		[8] = {99658},
		[11] = {99582, 99620, 99622, 99632},
	},

	[99743] = { -- Chest of the Cursed Conqueror
		[0] = REDEEM_TIER_16_NORMAL,
		[2] = {99566, 99598, 99626},
		[5] = {99584, 99627},
		[9] = {99570},
	},

	[99744] = { -- Chest of the Cursed Protector
		[0] = REDEEM_TIER_16_NORMAL,
		[1] = {99562, 99603},
		[3] = {99577},
		[7] = {99636, 99579, 99615},
		[10] = {99641, 99643, 99555},
	},

	[99745] = { -- Gauntlets of the Cursed Vanquisher
		[0] = REDEEM_TIER_16_NORMAL,
		[4] = {99630},
		[6] = {99604, 99609},
		[8] = {99575},
		[11] = {99623, 99633, 99637, 99617},
	},

	[99746] = { -- Gauntlets of the Cursed Conqueror
		[0] = REDEEM_TIER_16_NORMAL,
		[2] = {99595, 99625, 99648},
		[5] = {99586, 99590},
		[9] = {99567},
	},

	[99747] = { -- Gauntlets of the Cursed Protector
		[0] = REDEEM_TIER_16_NORMAL,
		[1] = {99559, 99563},
		[3] = {99578},
		[7] = {99616, 99580, 99611},
		[10] = {99644, 99552, 99556},
	},

	[99748] = { -- Helm of the Cursed Vanquisher
		[0] = REDEEM_TIER_16_NORMAL,
		[4] = {99631},
		[6] = {99571, 99605},
		[8] = {99576},
		[11] = {99599, 99618, 99624, 99638},
	},

	[99749] = { -- Helm of the Cursed Conqueror
		[0] = REDEEM_TIER_16_NORMAL,
		[2] = {99596, 99651, 99665},
		[5] = {99587, 99591},
		[9] = {99568},
	},

	[99750] = { -- Helm of the Cursed Protector
		[0] = REDEEM_TIER_16_NORMAL,
		[1] = {99557, 99602},
		[3] = {99660},
		[7] = {99612, 99645, 99649},
		[10] = {99553, 99607, 99653},
	},

	[99751] = { -- Leggings of the Cursed Vanquisher
		[0] = REDEEM_TIER_16_NORMAL,
		[4] = {99634},
		[6] = {99564, 99572},
		[8] = {99657},
		[11] = {99581, 99600, 99610, 99619},
	},

	[99752] = { -- Leggings of the Cursed Conqueror
		[0] = REDEEM_TIER_16_NORMAL,
		[2] = {99593, 99661, 99666},
		[5] = {99588, 99592},
		[9] = {99569},
	},

	[99753] = { -- Leggings of the Cursed Protector
		[0] = REDEEM_TIER_16_NORMAL,
		[1] = {99558, 99560},
		[3] = {99573},
		[7] = {99613, 99646, 99650},
		[10] = {99554, 99606, 99654},
	},

	[99754] = { -- Shoulders of the Cursed Vanquisher
		[0] = REDEEM_TIER_16_NORMAL,
		[4] = {99635},
		[6] = {99639, 99652},
		[8] = {99659},
		[11] = {99664, 99583, 99589, 99621},
	},

	[99755] = { -- Shoulders of the Cursed Conqueror
		[0] = REDEEM_TIER_16_NORMAL,
		[2] = {99594, 99656, 99662},
		[5] = {99585, 99628},
		[9] = {99601},
	},

	[99756] = { -- Shoulders of the Cursed Protector
		[0] = REDEEM_TIER_16_NORMAL,
		[1] = {99561, 99597},
		[3] = {99574},
		[7] = {99614, 99647, 99663},
		[10] = {99565, 99642, 99655},
	},

	[124550] = { -- Baleful Bracers
		["DEPENDANT_WARNING"] = true,
		[1] = {124566},
		[2] = {124566},
		[6] = {124566},
		[3] = {124565},
		[7] = {124565},
		[8] = {124563},
		[5] = {124563},
		[9] = {124563},
		[11] = {124564},
		[12] = {124564},
		[10] = {124564},
		[4] = {124564},
	},

	[124551] = { -- Baleful Tunic
		["DEPENDANT_WARNING"] = true,
		[1] = {124569},
		[2] = {124569},
		[6] = {124569},
		[3] = {124568},
		[7] = {124568},
		[8] = {124570},
		[5] = {124570},
		[9] = {124570},
		[11] = {124567},
		[12] = {124567},
		[10] = {124567},
		[4] = {124567},
	},

	[124552] = { -- Baleful Treads
		["DEPENDANT_WARNING"] = true,
		[1] = {124574},
		[2] = {124574},
		[6] = {124574},
		[3] = {124573},
		[7] = {124573},
		[8] = {124571},
		[5] = {124571},
		[9] = {124571},
		[11] = {124572},
		[12] = {124572},
		[10] = {124572},
		[4] = {124572},
	},

	[124553] = { -- Baleful Gauntlets
		["DEPENDANT_WARNING"] = true,
		[1] = {124578},
		[2] = {124578},
		[6] = {124578},
		[3] = {124577},
		[7] = {124577},
		[8] = {124575},
		[5] = {124575},
		[9] = {124575},
		[11] = {124576},
		[12] = {124576},
		[10] = {124576},
		[4] = {124576},
	},

	[124554] = { -- Baleful Hood
		["DEPENDANT_WARNING"] = true,
		[1] = {124582},
		[2] = {124582},
		[6] = {124582},
		[3] = {124581},
		[7] = {124581},
		[8] = {124579},
		[5] = {124579},
		[9] = {124579},
		[11] = {124580},
		[12] = {124580},
		[10] = {124580},
		[4] = {124580},
	},

	[124555] = { -- Baleful Leggings
		["DEPENDANT_WARNING"] = true,
		[1] = {124586},
		[2] = {124586},
		[6] = {124586},
		[3] = {124585},
		[7] = {124585},
		[8] = {124583},
		[5] = {124583},
		[9] = {124583},
		[11] = {124584},
		[12] = {124584},
		[10] = {124584},
		[4] = {124584},
	},

	[124556] = { -- Baleful Spaulders
		["DEPENDANT_WARNING"] = true,
		[1] = {124590},
		[2] = {124590},
		[6] = {124590},
		[3] = {124589},
		[7] = {124589},
		[8] = {124587},
		[5] = {124587},
		[9] = {124587},
		[11] = {124588},
		[12] = {124588},
		[10] = {124588},
		[4] = {124588},
	},

	[124557] = { -- Baleful Girdle
		["DEPENDANT_WARNING"] = true,
		[1] = {124594},
		[2] = {124594},
		[6] = {124594},
		[3] = {124593},
		[7] = {124593},
		[8] = {124591},
		[5] = {124591},
		[9] = {124591},
		[11] = {124592},
		[12] = {124592},
		[10] = {124592},
		[4] = {124592},
	},

	[127777] = { -- Baleful Cloth Bracers
		["DEPENDANT_WARNING"] = true,
		[8] = {124563},
		[5] = {124563},
		[9] = {124563},
	},

	[127778] = { -- Baleful Cloth Robe
		["DEPENDANT_WARNING"] = true,
		[8] = {124570},
		[5] = {124570},
		[9] = {124570},
	},

	[127779] = { -- Baleful Cloth Treads
		["DEPENDANT_WARNING"] = true,
		[8] = {124571},
		[5] = {124571},
		[9] = {124571},
	},

	[127780] = { -- Baleful Cloth Gauntlets
		["DEPENDANT_WARNING"] = true,
		[8] = {124575},
		[5] = {124575},
		[9] = {124575},
	},

	[127781] = { -- Baleful Cloth Hood
		["DEPENDANT_WARNING"] = true,
		[8] = {124579},
		[5] = {124579},
		[9] = {124579},
	},

	[127782] = { -- Baleful Cloth Leggings
		["DEPENDANT_WARNING"] = true,
		[8] = {124583},
		[5] = {124583},
		[9] = {124583},
	},

	[127783] = { -- Baleful Cloth Spaulders
		["DEPENDANT_WARNING"] = true,
		[8] = {124587},
		[5] = {124587},
		[9] = {124587},
	},

	[127784] = { -- Baleful Cloth Girdle
		["DEPENDANT_WARNING"] = true,
		[8] = {124591},
		[5] = {124591},
		[9] = {124591},
	},

	[127790] = { -- Baleful Leather Bracers
		["DEPENDANT_WARNING"] = true,
		[11] = {124564},
		[12] = {124564},
		[10] = {124564},
		[4] = {124564},
	},

	[127791] = { -- Baleful Leather Tunic
		["DEPENDANT_WARNING"] = true,
		[11] = {124567},
		[12] = {124567},
		[10] = {124567},
		[4] = {124567},
	},

	[127792] = { -- Baleful Leather Treads
		["DEPENDANT_WARNING"] = true,
		[11] = {124572},
		[12] = {124572},
		[10] = {124572},
		[4] = {124572},
	},

	[127793] = { -- Baleful Leather Gauntlets
		["DEPENDANT_WARNING"] = true,
		[11] = {124576},
		[12] = {124576},
		[10] = {124576},
		[4] = {124576},
	},

	[127794] = { -- Baleful Leather Hood
		["DEPENDANT_WARNING"] = true,
		[11] = {124580},
		[12] = {124580},
		[10] = {124580},
		[4] = {124580},
	},

	[127795] = { -- Baleful Leather Leggings
		["DEPENDANT_WARNING"] = true,
		[11] = {124584},
		[12] = {124584},
		[10] = {124584},
		[4] = {124584},
	},

	[127796] = { -- Baleful Leather Spaulders
		["DEPENDANT_WARNING"] = true,
		[11] = {124588},
		[12] = {124588},
		[10] = {124588},
		[4] = {124588},
	},

	[127797] = { -- Baleful Leather Girdle
		["DEPENDANT_WARNING"] = true,
		[11] = {124592},
		[12] = {124592},
		[10] = {124592},
		[4] = {124592},
	},

	[127803] = { -- Baleful Mail Bracers
		["DEPENDANT_WARNING"] = true,
		[3] = {124565},
		[7] = {124565},
	},

	[127804] = { -- Baleful Mail Robe
		["DEPENDANT_WARNING"] = true,
		[3] = {124568},
		[7] = {124568},
	},

	[127805] = { -- Baleful Mail Treads
		["DEPENDANT_WARNING"] = true,
		[3] = {124573},
		[7] = {124573},
	},

	[127806] = { -- Baleful Mail Gauntlets
		["DEPENDANT_WARNING"] = true,
		[3] = {124577},
		[7] = {124577},
	},

	[127807] = { -- Baleful Mail Hood
		["DEPENDANT_WARNING"] = true,
		[3] = {124581},
		[7] = {124581},
	},

	[127808] = { -- Baleful Mail Leggings
		["DEPENDANT_WARNING"] = true,
		[3] = {124585},
		[7] = {124585},
	},

	[127809] = { -- Baleful Mail Spaulders
		["DEPENDANT_WARNING"] = true,
		[3] = {124589},
		[7] = {124589},
	},

	[127810] = { -- Baleful Mail Girdle
		["DEPENDANT_WARNING"] = true,
		[3] = {124593},
		[7] = {124593},
	},

	[127816] = { -- Baleful Plate Bracers
		["DEPENDANT_WARNING"] = true,
		[1] = {124566},
		[2] = {124566},
		[6] = {124566},
	},

	[127817] = { -- Baleful Plate Chest
		["DEPENDANT_WARNING"] = true,
		[1] = {124569},
		[2] = {124569},
		[6] = {124569},
	},

	[127818] = { -- Baleful Plate Treads
		["DEPENDANT_WARNING"] = true,
		[1] = {124574},
		[2] = {124574},
		[6] = {124574},
	},

	[127819] = { -- Baleful Plate Gauntlets
		["DEPENDANT_WARNING"] = true,
		[1] = {124578},
		[2] = {124578},
		[6] = {124578},
	},

	[127820] = { -- Baleful Plate Hood
		["DEPENDANT_WARNING"] = true,
		[1] = {124582},
		[2] = {124582},
		[6] = {124582},
	},

	[127821] = { -- Baleful Plate Leggings
		["DEPENDANT_WARNING"] = true,
		[1] = {124586},
		[2] = {124586},
		[6] = {124586},
	},

	[127822] = { -- Baleful Plate Spaulders
		["DEPENDANT_WARNING"] = true,
		[1] = {124590},
		[2] = {124590},
		[6] = {124590},
	},

	[127823] = { -- Baleful Plate Girdle
		["DEPENDANT_WARNING"] = true,
		[1] = {124594},
		[2] = {124594},
		[6] = {124594},
	},

	[128348] = { -- Baleful Spaulders
		["DEPENDANT_WARNING"] = true,
		[1] = {124590},
		[2] = {124590},
		[6] = {124590},
		[3] = {124589},
		[7] = {124589},
		[8] = {124587},
		[5] = {124587},
		[9] = {124587},
		[11] = {124588},
		[12] = {124588},
		[10] = {124588},
		[4] = {124588},
	},

	[127800] = { -- Baleful Cloak
		["DEPENDANT_WARNING"] = true,
		[1] = {124613, 124616, 124614, 124615, 124618, 124617},
		[2] = {124613, 124616, 124614, 124615, 124618, 124617},
		[6] = {124613, 124616, 124614, 124615, 124618, 124617},
		[3] = {124613, 124616, 124614, 124615, 124618, 124617},
		[7] = {124613, 124616, 124614, 124615, 124618, 124617},
		[8] = {124613, 124616, 124614, 124615, 124618, 124617},
		[5] = {124613, 124616, 124614, 124615, 124618, 124617},
		[9] = {124613, 124616, 124614, 124615, 124618, 124617},
		[11] = {124613, 124616, 124614, 124615, 124618, 124617},
		[12] = {124613, 124616, 124614, 124615, 124618, 124617},
		[10] = {124613, 124616, 124614, 124615, 124618, 124617},
		[4] = {124613, 124616, 124614, 124615, 124618, 124617},
	},

	[124560] = { -- Baleful Cloak
		["DEPENDANT_WARNING"] = true,
		[1] = {124613, 124616, 124614, 124615, 124618, 124617},
		[2] = {124613, 124616, 124614, 124615, 124618, 124617},
		[6] = {124613, 124616, 124614, 124615, 124618, 124617},
		[3] = {124613, 124616, 124614, 124615, 124618, 124617},
		[7] = {124613, 124616, 124614, 124615, 124618, 124617},
		[8] = {124613, 124616, 124614, 124615, 124618, 124617},
		[5] = {124613, 124616, 124614, 124615, 124618, 124617},
		[9] = {124613, 124616, 124614, 124615, 124618, 124617},
		[11] = {124613, 124616, 124614, 124615, 124618, 124617},
		[12] = {124613, 124616, 124614, 124615, 124618, 124617},
		[10] = {124613, 124616, 124614, 124615, 124618, 124617},
		[4] = {124613, 124616, 124614, 124615, 124618, 124617},
	},

	[124562] = { -- Baleful Armament
		["DEPENDANT_WARNING"] = true,
		[1] = {BALEFUL_WEP_STAFF, BALEFUL_WEP_2H_SWORD, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_GUN, BALEFUL_WEP_DAGGER, BALEFUL_WEP_POLEARM, BALEFUL_WEP_1H_AXE}, -- Warrior
		[2] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_2H_SWORD, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_POLEARM}, -- Paladin
		[6] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_2H_SWORD, BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_POLEARM}, -- Death Knight
		[3] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_2H_SWORD, BALEFUL_WEP_POLEARM, BALEFUL_WEP_STAFF, BALEFUL_WEP_DAGGER, BALEFUL_WEP_GUN}, -- Hunter
		[7] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_STAFF, BALEFUL_WEP_DAGGER}, -- Shaman 
		[8] = {BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_DAGGER}, -- Mage
		[5] = {BALEFUL_WEP_1H_MACE, BALEFUL_WEP_STAFF, BALEFUL_WEP_DAGGER}, -- Priest
		[9] = {BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_STAFF, BALEFUL_WEP_DAGGER}, -- Warlock
		[11] = {BALEFUL_WEP_1H_MACE, BALEFUL_WEP_POLEARM, BALEFUL_WEP_STAFF, BALEFUL_WEP_DAGGER}, -- Druid
		[12] = {BALEFUL_WEP_DAGGER, BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_1H_SWORD}, -- Demon Hunter?
		[10] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_POLEARM, BALEFUL_WEP_STAFF}, -- Monk
		[4] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_DAGGER, BALEFUL_WEP_GUN}, -- Rogue
	},

	[102263] = { -- Timeless Plate Chestpiece
		["DEPENDANT_WARNING"] = true,
		[1] = {101789, 101851, 101819},
		[2] = {101789, 101851, 101819},
		[6] = {101789, 101851, 101819},
	},

	[102264] = { -- Timeless Plate Boots
		["DEPENDANT_WARNING"] = true,
		[1] = {101797, 101859, 101825},
		[2] = {101797, 101859, 101825},
		[6] = {101797, 101859, 101825},
	},

	[102265] = { -- Timeless Plate Gloves
		["DEPENDANT_WARNING"] = true,
		[1] = {101791, 101853, 101820},
		[2] = {101791, 101853, 101820},
		[6] = {101791, 101853, 101820},
	},

	[102266] = { -- Timeless Plate Helm
		["DEPENDANT_WARNING"] = true,
		[1] = {101793, 101855, 101822},
		[2] = {101793, 101855, 101822},
		[6] = {101793, 101855, 101822},
	},

	[102267] = { -- Timeless Plate Leggings
		["DEPENDANT_WARNING"] = true,
		[1] = {101794, 101856, 101823},
		[2] = {101794, 101856, 101823},
		[6] = {101794, 101856, 101823},
	},

	[102268] = { -- Timeless Plate Spaulders
		["DEPENDANT_WARNING"] = true,
		[1] = {101796, 101858, 101824},
		[2] = {101796, 101858, 101824},
		[6] = {101796, 101858, 101824},
	},

	[102269] = { -- Timeless Plate Belt
		["DEPENDANT_WARNING"] = true,
		[1] = {101792, 101854, 101821},
		[2] = {101792, 101854, 101821},
		[6] = {101792, 101854, 101821},
	},

	[102270] = { -- Timeless Mail Chestpiece
		["DEPENDANT_WARNING"] = true,
		[3] = {101845, 101837},
		[7] = {101845, 101837},
	},

	[102271] = { -- Timeless Mail Boots
		["DEPENDANT_WARNING"] = true,
		[3] = {101841, 101833},
		[7] = {101841, 101833},
	},

	[102272] = { -- Timeless Mail Gloves
		["DEPENDANT_WARNING"] = true,
		[3] = {101840, 101832},
		[7] = {101840, 101832},
	},

	[102273] = { -- Timeless Mail Helm
		["DEPENDANT_WARNING"] = true,
		[3] = {101842, 101834},
		[7] = {101842, 101834},
	},

	[102274] = { -- Timeless Mail Leggings
		["DEPENDANT_WARNING"] = true,
		[3] = {101843, 101835},
		[7] = {101843, 101835},
	},

	[102275] = { -- Timeless Mail Spaulders
		["DEPENDANT_WARNING"] = true,
		[3] = {101844, 101836},
		[7] = {101844, 101836},
	},

	[102276] = { -- Timeless Mail Belt
		["DEPENDANT_WARNING"] = true,
		[3] = {101838, 101830},
		[7] = {101838, 101830},
	},

	[102277] = { -- Timeless Leather Chestpiece
		["DEPENDANT_WARNING"] = true,
		[11] = {101867, 101786},
		[12] = {101867, 101786},
		[10] = {101867, 101786},
		[4] = {101867, 101786},
	},

	[102278] = { -- Timeless Leather Boots
		["DEPENDANT_WARNING"] = true,
		[11] = {101863, 101782},
		[12] = {101863, 101782},
		[10] = {101863, 101782},
		[4] = {101863, 101782},
	},

	[102279] = { -- Timeless Leather Gloves
		["DEPENDANT_WARNING"] = true,
		[11] = {101865, 101784},
		[12] = {101865, 101784},
		[10] = {101865, 101784},
		[4] = {101865, 101784},
	},

	[102280] = { -- Timeless Leather Helm
		["DEPENDANT_WARNING"] = true,
		[11] = {101866, 101785},
		[12] = {101866, 101785},
		[10] = {101866, 101785},
		[4] = {101866, 101785},
	},

	[102281] = { -- Timeless Leather Leggings
		["DEPENDANT_WARNING"] = true,
		[11] = {101864, 101783},
		[12] = {101864, 101783},
		[10] = {101864, 101783},
		[4] = {101864, 101783},
	},

	[102282] = { -- Timeless Leather Spaulders
		["DEPENDANT_WARNING"] = true,
		[11] = {101868, 101787},
		[12] = {101868, 101787},
		[10] = {101868, 101787},
		[4] = {101868, 101787},
	},

	[102283] = { -- Timeless Leather Belt
		["DEPENDANT_WARNING"] = true,
		[11] = {101869, 101788},
		[12] = {101869, 101788},
		[10] = {101869, 101788},
		[4] = {101869, 101788},
	},

	[102284] = { -- Timeless Cloth Robes
		["DEPENDANT_WARNING"] = true,
		[8] = {101806, 101815},
		[5] = {101806, 101815},
		[9] = {101806, 101815},
	},

	[102285] = { -- Timeless Cloth Boots
		["DEPENDANT_WARNING"] = true,
		[8] = {101807, 101816},
		[5] = {101807, 101816},
		[9] = {101807, 101816},
	},

	[102286] = { -- Timeless Cloth Gloves
		["DEPENDANT_WARNING"] = true,
		[8] = {101803, 101813},
		[5] = {101803, 101813},
		[9] = {101803, 101813},
	},

	[102287] = { -- Timeless Cloth Helm
		["DEPENDANT_WARNING"] = true,
		[8] = {101802, 101812},
		[5] = {101802, 101812},
		[9] = {101802, 101812},
	},

	[102288] = { -- Timeless Cloth Leggings
		["DEPENDANT_WARNING"] = true,
		[8] = {101804, 101814},
		[5] = {101804, 101814},
		[9] = {101804, 101814},
	},

	[102289] = { -- Timeless Cloth Spaulders
		["DEPENDANT_WARNING"] = true,
		[8] = {101808, 101817},
		[5] = {101808, 101817},
		[9] = {101808, 101817},
	},

	[102290] = { -- Timeless Cloth Belt
		["DEPENDANT_WARNING"] = true,
		[8] = {101801, 101811},
		[5] = {101801, 101811},
		[9] = {101801, 101811},
	},

	[102320] = { -- Timeless Plate Bracers
		["DEPENDANT_WARNING"] = true,
		[1] = {101799, 101861, 101826},
		[2] = {101799, 101861, 101826},
		[6] = {101799, 101861, 101826},
	},

	[102321] = { -- Timeless Cloth Bracers
		["DEPENDANT_WARNING"] = true,
		[8] = {101810, 101818},
		[5] = {101810, 101818},
		[9] = {101810, 101818},
	},

	[102322] = { -- Timeless Leather Bracers
		["DEPENDANT_WARNING"] = true,
		[11] = {101862, 101781},
		[12] = {101862, 101781},
		[10] = {101862, 101781},
		[4] = {101862, 101781},
	},

	[102323] = { -- Timeless Mail Bracers
		["DEPENDANT_WARNING"] = true,
		[3] = {101839, 101831},
		[7] = {101839, 101831},
	},

	[102318] = { -- Timeless Cloak
		["DEPENDANT_WARNING"] = true,
		[1] = {101800, 101790, 101852, 101848, 101828},
		[2] = {101800, 101790, 101852, 101848, 101828},
		[6] = {101800, 101790, 101852, 101848, 101828},
		[3] = {101800, 101790, 101852, 101848, 101828},
		[7] = {101800, 101790, 101852, 101848, 101828},
		[8] = {101800, 101790, 101852, 101848, 101828},
		[5] = {101800, 101790, 101852, 101848, 101828},
		[9] = {101800, 101790, 101852, 101848, 101828},
		[11] = {101800, 101790, 101852, 101848, 101828},
		[12] = {101800, 101790, 101852, 101848, 101828},
		[10] = {101800, 101790, 101852, 101848, 101828},
		[4] = {101800, 101790, 101852, 101848, 101828},
	},
};

t.HORDE_ONLY_DATA = {
	[47242] = { -- Trophy of the Crusade
		[0] = REDEEM_TOC,
		[1] = {48465, 48463, 48391, 48461, 48392, 48393, 48462, 48464, 48394, 48395},
		[2] = {48626, 48622, 48657, 48658, 48623, 48659, 48593, 48594, 48592, 48591, 48590, 48660, 48624, 48661, 48625},
		[3] = {48271, 48272, 48273, 48274, 48270},
		[4] = {48240, 48238, 48241, 48242, 48239},
		[5] = {48094, 48062, 48096, 48063, 48064, 48095, 48065, 48066, 48092, 48093},
		[6] = {48499, 48500, 48553, 48496, 48554, 48555, 48497, 48556, 48557, 48498},
		[7] = {48363, 48334, 48364, 48304, 48332, 48365, 48335, 48331, 48300, 48361, 48301, 48333, 48302, 48362, 48303},
		[8] = {47771, 47770, 47769, 47772, 47768},
		[9] = {47807, 47803, 47804, 47805, 47806},
		[11] = {48196, 48178, 48149, 48179, 48180, 48150, 48181, 48197, 48182, 48151, 48193, 48148, 48194, 48152, 48195},
	},
};

t.ALLIANCE_ONLY_DATA = {
	[47242] = { -- Trophy of the Crusade
		[0] = REDEEM_TOC,
		[1] = {48380, 48430, 48446, 48450, 48452, 48454, 48376, 48377, 48378, 48379},
		[2] = {48575, 48576, 48577, 48578, 48579, 48607, 48608, 48609, 48610, 48611, 48637, 48638, 48639, 48640, 48641},
		[3] = {48255, 48256, 48257, 48258, 48259},
		[4] = {48223, 48224, 48225, 48226, 48227},
		[5] = {48078, 48079, 48080, 48081, 47983, 47984, 47985, 47986, 47987, 48077},
		[6] = {48481, 48482, 48483, 48484, 48485, 48538, 48539, 48540, 48541, 48542},
		[7] = {48288, 48289, 48316, 48317, 48318, 48319, 48320, 48346, 48347, 48348, 48349, 48350, 48285, 48286, 48287},
		[8] = {47753, 47754, 47755, 47756, 47757},
		[9] = {47778, 47779, 47780, 47781, 47782},
		[11] = {48211, 48212, 48133, 48134, 48135, 48136, 48210, 48137, 48163, 48164, 48165, 48166, 48167, 48208, 48209},
	},
};