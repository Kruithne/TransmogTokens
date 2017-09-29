local t = TransmogTokens;
local L = t.L;

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
    ["INVTYPE_WEAPONMAINHAND"] = 16,
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

local CLASS_WARRIOR = 1;
local CLASS_PALADIN = 2;
local CLASS_HUNTER = 3;
local CLASS_ROGUE = 4;
local CLASS_PRIEST = 5;
local CLASS_DEATHKNIGHT = 6;
local CLASS_SHAMAN = 7;
local CLASS_MAGE = 8;
local CLASS_WARLOCK = 9;
local CLASS_MONK = 10;
local CLASS_DRUID = 11;
local CLASS_DEMONHUNTER = 12;

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
	[CLASS_DEMONHUNTER] = t.ARMOR_TYPE_LEATHER,
	[CLASS_HUNTER] = t.ARMOR_TYPE_MAIL,
	[CLASS_SHAMAN] = t.ARMOR_TYPE_MAIL,
};

local REDEEM_TBC_SUNMOTE = 0;
local REDEEM_TOC = 1;
local REDEEM_TBC_TIER_6 = 2;
local REDEEM_MOP_OXHEART = 6;
local REDEEM_TIER_11 = 7;
local REDEEM_TIER_15 = 5;
local REDEEM_TIER_10 = 14;
local REDEEM_TIER_4 = 17;
local REDEEM_TIER_5 = 18;
local REDEEM_FIRELANDS_BOE = 4;
local REDEEM_TIER_17 = 19;
local REDEEM_AQ_KEYL = 20;
local REDEEM_AQ_HARO = 21;
local REDEEM_AQ_ANDO = 22;
local REDEEM_AQ_VETH = 23;
local REDEEM_AQ_KAND = 24;

t.REDEEM_LOOKUP = {
	[REDEEM_TBC_SUNMOTE] = L.REDEEM_LOOKUP["REDEEM_TBC_SUNMOTE"],
	[REDEEM_TBC_TIER_6] = L.REDEEM_LOOKUP["REDEEM_TBC_TIER_6"],
	[REDEEM_TBC_HYJAL] = L.REDEEM_LOOKUP["REDEEM_TBC_HYJAL"],
	[REDEEM_FIRELANDS_BOE] = L.REDEEM_LOOKUP["REDEEM_FIRELANDS_BOE"],

	[REDEEM_TIER_15] = L.REDEEM_LOOKUP["REDEEM_TIER_15"],
	[REDEEM_MOP_OXHEART] = L.REDEEM_LOOKUP["REDEEM_MOP_OXHEART"],
	[REDEEM_TIER_4] = L.REDEEM_LOOKUP["REDEEM_TIER_4"],
	[REDEEM_TIER_5] = L.REDEEM_LOOKUP["REDEEM_TIER_5"],

	[REDEEM_AQ_KEYL] = L.REDEEM_LOOKUP["REDEEM_AQ_KEYL"],
	[REDEEM_AQ_HARO] = L.REDEEM_LOOKUP["REDEEM_AQ_HARO"],
	[REDEEM_AQ_ANDO] = L.REDEEM_LOOKUP["REDEEM_AQ_ANDO"],
	[REDEEM_AQ_VETH] = L.REDEEM_LOOKUP["REDEEM_AQ_VETH"],
	[REDEEM_AQ_KAND] = L.REDEEM_LOOKUP["REDEEM_AQ_KAND"],
};

t.ALLIANCE_REDEEM_LOOKUP = {
	[REDEEM_TOC] = L.ALLIANCE_REDEEM_LOOKUP["REDEEM_TOC"],
	[REDEEM_TIER_11] = L.ALLIANCE_REDEEM_LOOKUP["REDEEM_TIER_11"],
	[REDEEM_TIER_17] = L.ALLIANCE_REDEEM_LOOKUP["REDEEM_TIER_17"],
};

t.HORDE_REDEEM_LOOKUP = {
	[REDEEM_TOC] = L.HORDE_REDEEM_LOOKUP["REDEEM_TOC"],
	[REDEEM_TIER_11] = L.HORDE_REDEEM_LOOKUP["REDEEM_TIER_11"],
	[REDEEM_TIER_17] = L.HORDE_REDEEM_LOOKUP["REDEEM_TIER_17"],
};

t.CLASS_REDEEM_LOOKUP = {
	[CLASS_WARRIOR] = {
		[REDEEM_TIER_10] = "Redeem: Crusader Grimtong @ Icecrown Citadel\nLocated in Light's Hammer", -- Icecrown Citadel T10 (Warriors)
	},

	[CLASS_PALADIN] = {
		[REDEEM_TIER_10] = "Redeem: Crusader Halford @ Icecrown Citadel\nLocated in Light's Hammer", -- Icecrown Citadel T10 (Paladins)
	},

	[CLASS_DEATHKNIGHT] = {
		[REDEEM_TIER_10] = "Redeem: Ormus the Penitent @ Icecrown Citadel\nLocated in Light's Hammer", -- Icecrown Citadel T10 (Death Knights)
	},

	[CLASS_MAGE] = {
		[REDEEM_TIER_10] = "Redeem: Malfus Grimfrost @ Icecrown Citadel\nLocated in Light's Hammer", -- Icecrown Citadel T10 (Mages)
	},

	[CLASS_WARLOCK] = {
		[REDEEM_TIER_10] = "Redeem: Niby the Almighty @ Icecrown Citadel\nLocated in Light's Hammer", -- Icecrown Citadel T10 (Warlocks)
	},

	[CLASS_PRIEST] = {
		[REDEEM_TIER_10] = "Redeem: Scott the Merciful @ Icecrown Citadel\nLocated in Light's Hammer", -- Icecrown Citadel T10 (Priests)
	},

	[CLASS_DRUID] = {
		[REDEEM_TIER_10] = "Redeem: Alana Moonstrike @ Icecrown Citadel\nLocated in Light's Hammer", -- Icecrown Citadel T10 (Druids)
	},

	[CLASS_ROGUE] = {
		[REDEEM_TIER_10] = "Redeem: Yili @ Icecrown Citadel\nLocated in Light's Hammer", -- Icecrown Citadel T10 (Rogues)
	},

	[CLASS_HUNTER] = {
		[REDEEM_TIER_10] = "Redeem: Talan Moonstrike @ Icecrown Citadel\nLocated in Light's Hammer", -- Icecrown Citadel T10 (Hunters)
	},

	[CLASS_SHAMAN] = {
		[REDEEM_TIER_10] = "Redeem: Jadebia @ Icecrown Citadel\nLocated in Light's Hammer", -- Icecrown Citadel T10 (Shamans)
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

local NO_USE = t.L["This token cannot be redeemed for anything."];

local REDEEM = "REDEEM";
local ITEMS = "ITEMS";
local BONUS = "BONUS";
local DUPLICATE_BONUS = "DUPLICATE_BONUS";

local BALEFUL_WEP_STAFF = 124630;
local BALEFUL_WEP_2H_SWORD = 124625;
local BALEFUL_WEP_1H_SWORD = 124624;
local BALEFUL_WEP_GUN = 124626;
local BALEFUL_WEP_1H_AXE = 124628;
local BALEFUL_WEP_DAGGER = 124627;
local BALEFUL_WEP_POLEARM = 124629;
local BALEFUL_WEP_1H_MACE = 124631;

local TIER_17_HEROIC = 566;
local TIER_17_MYTHIC = 567;

local TIER_17_BONUS_LOOKUP = {
	[570] = TIER_17_HEROIC, -- Heroic
	[569] = TIER_17_MYTHIC, -- Mythic
};

local TIER_18_BONUS_LOOKUP = {
	[570] = 1798, -- Heroic
	[569] = 1799, -- Mythic
};

local TIER_19_BONUS_LOOKUP = {
	[570] = 3516, -- Heroic
	[569] = 3518, -- Mythic
};

local TIER_20_BONUS_LOOKUP = {
	[570] = 3562, -- Heroic
	[596] = 3563, -- Mythic
};

t.AQ_DATA = {
	[CLASS_DRUID] = {
		[21409] = { -- Cloak of Unending Life
			[ITEMS] = {
				[20889] = 1, -- Qiraji Regal Drape
				[20872] = 2, -- Vermillion Idol
				[20864] = 5, -- Bone Scarab
				[20860] = 5, -- Silver Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
		[21354] = { -- Genesis Shoulderpads
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20881] = 2, -- Idol of Strife
				[20859] = 5, -- Gold Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21357] = { -- Genesis Vest
			[ITEMS] = {
				[20933] = 1, -- Husk of the Old God
				[20878] = 2, -- Idol of Rebirth
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
		[21407] = { -- Mace of Unending Life
			[ITEMS] = {
				[20890] = 1, -- Qiraji Ornate Hilt
				[20870] = 2, -- Jasper Idol
				[20862] = 5, -- Crystal Scarab
				[20858] = 5, -- Stone Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21356] = { -- Genesis Trousers
			[ITEMS] = {
				[20931] = 1, -- Skin of the Great Sandworm
				[20882] = 2, -- Idol of War
				[20858] = 5, -- Stone Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21353] = { -- Genesis Helm
			[ITEMS] = {
				[20930] = 1, -- Vek'lor's Diadem
				[20879] = 2, -- Idol of Life
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21355] = { -- Genesis Boots
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20878] = 2, -- Idol of Rebirth
				[20858] = 5, -- Stone Scarab
				[20860] = 5, -- Silver Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
	},

	[CLASS_HUNTER] = {
		[21401] = { -- Scythe of the Unseen Path
			[ITEMS] = {
				[20886] = 1, -- Qiraji Spiked Hilt
				[20866] = 2, -- Azure Idol
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21365] = { -- Striker's Footguards
			[ITEMS] = {
				[20928] = 1, -- Qiraji Bindings of Command
				[20879] = 2, -- Idol of Life
				[20858] = 5, -- Stone Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21368] = { -- Striker's Leggings
			[ITEMS] = {
				[20931] = 1, -- Skin of the Great Sandworm
				[20874] = 2, -- Idol of the Sun
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21366] = { -- Striker's Diadem
			[ITEMS] = {
				[20930] = 1, -- Vek'lor's Diadem
				[20881] = 2, -- Idol of Strife
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21403] = { -- Cloak of the Unseen Path
			[ITEMS] = {
				[20889] = 1, -- Qiraji Regal Drape
				[20868] = 2, -- Lambent Idol
				[20858] = 5, -- Stone Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
		[21367] = { -- Striker's Pauldrons
			[ITEMS] = {
				[20928] = 1, -- Qiraji Bindings of Command
				[20882] = 2, -- Idol of War
				[20862] = 5, -- Crystal Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21370] = { -- Striker's Hauberk
			[ITEMS] = {
				[20929] = 1, -- Carapace of the Old God
				[20879] = 2, -- Idol of Life
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
	},

	[CLASS_MAGE] = {
		[21413] = { -- Blade of Vaulted Secrets
			[ITEMS] = {
				[20890] = 1, -- Qiraji Ornate Hilt
				[20871] = 2, -- Obsidian Idol
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21346] = { -- Enigma Leggings
			[ITEMS] = {
				[20927] = 1, -- Ouro's Intact Hide
				[20877] = 2, -- Idol of the Sage
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21347] = { -- Enigma Circlet
			[ITEMS] = {
				[20926] = 1, -- Vek'nilash's Circlet
				[20875] = 2, -- Idol of Night
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21345] = { -- Enigma Shoulderpads
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20876] = 2, -- Idol of Death
				[20858] = 5, -- Stone Scarab
				[20861] = 5, -- Bronze Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21415] = { -- Drape of Vaulted Secrets
			[ITEMS] = {
				[20885] = 1, -- Qiraji Martial Drape
				[20873] = 2, -- Alabaster Idol
				[20858] = 5, -- Stone Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
		[21344] = { -- Enigma Boots
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20874] = 2, -- Idol of the Sun
				[20860] = 5, -- Silver Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21343] = { -- Enigma Robes
			[ITEMS] = {
				[20933] = 1, -- Husk of the Old God
				[20874] = 2, -- Idol of the Sun
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
	},

	[CLASS_PALADIN] = {
		[21389] = { -- Avenger's Breastplate
			[ITEMS] = {
				[20929] = 1, -- Carapace of the Old God
				[20877] = 2, -- Idol of the Sage
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
		[21395] = { -- Blade of Eternal Justice
			[ITEMS] = {
				[20886] = 1, -- Qiraji Spiked Hilt
				[20869] = 2, -- Amber Idol
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21388] = { -- Avenger's Greaves
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20877] = 2, -- Idol of the Sage
				[20861] = 5, -- Bronze Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21390] = { -- Avenger's Legguards
			[ITEMS] = {
				[20931] = 1, -- Skin of the Great Sandworm
				[20881] = 2, -- Idol of Strife
				[20865] = 5, -- Ivory Scarab
				[20861] = 5, -- Bronze Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21387] = { -- Avenger's Crown
			[ITEMS] = {
				[20930] = 1, -- Vek'lor's Diadem
				[20878] = 2, -- Idol of Rebirth
				[20858] = 5, -- Stone Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21391] = { -- Avenger's Pauldrons
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20879] = 2, -- Idol of Life
				[20859] = 5, -- Gold Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21397] = { -- Cape of Eternal Justice
			[ITEMS] = {
				[20889] = 1, -- Qiraji Regal Drape
				[20871] = 2, -- Obsidian Idol
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
	},

	[CLASS_PRIEST] = {
		[21348] = { -- Tiara of the Oracle
			[ITEMS] = {
				[20926] = 1, -- Vek'nilash's Circlet
				[20877] = 2, -- Idol of the Sage
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21410] = { -- Gavel of Infinite Wisdom
			[ITEMS] = {
				[20890] = 1, -- Qiraji Ornate Hilt
				[20868] = 2, -- Lambent Idol
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21349] = { -- Footwraps of the Oracle
			[ITEMS] = {
				[20928] = 1, -- Qiraji Bindings of Command
				[20876] = 2, -- Idol of Death
				[20861] = 5, -- Bronze Scarab
				[20859] = 5, -- Gold Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21351] = { -- Vestments of the Oracle
			[ITEMS] = {
				[20933] = 1, -- Husk of the Old God
				[20876] = 2, -- Idol of Death
				[20858] = 5, -- Stone Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
		[21412] = { -- Shroud of Infinite Wisdom
			[ITEMS] = {
				[20885] = 1, -- Qiraji Martial Drape
				[20870] = 2, -- Jasper Idol
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
		[21352] = { -- Trousers of the Oracle
			[ITEMS] = {
				[20927] = 1, -- Ouro's Intact Hide
				[20879] = 2, -- Idol of Life
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21350] = { -- Mantle of the Oracle
			[ITEMS] = {
				[20928] = 1, -- Qiraji Bindings of Command
				[20878] = 2, -- Idol of Rebirth
				[20860] = 5, -- Silver Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
	},

	[CLASS_ROGUE] = {
		[21359] = { -- Deathdealer's Boots
			[ITEMS] = {
				[20928] = 1, -- Qiraji Bindings of Command
				[20881] = 2, -- Idol of Strife
				[20862] = 5, -- Crystal Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21406] = { -- Cloak of Veiled Shadows
			[ITEMS] = {
				[20885] = 1, -- Qiraji Martial Drape
				[20866] = 2, -- Azure Idol
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
		[21364] = { -- Deathdealer's Vest
			[ITEMS] = {
				[20929] = 1, -- Carapace of the Old God
				[20881] = 2, -- Idol of Strife
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
		[21362] = { -- Deathdealer's Leggings
			[ITEMS] = {
				[20927] = 1, -- Ouro's Intact Hide
				[20875] = 2, -- Idol of Night
				[20858] = 5, -- Stone Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21404] = { -- Dagger of Veiled Shadows
			[ITEMS] = {
				[20886] = 1, -- Qiraji Spiked Hilt
				[20872] = 2, -- Vermillion Idol
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21360] = { -- Deathdealer's Helm
			[ITEMS] = {
				[20930] = 1, -- Vek'lor's Diadem
				[20882] = 2, -- Idol of War
				[20863] = 5, -- Clay Scarab
				[20859] = 5, -- Gold Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21361] = { -- Deathdealer's Spaulders
			[ITEMS] = {
				[20928] = 1, -- Qiraji Bindings of Command
				[20874] = 2, -- Idol of the Sun
				[20860] = 5, -- Silver Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
	},

	[CLASS_SHAMAN] = {
		[21374] = { -- Stormcaller's Hauberk
			[ITEMS] = {
				[20929] = 1, -- Carapace of the Old God
				[20877] = 2, -- Idol of the Sage
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
		[21398] = { -- Hammer of the Gathering Storm
			[ITEMS] = {
				[20886] = 1, -- Qiraji Spiked Hilt
				[20869] = 2, -- Amber Idol
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21373] = { -- Stormcaller's Footguards
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20877] = 2, -- Idol of the Sage
				[20861] = 5, -- Bronze Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21375] = { -- Stormcaller's Leggings
			[ITEMS] = {
				[20931] = 1, -- Skin of the Great Sandworm
				[20881] = 2, -- Idol of Strife
				[20865] = 5, -- Ivory Scarab
				[20861] = 5, -- Bronze Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21372] = { -- Stormcaller's Diadem
			[ITEMS] = {
				[20930] = 1, -- Vek'lor's Diadem
				[20878] = 2, -- Idol of Rebirth
				[20858] = 5, -- Stone Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21376] = { -- Stormcaller's Pauldrons
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20879] = 2, -- Idol of Life
				[20859] = 5, -- Gold Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21400] = { -- Cloak of the Gathering Storm
			[ITEMS] = {
				[20889] = 1, -- Qiraji Regal Drape
				[20871] = 2, -- Obsidian Idol
				[20863] = 5, -- Clay Scarab
				[20859] = 5, -- Gold Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
	},

	[CLASS_WARLOCK] = {
		[21337] = { -- Doomcaller's Circlet
			[ITEMS] = {
				[20926] = 1, -- Vek'nilash's Circlet
				[20876] = 2, -- Idol of Death
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21335] = { -- Doomcaller's Mantle
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20877] = 2, -- Idol of the Sage
				[20861] = 5, -- Bronze Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21418] = { -- Shroud of Unspoken Names
			[ITEMS] = {
				[20889] = 1, -- Qiraji Regal Drape
				[20869] = 2, -- Amber Idol
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
		[21334] = { -- Doomcaller's Robes
			[ITEMS] = {
				[20933] = 1, -- Husk of the Old God
				[20875] = 2, -- Idol of Night
				[20862] = 5, -- Crystal Scarab
				[20858] = 5, -- Stone Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
		[21416] = { -- Kris of Unspoken Names
			[ITEMS] = {
				[20890] = 1, -- Qiraji Ornate Hilt
				[20867] = 2, -- Onyx Idol
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21336] = { -- Doomcaller's Trousers
			[ITEMS] = {
				[20931] = 1, -- Skin of the Great Sandworm
				[20878] = 2, -- Idol of Rebirth
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21338] = { -- Doomcaller's Footwraps
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20875] = 2, -- Idol of Night
				[20863] = 5, -- Clay Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
	},

	[CLASS_WARRIOR] = {
		[21394] = { -- Drape of Unyielding Strength
			[ITEMS] = {
				[20885] = 1, -- Qiraji Martial Drape
				[20867] = 2, -- Onyx Idol
				[20864] = 5, -- Bone Scarab
				[20860] = 5, -- Silver Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
		[21331] = { -- Conqueror's Breastplate
			[ITEMS] = {
				[20929] = 1, -- Carapace of the Old God
				[20882] = 2, -- Idol of War
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
		[21332] = { -- Conqueror's Legguards
			[ITEMS] = {
				[20927] = 1, -- Ouro's Intact Hide
				[20876] = 2, -- Idol of Death
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21392] = { -- Sickle of Unyielding Strength
			[ITEMS] = {
				[20886] = 1, -- Qiraji Spiked Hilt
				[20873] = 2, -- Alabaster Idol
				[20862] = 5, -- Crystal Scarab
				[20858] = 5, -- Stone Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21329] = { -- Conqueror's Crown
			[ITEMS] = {
				[20926] = 1, -- Vek'nilash's Circlet
				[20874] = 2, -- Idol of the Sun
				[20862] = 5, -- Crystal Scarab
				[20858] = 5, -- Stone Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21333] = { -- Conqueror's Greaves
			[ITEMS] = {
				[20928] = 1, -- Qiraji Bindings of Command
				[20882] = 2, -- Idol of War
				[20865] = 5, -- Ivory Scarab
				[20859] = 5, -- Gold Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
	},
};

t.ITEM_DATA = {
	-- Tier 20
	[147318] = { -- Chest of the Foregone Protector
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 147187, [CLASS_MONK] = 147151, [CLASS_HUNTER] = 147139, [CLASS_SHAMAN] = 147175
	},
	
	[147330] = { -- Shoulders of the Foregone Protector
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 147192, [CLASS_MONK] = 147156, [CLASS_HUNTER] = 147144, [CLASS_SHAMAN] = 147180
	},
	
	[147324] = { -- Helm of the Foregone Protector
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 147190, [CLASS_MONK] = 147154, [CLASS_HUNTER] = 147142, [CLASS_SHAMAN] = 147178
	},
	
	[147327] = { -- Leggings of the Foregone Protector
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 147191, [CLASS_MONK] = 147155, [CLASS_HUNTER] = 147143, [CLASS_SHAMAN] = 147179
	},
	
	[147321] = { -- Gauntlets of the Foregone Protector
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 147189, [CLASS_MONK] = 147153, [CLASS_HUNTER] = 147141, [CLASS_SHAMAN] = 147177
	},
	
	[147333] = { -- Cloak of the Foregone Protector
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 147188, [CLASS_MONK] = 147152, [CLASS_HUNTER] = 147140, [CLASS_SHAMAN] = 147176
	},
	
	[147317] = { -- Chest of the Foregone Conqueror
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 147127, [CLASS_PALADIN] = 147157, [CLASS_PRIEST] = 147167, [CLASS_WARLOCK] = 147185
	},
	
	[147329] = { -- Shoulders of the Foregone Conqueror
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 147132, [CLASS_PALADIN] = 147162, [CLASS_PRIEST] = 147168, [CLASS_WARLOCK] = 147186
	},
	
	[147323] = { -- Helm of the Foregone Conqueror
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 147130, [CLASS_PALADIN] = 147160, [CLASS_PRIEST] = 147165, [CLASS_WARLOCK] = 147183
	},
	
	[147326] = { -- Leggings of the Foregone Conqueror
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 147131, [CLASS_PALADIN] = 147161, [CLASS_PRIEST] = 147166, [CLASS_WARLOCK] = 147184
	},
	
	[147320] = { -- Gauntlets of the Foregone Conqueror
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 147129, [CLASS_PALADIN] = 147159, [CLASS_PRIEST] = 147164, [CLASS_WARLOCK] = 147182
	},
	
	[147332] = { -- Cloak of the Foregone Conqueror
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 147128, [CLASS_PALADIN] = 147158, [CLASS_PRIEST] = 147163, [CLASS_WARLOCK] = 147181
	},
	
	[147316] = { -- Chest of the Foregone Vanquisher
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 147121, [CLASS_DRUID] = 147133, [CLASS_MAGE] = 147149, [CLASS_ROGUE] = 147169
	},
	
	[147328] = { -- Shoulders of the Foregone Vanquisher
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 147126, [CLASS_DRUID] = 147138, [CLASS_MAGE] = 147150, [CLASS_ROGUE] = 147174
	},
	
	[147322] = { -- Helm of the Foregone Vanquisher
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 147124, [CLASS_DRUID] = 147136, [CLASS_MAGE] = 147147, [CLASS_ROGUE] = 147172
	},
	
	[147325] = { -- Leggings of the Foregone Vanquisher
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 147125, [CLASS_DRUID] = 147137, [CLASS_MAGE] = 147148, [CLASS_ROGUE] = 147173
	},
	
	[147319] = { -- Gauntlets of the Foregone Vanquisher
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 147123, [CLASS_DRUID] = 147135, [CLASS_MAGE] = 147146, [CLASS_ROGUE] = 147171
	},
	
	[147331] = { -- Cloak of the Foregone Vanquisher
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 147122, [CLASS_DRUID] = 147134, [CLASS_MAGE] = 147145, [CLASS_ROGUE] = 147170
	},

	-- Tier 19
	[143572] = { -- Chest of the Foreseen Protector
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 138351, [CLASS_MONK] = 138325, [CLASS_HUNTER] = 138339, [CLASS_SHAMAN] = 138341 
	},
	
	[143576] = { -- Shoudlers of the Foreseen Protector
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 138363, [CLASS_MONK] = 138337, [CLASS_HUNTER] = 138347, [CLASS_SHAMAN] = 138348
	},
	
	[143575] = { -- Helm of the Foreseen Protector
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 138357, [CLASS_MONK] = 138331, [CLASS_HUNTER] = 138342, [CLASS_SHAMAN] = 138343 
	},
	
	[143574] = { -- Leggings of the Foreseen Protector
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 138360, [CLASS_MONK] = 138334, [CLASS_HUNTER] = 138344, [CLASS_SHAMAN] = 138345
	},
	
	[143573] = { -- Gauntlets of the Foreseen Protector
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 138354, [CLASS_MONK] = 138328, [CLASS_HUNTER] = 138340, [CLASS_SHAMAN] = 138341
	},
	
	[143579] = { -- Cloak of the Foreseen Protector
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 138374, [CLASS_MONK] = 138367, [CLASS_HUNTER] = 138368, [CLASS_SHAMAN] = 138372
	},
	
	[143562] = { -- Chest of the Foreseen Conqueror
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 138376, [CLASS_PALADIN] = 138350, [CLASS_PRIEST] = 138319, [CLASS_WARLOCK] = 138320
	},
	
	[143566] = { -- Shoulders of the Foreseen Conqueror
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 138380, [CLASS_PALADIN] = 138362, [CLASS_PRIEST] = 138322, [CLASS_WARLOCK] = 138323
	},
	
	[143565] = { -- Helm of the Foreseen Conqueror
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 138378, [CLASS_PALADIN] = 138356, [CLASS_PRIEST] = 138313, [CLASS_WARLOCK] = 138314
	},
	
	[143564] = { -- Leggings of the Foreseen Conqueror
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 138379, [CLASS_PALADIN] = 138359, [CLASS_PRIEST] = 138316, [CLASS_WARLOCK] = 138317
	},
	
	[143563] = { -- Gauntlets of the Foreseen Conqueror
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 138377, [CLASS_PALADIN] = 138353, [CLASS_PRIEST] = 138310, [CLASS_WARLOCK] = 138311
	},
	
	[143577] = { -- Cloak of the Foreseen Conqueror
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 138375, [CLASS_PALADIN] = 138369, [CLASS_PRIEST] = 138370, [CLASS_WARLOCK] = 138373
	},
	
	[143571] = { -- Chest of the Foreseen Vanquisher
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 138349, [CLASS_DRUID] = 138324, [CLASS_MAGE] = 138318, [CLASS_ROGUE] = 138326
	},
	
	[143570] = { -- Shoulders of the Foreseen Vanquisher
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 138361, [CLASS_DRUID] = 138336, [CLASS_MAGE] = 138321, [CLASS_ROGUE] = 138338
	},
	
	[143568] = { -- Helm of the Foreseen Vanquisher
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 138355, [CLASS_DRUID] = 138330, [CLASS_MAGE] = 138312, [CLASS_ROGUE] = 138332
	},
	
	[143569] = { -- Leggings of the Foreseen Vanquisher
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 138358, [CLASS_DRUID] = 138333, [CLASS_MAGE] = 138315, [CLASS_ROGUE] = 138335
	},
	
	[143567] = { -- Gauntlets of the Foreseen Vanquisher
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 138352, [CLASS_DRUID] = 138327, [CLASS_MAGE] = 138309, [CLASS_ROGUE] = 138329
	},
	
	[143578] = { -- Cloak of the Foreseen Vanquisher
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 138364, [CLASS_DRUID] = 138366, [CLASS_MAGE] = 138365, [CLASS_ROGUE] = 138371
	},
	
	-- Tier 18
	[127963] = { -- Chest of Hellfire's Protector
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 124319, [CLASS_MONK] = 124247, [CLASS_HUNTER] = 124284, [CLASS_SHAMAN] = 124303
	},

	[127967] = { -- Shoudlers of Hellfire's Protector
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 124346, [CLASS_MONK] = 124273, [CLASS_HUNTER] = 124307, [CLASS_SHAMAN] = 124308
	},

	[127966] = { -- Helm of Hellfire's Protector
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 124334, [CLASS_MONK] = 124262, [CLASS_HUNTER] = 124296, [CLASS_SHAMAN] = 124297
	},

	[127965] = { -- Leggings of Hellfire's Protector
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 124340, [CLASS_MONK] = 124268, [CLASS_HUNTER] = 124301, [CLASS_SHAMAN] = 124302
	},

	[127964] = { -- Gauntlets of Hellfire's Protector
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 124329, [CLASS_MONK] = 124256, [CLASS_HUNTER] = 124292, [CLASS_SHAMAN] = 124293
	},

	[127953] = { -- Chest of Hellfire's Conqueror
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 139625, [CLASS_PALADIN] = 124318, [CLASS_PRIEST] = 124172, [CLASS_WARLOCK] = 124173
	},

	[127956] = { -- Helm of Hellfire's Conqueror
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 139627, [CLASS_PALADIN] = 124333, [CLASS_PRIEST] = 124161, [CLASS_WARLOCK] = 124162
	},

	[127954] = { -- Gauntlets of Hellfire's Conqueror
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 139626, [CLASS_PALADIN] = 124328, [CLASS_PRIEST] = 124155, [CLASS_WARLOCK] = 124156
	},

	[127957] = { -- Shoulders of Hellfire's Conqueror
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 139629, [CLASS_PALADIN] = 124345, [CLASS_PRIEST] = 124178, [CLASS_WARLOCK] = 124179
	},

	[127955] = { -- Leggings of Hellfire's Conqueror
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 139628, [CLASS_PALADIN] = 124339, [CLASS_PRIEST] = 124166, [CLASS_WARLOCK] = 124167
	},

	[127662] = { -- Chest of Hellfire's Vanquisher
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 124317, [CLASS_DRUID] = 124246, [CLASS_MAGE] = 124171, [CLASS_ROGUE] = 124248
	},

	[127659] = { -- Helm of Hellfire's Vanquisher
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 124332, [CLASS_DRUID] = 124261, [CLASS_MAGE] = 124160, [CLASS_ROGUE] = 124263
	},

	[127658] = { -- Gauntlets of Hellfire's Vanquisher
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 124327, [CLASS_DRUID] = 124255, [CLASS_MAGE] = 124154, [CLASS_ROGUE] = 124257
	},

	[127661] = { -- Shoulders of Hellfire's Vanquisher
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 124344, [CLASS_DRUID] = 124272, [CLASS_MAGE] = 124177, [CLASS_ROGUE] = 124274
	},

	[127660] = { -- Leggings of Hellfire's Vanquisher
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 124338, [CLASS_DRUID] = 124267, [CLASS_MAGE] = 124165, [CLASS_ROGUE] = 124269
	},

	-- Tier 17
	[119320] = { -- Leggings of the Iron Protector
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120254] = TIER_17_MYTHIC, [120239] = TIER_17_HEROIC, [120224] = 0},
		[CLASS_WARRIOR] = 115580, [CLASS_MONK] = 115557, [CLASS_HUNTER] = 115546, [CLASS_SHAMAN] = 115575
	},

	[119321] = { -- Helm of the Iron Protector
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120255] = TIER_17_MYTHIC, [120225] = 0, [120240] = TIER_17_HEROIC},
		[CLASS_WARRIOR] = 115584, [CLASS_MONK] = 115556, [CLASS_HUNTER] = 115545, [CLASS_SHAMAN] = 115579
	},

	[119322] = { -- Shoulders of the Iron Protector
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120256] = TIER_17_MYTHIC, [120226] = TIER_17_HEROIC, [120241] = 0},
		[CLASS_WARRIOR] = 115581, [CLASS_MONK] = 115559, [CLASS_HUNTER] = 115547, [CLASS_SHAMAN] = 115576
	},

	[119319] = { -- Gauntlets of the Iron Protector
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120253] = TIER_17_MYTHIC, [120238] = TIER_17_HEROIC, [120223] = 0},
		[CLASS_WARRIOR] = 115583, [CLASS_MONK] = 115555, [CLASS_HUNTER] = 115549, [CLASS_SHAMAN] = 115578
	},

	[119318] = { -- Chest of the Iron Protector
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120252] = TIER_17_MYTHIC, [120237] = TIER_17_HEROIC, [120222] = 0},
		[CLASS_WARRIOR] = 115582, [CLASS_MONK] = 115548, [CLASS_HUNTER] = 115558, [CLASS_SHAMAN] = 115577
	},

	[119305] = { -- Chest of the Iron Conqueror
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120242] = TIER_17_MYTHIC, [120227] = 0, [120121] = TIER_17_HEROIC},
		[CLASS_PALADIN] = 115566, [CLASS_PRIEST] = 115560, [CLASS_WARLOCK] = 115588
	},

	[119306] = { -- Gauntlets of the Iron Conqueror
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120243] = TIER_17_MYTHIC, [120228] = 0, [120213] = TIER_17_HEROIC},
		[CLASS_PALADIN] = 115567, [CLASS_PRIEST] = 115562, [CLASS_WARLOCK] = 115585
	},

	[119308] = { -- Helm of the Iron Conqueror
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120245] = TIER_17_MYTHIC, [120230] = 0, [120215] = TIER_17_HEROIC},
		[CLASS_PALADIN] = 115568, [CLASS_PRIEST] = 115563, [CLASS_WARLOCK] = 115586
	},

	[119307] = { -- Leggings of the Iron Conqueror
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120244] = TIER_17_MYTHIC, [120229] = 0, [120214] = TIER_17_HEROIC},
		[CLASS_PALADIN] = 115569, [CLASS_PRIEST] = 115564, [CLASS_WARLOCK] = 115587
	},

	[119309] = { -- Shoulders of the Iron Conqueror
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120246] = TIER_17_MYTHIC, [120231] = 0, [120216] = TIER_17_HEROIC},
		[CLASS_PALADIN] = 115565, [CLASS_PRIEST] = 115561, [CLASS_WARLOCK] = 115589
	},

	[119315] = { -- Chest of the Iron Vanquisher
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120251] = TIER_17_MYTHIC, [120236] = 0, [120221] = TIER_17_HEROIC},
		[CLASS_DEATHKNIGHT] = 115537, [CLASS_DRUID] = 115540, [CLASS_MAGE] = 115550, [CLASS_ROGUE] = 115570
	},

	[119311] = { -- Gauntlets of the Iron Vanquisher
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120247] = TIER_17_MYTHIC, [120232] = 0, [120217] = TIER_17_HEROIC},
		[CLASS_DEATHKNIGHT] = 115538, [CLASS_DRUID] = 115541, [CLASS_MAGE] = 115552, [CLASS_ROGUE] = 115571
	},

	[119312] = { -- Helm of the Iron Vanquisher
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120248] = TIER_17_MYTHIC, [120233] = 0, [120218] = TIER_17_HEROIC},
		[CLASS_DEATHKNIGHT] = 115539, [CLASS_DRUID] = 115542, [CLASS_MAGE] = 115553, [CLASS_ROGUE] = 115572
	},

	[119313] = { -- Leggings of the Iron Vanquisher
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120249] = TIER_17_MYTHIC, [120234] = 0, [120219] = TIER_17_HEROIC},
		[CLASS_DEATHKNIGHT] = 115535, [CLASS_DRUID] = 115543, [CLASS_MAGE] = 115554, [CLASS_ROGUE] = 115573
	},

	[119314] = { -- Shoulders of the Iron Vanquisher
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120250] = TIER_17_MYTHIC, [120235] = 0, [120220] = TIER_17_HEROIC},
		[CLASS_DEATHKNIGHT] = 115536, [CLASS_DRUID] = 115544, [CLASS_MAGE] = 115551, [CLASS_ROGUE] = 115574
	},

	[71682] = { ["NOTE"] = NO_USE, [CLASS_WARRIOR] = {}, [CLASS_HUNTER] = {}, [CLASS_SHAMAN] = {}, }, -- Helm of the Fiery Protector
	[71688] = { ["NOTE"] = NO_USE, [CLASS_WARRIOR] = {}, [CLASS_HUNTER] = {}, [CLASS_SHAMAN] = {}, }, -- Mantle of the Fiery Protector
	[63684] = { ["NOTE"] = NO_USE, [CLASS_WARRIOR] = {}, [CLASS_HUNTER] = {}, [CLASS_SHAMAN] = {}, }, -- Helm of the Forlorn Protector
	[64316] = { ["NOTE"] = NO_USE, [CLASS_WARRIOR] = {}, [CLASS_HUNTER] = {}, [CLASS_SHAMAN] = {}, }, -- Mantle of the Forlorn Protector
	[71675] = { ["NOTE"] = NO_USE, [CLASS_PALADIN] = {}, [CLASS_PRIEST] = {}, [CLASS_WARLOCK] = {}, }, -- Helm of the Fiery Conqueror
	[71681] = { ["NOTE"] = NO_USE, [CLASS_PALADIN] = {}, [CLASS_PRIEST] = {}, [CLASS_WARLOCK] = {}, }, -- Mantle of the Fiery Conqueror
	[71668] = { ["NOTE"] = NO_USE, [CLASS_ROGUE] = {}, [CLASS_DEATHKNIGHT] = {}, [CLASS_MAGE] = {}, [CLASS_DRUID] = {}, }, -- Helm of the Fiery Vanquisher
	[71674] = { ["NOTE"] = NO_USE, [CLASS_ROGUE] = {}, [CLASS_DEATHKNIGHT] = {}, [CLASS_MAGE] = {}, [CLASS_DRUID] = {}, }, -- Mantle of the Fiery Vanquisher

	[34664] = { -- Sunmote
		[REDEEM] = REDEEM_TBC_SUNMOTE,
		[t.ARMOR_TYPE_PLATE] = {34388, 34389, 34394, 34395, 34382, 34400, 34401, 34381},
		[t.ARMOR_TYPE_CLOTH] = {34399, 34393, 34386, 34406, 34405},
		[t.ARMOR_TYPE_LEATHER] = {34384, 34385, 34391, 34392, 34397, 34398, 34403, 34404, 34408, 34407},
		[t.ARMOR_TYPE_MAIL] = {34396, 34390, 34402, 34383, 34409},
	},

	[34339] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_CLOTH] = 34405 }, -- Helm of Arcane Purity
	[34342] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_CLOTH] = 34406 }, -- Gloves of Tyri's Power
	[34233] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_CLOTH] = 34399 }, -- Robes of Ghostly Hatred
	[34170] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_CLOTH] = 34386 }, -- Pantaloons of Growing Strife
	[34202] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_CLOTH] = 34393 }, -- Shoulderpads of Knowledge's Pursuit
	[34211] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_LEATHER] = 34397 }, -- Bladed Chaos Tunic
	[34212] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_LEATHER] = 34398 }, -- Utopian Tunic of Elune
	[34169] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_LEATHER] = 34384 }, -- Breeches of Natural Splendor
	[34188] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_LEATHER] = 34385 }, -- Leggings of the Immortal Beast
	[34245] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_LEATHER] = 34403 }, -- Cover of Ursoc the Mighty
	[34244] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_LEATHER] = 34404 }, -- Mask of the Fury Hunter
	[34209] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_LEATHER] = 34391 }, -- Spaulders of Devastation
	[34195] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_LEATHER] = 34392 }, -- Demontooth Shoulderpads
	[34234] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_LEATHER] = 34408 }, -- Gloves of the Forest Drifter
	[34351] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_LEATHER] = 34407 }, -- Tranquil Moonlight Wraps
	[34229] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_MAIL] = 34396 }, -- Garments of Crashing Shores
	[34186] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_MAIL] = 34383 }, -- Kilt of Spiritual Reconstruction
	[34332] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_MAIL] = 34402 }, -- Shroud of Chieftain Ner'zhul
	[34208] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_MAIL] = 34390 }, -- Erupting Epaulets
	[34350] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_MAIL] = 34409 }, -- Gauntlets of the Ancient Frostwolf
	[34180] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_PLATE] = 34381 }, -- Felstrength Legplates
	[34167] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_PLATE] = 34382 }, -- Judicator's Legguards
	[34345] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_PLATE] = 34400 }, -- Crown of Dath'Remar
	[34243] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_PLATE] = 34401 }, -- Helm of Uther's Resolve
	[34192] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_PLATE] = 34388 }, -- Pauldrons of Berserking
	[34193] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_PLATE] = 34389 }, -- Spaulders of the Thalassian Defender
	[34215] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_PLATE] = 34394 }, -- Breastplate of Agony's Aversion
	[34216] = { [REDEEM] = REDEEM_TBC_SUNMOTE, [t.ARMOR_TYPE_PLATE] = 34395 }, -- Noble Judicator's Chestguard

	[71617] = { -- Crystallized Firestone
		[REDEEM] = REDEEM_FIRELANDS_BOE,
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
		[CLASS_DEMONHUNTER] = {71562, 71560, 71641},
	},

	[29753] = { -- Chestguard of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "Magtheridon (Magtheridon's Lair)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_WARRIOR] = {24544, 29019, 29012},
		[CLASS_PRIEST] = {31413, 27711, 29050, 29056},
		[CLASS_DRUID] = {28130, 28140, 31379, 29096, 29087, 29091},
	},

	[29754] = { -- Chestguard of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "Magtheridon (Magtheridon's Lair)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_PALADIN] = {31613, 27702, 27879, 29071, 29062, 29066},
		[CLASS_ROGUE] = {25831, 29045},
		[CLASS_SHAMAN] = {25997, 27469, 31396, 29033, 29038, 29029},
	},

	[29755] = { -- Chestguard of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "Magtheridon (Magtheridon's Lair)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_HUNTER] = {28334, 29082},
		[CLASS_MAGE] = {25856, 29077},
		[CLASS_WARLOCK] = {24552, 30200, 28964},
	},

	[29756] = { -- Gloves of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "The Curator (Karazhan)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_HUNTER] = {28335, 29085},
		[CLASS_MAGE] = {25857, 29080},
		[CLASS_WARLOCK] = {24556, 30188, 28968},
	},

	[29757] = { -- Gloves of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "The Curator (Karazhan)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_PALADIN] = {27703, 27880, 31614, 29072, 29065, 29067},
		[CLASS_ROGUE] = {25834, 29048},
		[CLASS_SHAMAN] = {31397, 26000, 27470, 29034, 29039, 29032},
	},

	[29758] = { -- Gloves of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "The Curator (Karazhan)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_WARRIOR] = {24549, 29020, 29017},
		[CLASS_PRIEST] = {27707, 31409, 29055, 29057},
		[CLASS_DRUID] = {31375, 28126, 28136, 29097, 29090, 29092},
	},

	[29759] = { -- Helm of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "Prince Malchezaar (Karazhan)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_HUNTER] = {28331, 29081},
		[CLASS_MAGE] = {25855, 29076},
		[CLASS_WARLOCK] = {24553, 30187, 28963},
	},

	[29760] = { -- Helm of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "Prince Malchezaar (Karazhan)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_PALADIN] = {27704, 27881, 31616, 29073, 29061, 29068},
		[CLASS_ROGUE] = {25830, 29044},
		[CLASS_SHAMAN] = {27471, 31400, 25998, 29035, 29040, 29028},
	},

	[29761] = { -- Helm of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "Prince Malchezaar (Karazhan)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_WARRIOR] = {24545, 29021, 29011},
		[CLASS_PRIEST] = {27708, 31410, 29049, 29058},
		[CLASS_DRUID] = {28137, 31376, 28127, 29098, 29086, 29093},
	},

	[29762] = { -- Pauldrons of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "High King Maulgar (Gruul's Lair)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_HUNTER] = {28333, 29084},
		[CLASS_MAGE] = {25854, 29079},
		[CLASS_WARLOCK] = {24554, 30186, 28967},
	},

	[29763] = { -- Pauldrons of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "High King Maulgar (Gruul's Lair)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_PALADIN] = {31619, 27706, 27883, 29075, 29064, 29070},
		[CLASS_ROGUE] = {25832, 29047},
		[CLASS_SHAMAN] = {25999, 27473, 31407, 29037, 29043, 29031},
	},

	[29764] = { -- Pauldrons of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "High King Maulgar (Gruul's Lair)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_WARRIOR] = {24546, 29023, 29016},
		[CLASS_PRIEST] = {31412, 27710, 29054, 29060},
		[CLASS_DRUID] = {28129, 28139, 31378, 29100, 29089, 29095},
	},

	[29765] = { -- Leggings of the Fallen Hero
		["OBTAIN"] = {SET_TIER_4, "Gruul (Gruul's Lair)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_HUNTER] = {28332, 29083},
		[CLASS_MAGE] = {25858, 29078},
		[CLASS_WARLOCK] = {30201, 24555, 28966},
	},

	[29766] = { -- Leggings of the Fallen Champion
		["OBTAIN"] = {SET_TIER_4, "Gruul (Gruul's Lair)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_PALADIN] = {31618, 27705, 27882, 29074, 29063, 29069},
		[CLASS_ROGUE] = {25833, 29046},
		[CLASS_SHAMAN] = {26001, 27472, 31406, 29036, 29042, 29030},
	},

	[29767] = { -- Leggings of the Fallen Defender
		["OBTAIN"] = {SET_TIER_4, "Gruul (Gruul's Lair)"},
		[REDEEM] = REDEEM_TIER_4,
		[CLASS_WARRIOR] = {24547, 29022, 29015},
		[CLASS_PRIEST] = {31411, 27709, 29053, 29059},
		[CLASS_DRUID] = {28128, 28138, 31377, 29099, 29088, 29094},
	},

	[30236] = { -- Chestguard of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Kael'thas Sunstrider (The Eye)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_PALADIN] = {32020, 32039, 31992, 30129, 30134, 30123},
		[CLASS_ROGUE] = {32002, 30144},
		[CLASS_SHAMAN] = {32009, 32029, 32004, 30185, 30164, 30169},
	},

	[30237] = { -- Chestguard of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Kael'thas Sunstrider (The Eye)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_WARRIOR] = {30486, 30118, 30113},
		[CLASS_PRIEST] = {32019, 32038, 30150, 30159},
		[CLASS_DRUID] = {31991, 32060, 31972, 30231, 30216, 30222},
	},

	[30238] = { -- Chestguard of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Kael'thas Sunstrider (The Eye)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_HUNTER] = {31960, 30139},
		[CLASS_MAGE] = {32050, 30196},
		[CLASS_WARLOCK] = {31977, 31982, 30214},
	},

	[30239] = { -- Gloves of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Leothersas the Blind (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_PALADIN] = {31993, 32021, 32040, 30130, 30135, 30124},
		[CLASS_ROGUE] = {31998, 30145},
		[CLASS_SHAMAN] = {32005, 32010, 32030, 30189, 30165, 30170},
	},

	[30240] = { -- Gloves of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Leothersas the Blind (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_WARRIOR] = {30487, 30119, 30114},
		[CLASS_PRIEST] = {32015, 32034, 30151, 30160},
		[CLASS_DRUID] = {31987, 32056, 31967, 30232, 30217, 30223},
	},

	[30241] = { -- Gloves of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Leothersas the Blind (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_HUNTER] = {31961, 30140},
		[CLASS_MAGE] = {32049, 30205},
		[CLASS_WARLOCK] = {31973, 31981, 30211},
	},

	[30242] = { -- Helm of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Lady Vashj (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_PALADIN] = {31997, 32022, 32041, 30131, 30136, 30125},
		[CLASS_ROGUE] = {31999, 30146},
		[CLASS_SHAMAN] = {32006, 32011, 32031, 30190, 30166, 30171},
	},

	[30243] = { -- Helm of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Lady Vashj (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_WARRIOR] = {30488, 30120, 30115},
		[CLASS_PRIEST] = {32016, 32035, 30152, 30161},
		[CLASS_DRUID] = {32057, 31968, 31988, 30233, 30219, 30228},
	},

	[30244] = { -- Helm of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Lady Vashj (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_HUNTER] = {31962, 30141},
		[CLASS_MAGE] = {32048, 30206},
		[CLASS_WARLOCK] = {31974, 31980, 30212},
	},

	[30245] = { -- Leggings of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Fathom-Lord Karathress (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_PALADIN] = {31995, 32023, 32042, 30132, 30137, 30126},
		[CLASS_ROGUE] = {32000, 30148},
		[CLASS_SHAMAN] = {32032, 32007, 32012, 30192, 30167, 30172},
	},

	[30246] = { -- Leggings of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Fathom-Lord Karathress (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_WARRIOR] = {30489, 30121, 30116},
		[CLASS_PRIEST] = {32017, 32036, 30153, 30162},
		[CLASS_DRUID] = {31989, 32058, 31969, 30234, 30220, 30229},
	},

	[30247] = { -- Leggings of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Fathom-Lord Karathress (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_HUNTER] = {31963, 30142},
		[CLASS_MAGE] = {32051, 30207},
		[CLASS_WARLOCK] = {31975, 31983, 30213},
	},

	[30248] = { -- Pauldrons of the Vanquished Champion
		["OBTAIN"] = {SET_TIER_5, "Void Reaver (The Eye)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_PALADIN] = {31996, 32024, 32043, 30133, 30138, 30127},
		[CLASS_ROGUE] = {32001, 30149},
		[CLASS_SHAMAN] = {32008, 32013, 32033, 30194, 30168, 30173},
	},

	[30249] = { -- Pauldrons of the Vanquished Defender
		["OBTAIN"] = {SET_TIER_5, "Void Reaver (The Eye)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_WARRIOR] = {30490, 30117, 30122},
		[CLASS_PRIEST] = {32018, 32037, 30154, 30163},
		[CLASS_DRUID] = {31990, 32059, 31971, 30221, 30230, 30235},
	},

	[30250] = { -- Pauldrons of the Vanquished Hero
		["OBTAIN"] = {SET_TIER_5, "Void Reaver (The Eye)"},
		[REDEEM] = REDEEM_TIER_5,
		[CLASS_HUNTER] = {31964, 30143},
		[CLASS_MAGE] = {32047, 30210},
		[CLASS_WARLOCK] = {31976, 31979, 30215},
	},

	[31089] = { -- Chestguard of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Illidan Stormrage (Black Temple)"},
		[CLASS_PALADIN] = {30990, 30992, 30991, 32039, 31992, 32020},
		[CLASS_PRIEST] = {31065, 31066, 32019, 32038},
		[CLASS_WARLOCK] = {31052, 31982, 31977},
	},

	[31090] = { -- Chestguard of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Illidan Stormrage (Black Temple)"},
		[CLASS_ROGUE] = {31028, 32002},
		[CLASS_MAGE] = {31057, 32050},
		[CLASS_DRUID] = {31041, 31042, 31043, 31972, 31991, 32060},
	},

	[31091] = { -- Chestguard of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Illidan Stormrage (Black Temple)"},
		[CLASS_WARRIOR] = {30975, 30976, 30486},
		[CLASS_HUNTER] = {31004, 31960},
		[CLASS_SHAMAN] = {31018, 31016, 31017, 32004, 32009, 32029},
	},

	[31092] = { -- Gloves of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Azgalor (Hyjal Summit)"},
		[CLASS_PALADIN] = {30982, 30985, 30983, 32021, 32040, 31993},
		[CLASS_PRIEST] = {31060, 31061, 32015, 32034},
		[CLASS_WARLOCK] = {31050, 31981, 31973},
	},

	[31093] = { -- Gloves of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Azgalor (Hyjal Summit)"},
		[CLASS_ROGUE] = {31026, 31998},
		[CLASS_MAGE] = {31055, 32049},
		[CLASS_DRUID] = {31032, 31034, 31035, 31967, 31987, 32056},
	},

	[31094] = { -- Gloves of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Azgalor (Hyjal Summit)"},
		[CLASS_WARRIOR] = {30969, 30970, 30487},
		[CLASS_HUNTER] = {31001, 31961},
		[CLASS_SHAMAN] = {31011, 31007, 31008, 32010, 32030, 32005},
	},

	[31095] = { -- Helm of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Archimonde (Hyjal Summit)"},
		[CLASS_WARRIOR] = {30972, 30974, 30488},
		[CLASS_HUNTER] = {31003, 31962},
		[CLASS_SHAMAN] = {31015, 31012, 31014, 32006, 32011, 32031},
	},

	[31096] = { -- Helm of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Archimonde (Hyjal Summit)"},
		[CLASS_ROGUE] = {31027, 31999},
		[CLASS_MAGE] = {31056, 32048},
		[CLASS_DRUID] = {31037, 31039, 31040, 31968, 31988, 32057},
	},

	[31097] = { -- Helm of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Archimonde (Hyjal Summit)"},
		[CLASS_PALADIN] = {30987, 30989, 30988, 32041, 31997, 32022},
		[CLASS_PRIEST] = {31063, 31064, 32016, 32035},
		[CLASS_WARLOCK] = {31051, 31980, 31974},
	},

	[31098] = { -- Leggings of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "The Illidari Council (Black Temple)"},
		[CLASS_PALADIN] = {30993, 30995, 30994, 32042, 31995, 32023},
		[CLASS_PRIEST] = {31067, 31068, 32017, 32036},
		[CLASS_WARLOCK] = {31053, 31983, 31975},
	},

	[31099] = { -- Leggings of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "The Illidari Council (Black Temple)"},
		[CLASS_ROGUE] = {31029, 32000},
		[CLASS_MAGE] = {31058, 32051},
		[CLASS_DRUID] = {31044, 31045, 31046, 31969, 31989, 32058},
	},

	[31100] = { -- Leggings of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "The Illidari Council (Black Temple)"},
		[CLASS_WARRIOR] = {30977, 30978, 30489},
		[CLASS_HUNTER] = {31005, 31963},
		[CLASS_SHAMAN] = {31019, 31020, 31021, 32007, 32012, 32032},
	},

	[31101] = { -- Pauldrons of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Mother Shahraz (Black Temple)"},
		[CLASS_PALADIN] = {30996, 30998, 30997, 32043, 31996, 32024},
		[CLASS_PRIEST] = {31069, 31070, 32018, 32037},
		[CLASS_WARLOCK] = {31054, 31979, 31976},
	},

	[31102] = { -- Pauldrons of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Mother Shahraz (Black Temple)"},
		[CLASS_ROGUE] = {31030, 32001},
		[CLASS_MAGE] = {31059, 32047},
		[CLASS_DRUID] = {31047, 31048, 31049, 32059, 31971, 31990},
	},

	[31103] = { -- Pauldrons of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Mother Shahraz (Black Temple)"},
		[CLASS_WARRIOR] = {30979, 30980, 30490},
		[CLASS_HUNTER] = {31006, 31964},
		[CLASS_SHAMAN] = {31024, 31022, 31023, 32008, 32013, 32033},
	},

	[34848] = { -- Bracers of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_TBC_TIER_6,
		[CLASS_WARRIOR] = {33910, 33889, 33904},
		[CLASS_PALADIN] = {34431, 34433, 34432, 33910, 33889, 33904},
		[CLASS_PRIEST] = {34434, 34435, 33883, 33901},
		[CLASS_MAGE] = {33883, 33901},
		[CLASS_WARLOCK] = {34436, 33883, 33901},
	},

	[34851] = { -- Bracers of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_TBC_TIER_6,
		[CLASS_WARRIOR] = {34441, 34442, 33813},
		[CLASS_PALADIN] = 33813,
		[CLASS_HUNTER] = {34443, 33876, 33894, 33897, 33906},
		[CLASS_SHAMAN] = {34437, 34439, 34438, 33876, 33894, 33897, 33906},
	},

	[34852] = { -- Bracers of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_TBC_TIER_6,
		[CLASS_ROGUE] = {34448, 33917, 33881, 33887, 33893},
		[CLASS_PRIEST] = 33913,
		[CLASS_MAGE] = {34447, 33913},
		[CLASS_WARLOCK] = 33913,
		[CLASS_MONK] = {33917, 33881, 33887, 33893},
		[CLASS_DRUID] = {34444, 34445, 34446, 33917, 33881, 33887, 33893},
	},

	[34853] = { -- Belt of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_TBC_TIER_6,
		[CLASS_WARRIOR] = {33888, 33903, 33909},
		[CLASS_PALADIN] = {34485, 34488, 34487, 33888, 33903, 33909},
		[CLASS_PRIEST] = {34527, 34528, 33882, 33900},
		[CLASS_MAGE] = {33882, 33900},
		[CLASS_WARLOCK] = {34541, 33882, 33900},
	},

	[34854] = { -- Belt of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_TBC_TIER_6,
		[CLASS_WARRIOR] = {34547, 34546, 33811},
		[CLASS_PALADIN] = 33811,
		[CLASS_HUNTER] = {34549, 33877, 33895, 33898, 33907},
		[CLASS_SHAMAN] = {34543, 34545, 34542, 33877, 33895, 33898, 33907},
	},

	[34855] = { -- Belt of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_TBC_TIER_6,
		[CLASS_ROGUE] = {34558, 33879, 33885, 33891, 33915},
		[CLASS_PRIEST] = 33912,
		[CLASS_MAGE] = {34557, 33912},
		[CLASS_WARLOCK] = 33912,
		[CLASS_MONK] = {33879, 33885, 33891, 33915},
		[CLASS_DRUID] = {34554, 34555, 34556, 33879, 33885, 33891, 33915},
	},

	[34856] = { -- Boots of the Forgotten Conqueror
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_TBC_TIER_6,
		[CLASS_WARRIOR] = {33890, 33905, 33911},
		[CLASS_PALADIN] = {34559, 34561, 34560, 33890, 33905, 33911},
		[CLASS_PRIEST] = {34562, 34563, 33884, 33902},
		[CLASS_MAGE] = {33884, 33902},
		[CLASS_WARLOCK] = {34564, 33884, 33902},
	},

	[34857] = { -- Boots of the Forgotten Protector
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_TBC_TIER_6,
		[CLASS_WARRIOR] = {34568, 34569, 33812},
		[CLASS_PALADIN] = 33812,
		[CLASS_HUNTER] = {34570, 33878, 33896, 33899, 33908},
		[CLASS_SHAMAN] = {34565, 34567, 34566, 33878, 33896, 33899, 33908},
	},

	[34858] = { -- Boots of the Forgotten Vanquisher
		["OBTAIN"] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_TBC_TIER_6,
		[CLASS_ROGUE] = {34575, 33880, 33886, 33892, 33916},
		[CLASS_PRIEST] = 33914,
		[CLASS_MAGE] = {34574, 33914},
		[CLASS_WARLOCK] = 33914,
		[CLASS_MONK] = {33880, 33886, 33892, 33916},
		[CLASS_DRUID] = {34571, 34572, 34573, 33880, 33886, 33892, 33916},
	},

	[40610] = { -- Chestguard of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "The Four Horsemen (Naxxramas [10-Man])"},
		[CLASS_PALADIN] = {39629, 39633, 39638},
		[CLASS_PRIEST] = {39515, 39523},
		[CLASS_WARLOCK] = 39497,
	},

	[40611] = { -- Chestguard of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Gluth (Naxxramas [10-Man])"},
		[CLASS_WARRIOR] = {39606, 39611},
		[CLASS_HUNTER] = 39579,
		[CLASS_SHAMAN] = {39597, 39588, 39592},
	},

	[40612] = { -- Chestguard of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Gluth (Naxxramas [10-Man])"},
		[CLASS_ROGUE] = 39558,
		[CLASS_DEATHKNIGHT] = {39617, 39623},
		[CLASS_MAGE] = 39492,
		[CLASS_DRUID] = {39538, 39547, 39554},
	},

	[40613] = { -- Gloves of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [10-Man])"},
		[CLASS_PALADIN] = {39632, 39634, 39639},
		[CLASS_PRIEST] = {39519, 39530},
		[CLASS_WARLOCK] = 39500,
	},

	[40614] = { -- Gloves of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [10-Man])"},
		[CLASS_WARRIOR] = {39609, 39622},
		[CLASS_HUNTER] = 39582,
		[CLASS_SHAMAN] = {39591, 39593, 39601},
	},

	[40615] = { -- Gloves of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [10-Man])"},
		[CLASS_ROGUE] = 39560,
		[CLASS_DEATHKNIGHT] = {39618, 39624},
		[CLASS_MAGE] = 39495,
		[CLASS_DRUID] = {39543, 39544, 39557},
	},

	[40616] = { -- Helm of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [10-Man])"},
		[CLASS_PALADIN] = {39628, 39635, 39640},
		[CLASS_PRIEST] = {39514, 39521},
		[CLASS_WARLOCK] = 39496,
	},

	[40617] = { -- Helm of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [10-Man])"},
		[CLASS_WARRIOR] = {39605, 39610},
		[CLASS_HUNTER] = 39578,
		[CLASS_SHAMAN] = {39583, 39594, 39602},
	},

	[40618] = { -- Helm of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [10-Man])"},
		[CLASS_ROGUE] = 39561,
		[CLASS_DEATHKNIGHT] = {39619, 39625},
		[CLASS_MAGE] = 39491,
		[CLASS_DRUID] = {39531, 39545, 39553},
	},

	[40619] = { -- Leggings of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [10-Man])"},
		[CLASS_PALADIN] = {39630, 39636, 39641},
		[CLASS_PRIEST] = {39517, 39528},
		[CLASS_WARLOCK] = 39498,
	},

	[40620] = { -- Leggings of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [10-Man])"},
		[CLASS_WARRIOR] = {39607, 39612},
		[CLASS_HUNTER] = 39580,
		[CLASS_SHAMAN] = {39589, 39595, 39603},
	},

	[40621] = { -- Leggings of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [10-Man])"},
		[CLASS_ROGUE] = 39564,
		[CLASS_DEATHKNIGHT] = {39620, 39626},
		[CLASS_MAGE] = 39493,
		[CLASS_DRUID] = {39539, 39546, 39555},
	},

	[40622] = { -- Spaulders of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [10-Man])"},
		[CLASS_PALADIN] = {39631, 39637, 39642},
		[CLASS_PRIEST] = {39518, 39529},
		[CLASS_WARLOCK] = 39499,
	},

	[40623] = { -- Spaulders of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [10-Man])"},
		[CLASS_WARRIOR] = {39608, 39613},
		[CLASS_HUNTER] = 39581,
		[CLASS_SHAMAN] = {39590, 39596, 39604},
	},

	[40624] = { -- Spaulders of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [10-Man])"},
		[CLASS_ROGUE] = 39565,
		[CLASS_DEATHKNIGHT] = {39621, 39627},
		[CLASS_MAGE] = 39494,
		[CLASS_DRUID] = {39542, 39548, 39556},
	},

	[40625] = {	-- Breastplate of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Four Horsemen (Naxxramas [25-Man])"},
		[CLASS_WARLOCK] = 40423,
		[CLASS_PRIEST] = {40449, 40458},
		[CLASS_PALADIN] = {40569, 40574, 40579},
	},

	[40626] = { -- Breastplate of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Four Horsemen (Naxxramas [25-Man])"},
		[CLASS_WARRIOR] = {40525, 40544},
		[CLASS_HUNTER] = 40503,
		[CLASS_SHAMAN] = {40514, 40523, 40508},
	},

	[40627] = { -- Breastplate of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Four Horsemen (Naxxramas [25-Man])"},
		[CLASS_ROGUE] = 40495,
		[CLASS_DEATHKNIGHT] = {40550, 40559},
		[CLASS_MAGE] = 40418,
		[CLASS_DRUID] = {40463, 40469, 40471},
	},

	[40628] = { -- Gauntlets of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [25-Man])"},
		[CLASS_PALADIN] = {40570, 40575, 40580},
		[CLASS_PRIEST] = {40445, 40454},
		[CLASS_WARLOCK] = 40420,
	},

	[40629] = { -- Gauntlets of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [25-Man])"},
		[CLASS_WARRIOR] = {40527, 40545},
		[CLASS_HUNTER] = 40504,
		[CLASS_SHAMAN] = {40509, 40515, 40520},
	},

	[40630] = { -- Gauntlets of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [25-Man])"},
		[CLASS_ROGUE] = 40496,
		[CLASS_DEATHKNIGHT] = {40552, 40563},
		[CLASS_MAGE] = 40415,
		[CLASS_DRUID] = {40460, 40466, 40472},
	},

	[40631] = { -- Crown of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [25-Man])"},
		[CLASS_PALADIN] = {40571, 40576, 40581},
		[CLASS_PRIEST] = {40447, 40456},
		[CLASS_WARLOCK] = 40421,
	},

	[40632] = { -- Crown of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [25-Man])"},
		[CLASS_WARRIOR] = {40528, 40546},
		[CLASS_HUNTER] = 40505,
		[CLASS_SHAMAN] = {40521, 40510, 40516},
	},

	[40633] = { -- Crown of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [25-Man])"},
		[CLASS_ROGUE] = 40499,
		[CLASS_DEATHKNIGHT] = {40554, 40565},
		[CLASS_MAGE] = 40416,
		[CLASS_DRUID] = {40461, 40467, 40473},
	},

	[40634] = { -- Legplates of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [25-Man])"},
		[CLASS_PALADIN] = {40572, 40577, 40583},
		[CLASS_PRIEST] = {40448, 40457},
		[CLASS_WARLOCK] = 40422,
	},

	[40635] = { -- Legplates of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [25-Man])"},
		[CLASS_WARRIOR] = {40529, 40547},
		[CLASS_HUNTER] = 40506,
		[CLASS_SHAMAN] = {40512, 40517, 40522},
	},

	[40636] = { -- Legplates of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Thaddius (Naxxramas [25-Man])"},
		[CLASS_ROGUE] = 40500,
		[CLASS_DEATHKNIGHT] = {40556, 40567},
		[CLASS_MAGE] = 40417,
		[CLASS_DRUID] = {40462, 40468, 40493},
	},

	[40637] = { -- Mantle of the Lost Conqueror
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [25-Man])"},
		[CLASS_PALADIN] = {40573, 40578, 40584},
		[CLASS_PRIEST] = {40450, 40459},
		[CLASS_WARLOCK] = 40424,
	},

	[40638] = { -- Mantle of the Lost Protector
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [25-Man])"},
		[CLASS_WARRIOR] = {40530, 40548},
		[CLASS_HUNTER] = 40507,
		[CLASS_SHAMAN] = {40513, 40518, 40524},
	},

	[40639] = { -- Mantle of the Lost Vanquisher
		["OBTAIN"] = {SET_TIER_7, "Loatheb (Naxxramas [25-Man])"},
		[CLASS_ROGUE] = 40502,
		[CLASS_DEATHKNIGHT] = {40557, 40568},
		[CLASS_MAGE] = 40419,
		[CLASS_DRUID] = {40465, 40470, 40494},
	},

	[45632] = { -- Breastplate of the Wayward Conqueror
		[CLASS_PALADIN] = {46154, 46173, 46178},
		[CLASS_PRIEST] = {46168, 46193},
		[CLASS_WARLOCK] = 46137,
	},

	[45633] = { -- Breastplate of the Wayward Protector
		[CLASS_WARRIOR] = {46146, 46162},
		[CLASS_HUNTER] = 46141,
		[CLASS_SHAMAN] = {46198, 46205, 46206},
	},

	[45634] = { -- Breastplate of the Wayward Vanquisher
		[CLASS_ROGUE] = 46123,
		[CLASS_DEATHKNIGHT] = {46111, 46118},
		[CLASS_MAGE] = 46130,
		[CLASS_DRUID] = {46159, 46186, 46194},
	},

	[45635] = { -- Chestguard of the Wayward Conqueror
		[CLASS_PALADIN] = {45374, 45375, 45381},
		[CLASS_PRIEST] = {45389, 45395},
		[CLASS_WARLOCK] = 45421,
	},

	[45636] = { -- Chestguard of the Wayward Protector
		[CLASS_WARRIOR] = {45424, 45429},
		[CLASS_HUNTER] = 45364,
		[CLASS_SHAMAN] = {45405, 45411, 45413},
	},

	[45637] = { -- Chestguard of the Wayward Vanquisher
		[CLASS_ROGUE] = 45396,
		[CLASS_DEATHKNIGHT] = {45335, 45340},
		[CLASS_MAGE] = 45368,
		[CLASS_DRUID] = {45348, 45354, 45358},
	},

	[45638] = { -- Crown of the Wayward Conqueror
		[CLASS_PALADIN] = {46156, 46175, 46180},
		[CLASS_PRIEST] = {46172, 46197},
		[CLASS_WARLOCK] = 46140,
	},

	[45639] = { -- Crown of the Wayward Protector
		[CLASS_WARRIOR] = {46151, 46166},
		[CLASS_HUNTER] = 46143,
		[CLASS_SHAMAN] = {46201, 46209, 46212},
	},

	[45640] = { -- Crown of the Wayward Vanquisher
		[CLASS_ROGUE] = 46125,
		[CLASS_DEATHKNIGHT] = {46115, 46120},
		[CLASS_MAGE] = 46129,
		[CLASS_DRUID] = {46161, 46184, 46191},
	},

	[45643] = { -- Gauntlets of the Wayward Vanquisher
		[CLASS_ROGUE] = 46124,
		[CLASS_DEATHKNIGHT] = {46113, 46119},
		[CLASS_DRUID] = {46158, 46183, 46189},
		[CLASS_MAGE] = 46132,
	},

	[45641] = { -- Gauntlets of the Wayward Conqueror
		[CLASS_PALADIN] = {46155, 46174, 46179},
		[CLASS_PRIEST] = {46163, 46188},
		[CLASS_WARLOCK] = 46135,
	},

	[45642] = { -- Gauntlets of the Wayward Protector
		[CLASS_WARRIOR] = {46148, 46164},
		[CLASS_HUNTER] = 46142,
		[CLASS_SHAMAN] = {46199, 46200, 46207},
	},

	[45644] = { -- Gloves of the Wayward Conqueror
		[CLASS_PALADIN] = {45370, 45376, 45383},
		[CLASS_PRIEST] = {45387, 45392},
		[CLASS_WARLOCK] = 45419,
	},

	[45645] = { -- Gloves of the Wayward Protector
		[CLASS_WARRIOR] = {45426, 45430},
		[CLASS_HUNTER] = 45360,
		[CLASS_SHAMAN] = {45401, 45406, 45414},
	},

	[45646] = { -- Gloves of the Wayward Vanquisher
		[CLASS_ROGUE] = 45397,
		[CLASS_DEATHKNIGHT] = {45337, 45341},
		[CLASS_MAGE] = 46131,
		[CLASS_DRUID] = {45345, 45351, 45355},
	},

	[45647] = { -- Helm of the Wayward Conqueror
		[CLASS_PALADIN] = {45372, 45377, 45382},
		[CLASS_PRIEST] = {45386, 45391},
		[CLASS_WARLOCK] = 45417,
	},

	[45648] = { -- Helm of the Wayward Protector
		[CLASS_WARRIOR] = {45425, 45431},
		[CLASS_HUNTER] = 45361,
		[CLASS_SHAMAN] = {45402, 45408, 45412},
	},

	[45649] = { -- Helm of the Wayward Vanquisher
		[CLASS_ROGUE] = 45398,
		[CLASS_DEATHKNIGHT] = {45336, 45342},
		[CLASS_MAGE] = 45365,
		[CLASS_DRUID] = {45346, 45356, 46313},
	},

	[45650] = { -- Leggings of the Wayward Conqueror
		[CLASS_PALADIN] = {45371, 45379, 45384},
		[CLASS_PRIEST] = {45388, 45394},
		[CLASS_WARLOCK] = 45420,
	},

	[45651] = { -- Leggings of the Wayward Protector
		[CLASS_WARRIOR] = {45427, 45432},
		[CLASS_HUNTER] = 45362,
		[CLASS_SHAMAN] = {45403, 45409, 45416},
	},

	[45652] = { -- Leggings of the Wayward Vanquisher
		[CLASS_ROGUE] = 45399,
		[CLASS_DEATHKNIGHT] = {45338, 45343},
		[CLASS_MAGE] = 45367,
		[CLASS_DRUID] = {45347, 45353, 45357},
	},

	[45653] = { -- Legplates of the Wayward Conqueror
		[CLASS_PALADIN] = {46153, 46176, 46181},
		[CLASS_PRIEST] = {46170, 46195},
		[CLASS_WARLOCK] = 46139,
	},

	[45654] = { -- Legplates of the Wayward Protector
		[CLASS_WARRIOR] = {46150, 46169},
		[CLASS_HUNTER] = 46144,
		[CLASS_SHAMAN] = {46202, 46208, 46210},
	},

	[45655] = { -- Legplates of the Wayward Vanquisher
		[CLASS_ROGUE] = 46126,
		[CLASS_DEATHKNIGHT] = {46116, 46121},
		[CLASS_MAGE] = 46133,
		[CLASS_DRUID] = {46160, 46185, 46192},
	},

	[45656] = { -- Mantle of the Wayward Conqueror
		[CLASS_PALADIN] = {46177, 46182, 46152},
		[CLASS_PRIEST] = {46165, 46190},
		[CLASS_WARLOCK] = 46136,
	},

	[45657] = { -- Mantle of the Wayward Protector
		[CLASS_WARRIOR] = {46149, 46167},
		[CLASS_HUNTER] = 46145,
		[CLASS_SHAMAN] = {46203, 46204, 46211},
	},

	[45658] = { -- Mantle of the Wayward Vanquisher
		[CLASS_ROGUE] = 46127,
		[CLASS_DEATHKNIGHT] = {46117, 46122},
		[CLASS_MAGE] = 46134,
		[CLASS_DRUID] = {46157, 46187, 46196},
	},

	[45659] = { -- Spaulders of the Wayward Conqueror
		[CLASS_PALADIN] = {45373, 45380, 45385},
		[CLASS_PRIEST] = {45390, 45393},
		[CLASS_WARLOCK] = 45422,
	},

	[45660] = { -- Spaulders of the Wayward Protector
		[CLASS_WARRIOR] = {45428, 45433},
		[CLASS_HUNTER] = 45363,
		[CLASS_SHAMAN] = {45404, 45410, 45415},
	},

	[45661] = { -- Spaulders of the Wayward Vanquisher
		[CLASS_ROGUE] = 45400,
		[CLASS_DEATHKNIGHT] = {45339, 45344},
		[CLASS_MAGE] = 45369,
		[CLASS_DRUID] = {45349, 45352, 45359},
	},

	-- Tier 10 Plate Exchange
	[50098] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51125 }, -- Sanctified Scourgelord Shoulderplates
	[50097] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51126 }, -- Sanctified Scourgelord Legplates
	[50096] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51127 }, -- Sanctified Scourgelord Helmet
	[50095] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51128 }, -- Sanctified Scourgelord Gauntlets
	[50094] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51129 }, -- Sanctified Scourgelord Battleplate
	[50853] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51130 }, -- Sanctified Scourgelord Pauldrons
	[50854] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51131 }, -- Sanctified Scourgelord Legguards
	[50856] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51132 }, -- Sanctified Scourgelord Handguards
	[50855] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51133 }, -- Sanctified Scourgelord Faceguard
	[50857] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51134 }, -- Sanctified Scourgelord Chestguard
	[51134] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51305 }, -- Sanctified Scourgelord Chestguard
	[51133] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51306 }, -- Sanctified Scourgelord Faceguard
	[51132] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51307 }, -- Sanctified Scourgelord Handguards
	[51131] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51308 }, -- Sanctified Scourgelord Legguards
	[51130] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51309 }, -- Sanctified Scourgelord Pauldrons
	[51129] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51310 }, -- Sanctified Scourgelord Battleplate
	[51128] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51311 }, -- Sanctified Scourgelord Gauntlets
	[51127] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51312 }, -- Sanctified Scourgelord Helmet
	[51126] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51313 }, -- Sanctified Scourgelord Legplates
	[51125] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DEATHKNIGHT] = 51314 }, -- Sanctified Scourgelord Shoulderplates
	[50324] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51160 }, -- Sanctified Lightsworn Shoulderplates
	[50325] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51161 }, -- Sanctified Lightsworn Legplates
	[50326] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51162 }, -- Sanctified Lightsworn Helmet
	[50327] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51163 }, -- Sanctified Lightsworn Gauntlets
	[50328] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51164 }, -- Sanctified Lightsworn Battleplate
	[50869] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51165 }, -- Sanctified Lightsworn Tunic
	[50865] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51166 }, -- Sanctified Lightsworn Spaulders
	[50867] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51167 }, -- Sanctified Lightsworn Headpiece
	[50866] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51168 }, -- Sanctified Lightsworn Greaves
	[50868] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51169 }, -- Sanctified Lightsworn Gloves
	[50860] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51170 }, -- Sanctified Lightsworn Shoulderguards
	[50861] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51171 }, -- Sanctified Lightsworn Legguards
	[50863] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51172 }, -- Sanctified Lightsworn Handguards
	[50862] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51173 }, -- Sanctified Lightsworn Faceguard
	[50864] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51174 }, -- Sanctified Lightsworn Chestguard
	[51174] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51265 }, -- Sanctified Lightsworn Chestguard
	[51173] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51266 }, -- Sanctified Lightsworn Faceguard
	[51172] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51267 }, -- Sanctified Lightsworn Handguards
	[51171] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51268 }, -- Sanctified Lightsworn Legguards
	[51170] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51269 }, -- Sanctified Lightsworn Shoulderguards
	[51169] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51270 }, -- Sanctified Lightsworn Gloves
	[51168] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51271 }, -- Sanctified Lightsworn Greaves
	[51167] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51272 }, -- Sanctified Lightsworn Headpiece
	[51166] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51273 }, -- Sanctified Lightsworn Spaulders
	[51165] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51274 }, -- Sanctified Lightsworn Tunic
	[51164] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51275 }, -- Sanctified Lightsworn Battleplate
	[51163] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51276 }, -- Sanctified Lightsworn Gauntlets
	[51162] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51277 }, -- Sanctified Lightsworn Helmet
	[51161] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51278 }, -- Sanctified Lightsworn Legplates
	[51160] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PALADIN] = 51279 }, -- Sanctified Lightsworn Shoulderplates
	[50082] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51210 }, -- Sanctified Ymirjar Lord's Shoulderplates
	[50081] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51211 }, -- Sanctified Ymirjar Lord's Legplates
	[50080] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51212 }, -- Sanctified Ymirjar Lord's Helmet
	[50079] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51213 }, -- Sanctified Ymirjar Lord's Gauntlets
	[50078] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51214 }, -- Sanctified Ymirjar Lord's Battleplate
	[50846] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51215 }, -- Sanctified Ymirjar Lord's Pauldrons
	[50847] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51216 }, -- Sanctified Ymirjar Lord's Legguards
	[50849] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51217 }, -- Sanctified Ymirjar Lord's Handguards
	[50848] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51218 }, -- Sanctified Ymirjar Lord's Greathelm
	[50850] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51219 }, -- Sanctified Ymirjar Lord's Breastplate
	[51219] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51220 }, -- Sanctified Ymirjar Lord's Breastplate
	[51218] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51221 }, -- Sanctified Ymirjar Lord's Greathelm
	[51217] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51222 }, -- Sanctified Ymirjar Lord's Handguards
	[51216] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51223 }, -- Sanctified Ymirjar Lord's Legguards
	[51215] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51224 }, -- Sanctified Ymirjar Lord's Pauldrons
	[51214] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51225 }, -- Sanctified Ymirjar Lord's Battleplate
	[51213] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51226 }, -- Sanctified Ymirjar Lord's Gauntlets
	[51212] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51227 }, -- Sanctified Ymirjar Lord's Helmet
	[51211] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51228 }, -- Sanctified Ymirjar Lord's Legplates
	[51210] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARRIOR] = 51229 }, -- Sanctified Ymirjar Lord's Shoulderplates

	-- Tier 10 Cloth Exchange
	[50767] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51175 }, -- Sanctified Crimson Acolyte Shoulderpads
	[50768] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51176 }, -- Sanctified Crimson Acolyte Robe
	[50769] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51177 }, -- Sanctified Crimson Acolyte Leggings
	[50765] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51178 }, -- Sanctified Crimson Acolyte Hood
	[50766] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51179 }, -- Sanctified Crimson Acolyte Gloves
	[50394] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51180 }, -- Sanctified Crimson Acolyte Raiments
	[50393] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51181 }, -- Sanctified Crimson Acolyte Pants
	[50396] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51182 }, -- Sanctified Crimson Acolyte Mantle
	[50391] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51183 }, -- Sanctified Crimson Acolyte Handwraps
	[50392] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51184 }, -- Sanctified Crimson Acolyte Cowl
	[51184] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51255 }, -- Sanctified Crimson Acolyte Cowl
	[51183] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51256 }, -- Sanctified Crimson Acolyte Handwraps
	[51182] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51257 }, -- Sanctified Crimson Acolyte Mantle
	[51181] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51258 }, -- Sanctified Crimson Acolyte Pants
	[51180] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51259 }, -- Sanctified Crimson Acolyte Raiments
	[51179] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51260 }, -- Sanctified Crimson Acolyte Gloves
	[51178] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51261 }, -- Sanctified Crimson Acolyte Hood
	[51177] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51262 }, -- Sanctified Crimson Acolyte Leggings
	[51176] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51263 }, -- Sanctified Crimson Acolyte Robe
	[51175] = { [REDEEM] = REDEEM_TIER_10, [CLASS_PRIEST] = 51264 }, -- Sanctified Crimson Acolyte Shoulderpads
	[50244] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARLOCK] = 51205 }, -- Sanctified Dark Coven Shoulderpads
	[50243] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARLOCK] = 51206 }, -- Sanctified Dark Coven Robe
	[50242] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARLOCK] = 51207 }, -- Sanctified Dark Coven Leggings
	[50241] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARLOCK] = 51208 }, -- Sanctified Dark Coven Hood
	[50240] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARLOCK] = 51209 }, -- Sanctified Dark Coven Gloves
	[51209] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARLOCK] = 51230 }, -- Sanctified Dark Coven Gloves
	[51208] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARLOCK] = 51231 }, -- Sanctified Dark Coven Hood
	[51207] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARLOCK] = 51232 }, -- Sanctified Dark Coven Leggings
	[51206] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARLOCK] = 51233 }, -- Sanctified Dark Coven Robe
	[51205] = { [REDEEM] = REDEEM_TIER_10, [CLASS_WARLOCK] = 51234 }, -- Sanctified Dark Coven Shoulderpads
	[51159] = { [REDEEM] = REDEEM_TIER_10, [CLASS_MAGE] = 51280 }, -- Sanctified Bloodmage Gloves
	[51158] = { [REDEEM] = REDEEM_TIER_10, [CLASS_MAGE] = 51281 }, -- Sanctified Bloodmage Hood
	[51157] = { [REDEEM] = REDEEM_TIER_10, [CLASS_MAGE] = 51282 }, -- Sanctified Bloodmage Leggings
	[51156] = { [REDEEM] = REDEEM_TIER_10, [CLASS_MAGE] = 51283 }, -- Sanctified Bloodmage Robe
	[51155] = { [REDEEM] = REDEEM_TIER_10, [CLASS_MAGE] = 51284 }, -- Sanctified Bloodmage Shoulderpads
	[50279] = { [REDEEM] = REDEEM_TIER_10, [CLASS_MAGE] = 51155 }, -- Sanctified Bloodmage Shoulderpads
	[50278] = { [REDEEM] = REDEEM_TIER_10, [CLASS_MAGE] = 51156 }, -- Sanctified Bloodmage Robe
	[50277] = { [REDEEM] = REDEEM_TIER_10, [CLASS_MAGE] = 51157 }, -- Sanctified Bloodmage Leggings
	[50276] = { [REDEEM] = REDEEM_TIER_10, [CLASS_MAGE] = 51158 }, -- Sanctified Bloodmage Hood
	[50275] = { [REDEEM] = REDEEM_TIER_10, [CLASS_MAGE] = 51159 }, -- Sanctified Bloodmage Gloves

	-- Tier 10 Leather Exchange
	[50113] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51135 }, -- Sanctified Lasherweave Pauldrons
	[50109] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51136 }, -- Sanctified Lasherweave Legplates
	[50108] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51137 }, -- Sanctified Lasherweave Helmet
	[50107] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51138 }, -- Sanctified Lasherweave Gauntlets
	[50106] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51139 }, -- Sanctified Lasherweave Robes
	[50824] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51140 }, -- Sanctified Lasherweave Shoulderpads
	[50828] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51141 }, -- Sanctified Lasherweave Raiment
	[50825] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51142 }, -- Sanctified Lasherweave Legguards
	[50826] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51143 }, -- Sanctified Lasherweave Headguard
	[50827] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51144 }, -- Sanctified Lasherweave Handgrips
	[50823] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51145 }, -- Sanctified Lasherweave Vestment
	[50820] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51146 }, -- Sanctified Lasherweave Trousers
	[50819] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51147 }, -- Sanctified Lasherweave Mantle
	[50822] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51148 }, -- Sanctified Lasherweave Gloves
	[50821] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51149 }, -- Sanctified Lasherweave Cover
	[51149] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51290 }, -- Sanctified Lasherweave Cover
	[51148] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51291 }, -- Sanctified Lasherweave Gloves
	[51147] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51292 }, -- Sanctified Lasherweave Mantle
	[51146] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51293 }, -- Sanctified Lasherweave Trousers
	[51145] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51294 }, -- Sanctified Lasherweave Vestment
	[51144] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51295 }, -- Sanctified Lasherweave Handgrips
	[51143] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51296 }, -- Sanctified Lasherweave Headguard
	[51142] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51297 }, -- Sanctified Lasherweave Legguards
	[51141] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51298 }, -- Sanctified Lasherweave Raiment
	[51140] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51299 }, -- Sanctified Lasherweave Shoulderpads
	[51139] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51300 }, -- Sanctified Lasherweave Robes
	[51138] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51301 }, -- Sanctified Lasherweave Gauntlets
	[51137] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51302 }, -- Sanctified Lasherweave Helmet
	[51136] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51303 }, -- Sanctified Lasherweave Legplates
	[51135] = { [REDEEM] = REDEEM_TIER_10, [CLASS_DRUID] = 51304 }, -- Sanctified Lasherweave Pauldrons
	[50105] = { [REDEEM] = REDEEM_TIER_10, [CLASS_ROGUE] = 51185 }, -- Sanctified Shadowblade Pauldrons
	[50090] = { [REDEEM] = REDEEM_TIER_10, [CLASS_ROGUE] = 51186 }, -- Sanctified Shadowblade Legplates
	[50089] = { [REDEEM] = REDEEM_TIER_10, [CLASS_ROGUE] = 51187 }, -- Sanctified Shadowblade Helmet
	[50088] = { [REDEEM] = REDEEM_TIER_10, [CLASS_ROGUE] = 51188 }, -- Sanctified Shadowblade Gauntlets
	[50087] = { [REDEEM] = REDEEM_TIER_10, [CLASS_ROGUE] = 51189 }, -- Sanctified Shadowblade Breastplate
	[51189] = { [REDEEM] = REDEEM_TIER_10, [CLASS_ROGUE] = 51250 }, -- Sanctified Shadowblade Breastplate
	[51188] = { [REDEEM] = REDEEM_TIER_10, [CLASS_ROGUE] = 51251 }, -- Sanctified Shadowblade Gauntlets
	[51187] = { [REDEEM] = REDEEM_TIER_10, [CLASS_ROGUE] = 51252 }, -- Sanctified Shadowblade Helmet
	[51186] = { [REDEEM] = REDEEM_TIER_10, [CLASS_ROGUE] = 51253 }, -- Sanctified Shadowblade Legplates
	[51185] = { [REDEEM] = REDEEM_TIER_10, [CLASS_ROGUE] = 51254 }, -- Sanctified Shadowblade Pauldrons

	-- Tier 10 Mail Exchange
	[50118] = { [REDEEM] = REDEEM_TIER_10, [CLASS_HUNTER] = 51150 }, -- Sanctified Ahn'Kahar Blood Hunter's Tunic
	[50117] = { [REDEEM] = REDEEM_TIER_10, [CLASS_HUNTER] = 51151 }, -- Sanctified Ahn'Kahar Blood Hunter's Spaulders
	[50116] = { [REDEEM] = REDEEM_TIER_10, [CLASS_HUNTER] = 51152 }, -- Sanctified Ahn'Kahar Blood Hunter's Legguards
	[50115] = { [REDEEM] = REDEEM_TIER_10, [CLASS_HUNTER] = 51153 }, -- Sanctified Ahn'Kahar Blood Hunter's Headpiece
	[50114] = { [REDEEM] = REDEEM_TIER_10, [CLASS_HUNTER] = 51154 }, -- Sanctified Ahn'Kahar Blood Hunter's Handguards
	[51154] = { [REDEEM] = REDEEM_TIER_10, [CLASS_HUNTER] = 51285 }, -- Sanctified Ahn'Kahar Blood Hunter's Handguards
	[51153] = { [REDEEM] = REDEEM_TIER_10, [CLASS_HUNTER] = 51286 }, -- Sanctified Ahn'Kahar Blood Hunter's Headpiece
	[51152] = { [REDEEM] = REDEEM_TIER_10, [CLASS_HUNTER] = 51287 }, -- Sanctified Ahn'Kahar Blood Hunter's Legguards
	[51151] = { [REDEEM] = REDEEM_TIER_10, [CLASS_HUNTER] = 51288 }, -- Sanctified Ahn'Kahar Blood Hunter's Spaulders
	[51150] = { [REDEEM] = REDEEM_TIER_10, [CLASS_HUNTER] = 51289 }, -- Sanctified Ahn'Kahar Blood Hunter's Tunic
	[50835] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51190 }, -- Sanctified Frost Witch's Tunic
	[50836] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51191 }, -- Sanctified Frost Witch's Handguards
	[50837] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51192 }, -- Sanctified Frost Witch's Headpiece
	[50838] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51193 }, -- Sanctified Frost Witch's Legguards
	[50839] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51194 }, -- Sanctified Frost Witch's Spaulders
	[50830] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51195 }, -- Sanctified Frost Witch's Chestguard
	[50831] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51196 }, -- Sanctified Frost Witch's Grips
	[50832] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51197 }, -- Sanctified Frost Witch's Faceguard
	[50833] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51198 }, -- Sanctified Frost Witch's War-Kilt
	[50834] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51199 }, -- Sanctified Frost Witch's Shoulderguards
	[50841] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51200 }, -- Sanctified Frost Witch's Hauberk
	[50842] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51201 }, -- Sanctified Frost Witch's Gloves
	[50843] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51202 }, -- Sanctified Frost Witch's Helm
	[50844] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51203 }, -- Sanctified Frost Witch's Kilt
	[50845] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51204 }, -- Sanctified Frost Witch's Shoulderpads
	[51204] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51235 }, -- Sanctified Frost Witch's Shoulderpads
	[51203] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51236 }, -- Sanctified Frost Witch's Kilt
	[51202] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51237 }, -- Sanctified Frost Witch's Helm
	[51201] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51238 }, -- Sanctified Frost Witch's Gloves
	[51200] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51239 }, -- Sanctified Frost Witch's Hauberk
	[51199] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51240 }, -- Sanctified Frost Witch's Shoulderguards
	[51198] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51241 }, -- Sanctified Frost Witch's War-Kilt
	[51197] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51242 }, -- Sanctified Frost Witch's Faceguard
	[51196] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51243 }, -- Sanctified Frost Witch's Grips
	[51195] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51244 }, -- Sanctified Frost Witch's Chestguard
	[51194] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51245 }, -- Sanctified Frost Witch's Spaulders
	[51193] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51246 }, -- Sanctified Frost Witch's Legguards
	[51192] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51247 }, -- Sanctified Frost Witch's Headpiece
	[51191] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51248 }, -- Sanctified Frost Witch's Handguards
	[51190] = { [REDEEM] = REDEEM_TIER_10, [CLASS_SHAMAN] = 51249 }, -- Sanctified Frost Witch's Tunic

	[52025] = { -- Vanquisher's Mark of Sanctification
		[REDEEM] = REDEEM_TIER_10,
		[CLASS_ROGUE] = {51185, 51186, 51187, 51188, 51189},
		[CLASS_DEATHKNIGHT] = {51130, 51131, 51132, 51133, 51134, 51129, 51125, 51126, 51127, 51128},
		[CLASS_MAGE] = {51159, 51155, 51156, 51157, 51158},
		[CLASS_DRUID] = {51138, 51139, 51145, 51146, 51147, 51148, 51149, 51140, 51141, 51142, 51143, 51144, 51135, 51136, 51137},
	},

	[52026] = { -- Protector's Mark of Sanctification
		[REDEEM] = REDEEM_TIER_10,
		[CLASS_WARRIOR] = {51217, 51218, 51219, 51210, 51211, 51212, 51213, 51214, 51215, 51216},
		[CLASS_HUNTER] = {51150, 51151, 51152, 51153, 51154},
		[CLASS_SHAMAN] = {51190, 51199, 51200, 51201, 51202, 51203, 51204, 51198, 51191, 51192, 51193, 51194, 51195, 51196, 51197},
	},

	[52027] = { -- Conqueror's Mark of Sanctification
		[REDEEM] = REDEEM_TIER_10,
		[CLASS_PALADIN] = {51161, 51162, 51163, 51164, 51170, 51171, 51172, 51173, 51174, 51165, 51166, 51167, 51168, 51169, 51160},
		[CLASS_PRIEST] = {51184, 51178, 51179, 51180, 51181, 51182, 51183, 51177, 51175, 51176},
		[CLASS_WARLOCK] = {51205, 51206, 51207, 51208, 51209},
	},

	[52028] = { -- Vanquisher's Mark of Sanctification
		[REDEEM] = REDEEM_TIER_10,
		[CLASS_ROGUE] = {51250, 51251, 51252, 51253, 51254},
		[CLASS_DEATHKNIGHT] = {51312, 51310, 51311, 51313, 51314, 51305, 51306, 51307, 51308, 51309},
		[CLASS_MAGE] = {51283, 51284, 51280, 51281, 51282},
		[CLASS_DRUID] = {51295, 51296, 51297, 51298, 51299, 51300, 51301, 51294, 51302, 51303, 51304, 51290, 51291, 51292, 51293},
	},

	[52029] = { -- Protector's Mark of Sanctification
		[REDEEM] = REDEEM_TIER_10,
		[CLASS_WARRIOR] = {51222, 51223, 51224, 51225, 51226, 51227, 51228, 51229, 51220, 51221},
		[CLASS_HUNTER] = {51285, 51286, 51287, 51288, 51289},
		[CLASS_SHAMAN] = {51249, 51239, 51238, 51237, 51236, 51235, 51240, 51241, 51248, 51247, 51246, 51245, 51244, 51243, 51242},
	},

	[52030] = { -- Conqueror's Mark of Sanctification
		[REDEEM] = REDEEM_TIER_10,
		[CLASS_PALADIN] = {51265, 51266, 51267, 51268, 51269, 51270, 51271, 51272, 51273, 51274, 51275, 51276, 51277, 51278, 51279},
		[CLASS_PRIEST] = {51257, 51258, 51259, 51256, 51260, 51261, 51262, 51263, 51264, 51255},
		[CLASS_WARLOCK] = {51233, 51230, 51231, 51232, 51234},
	},

	[65000] = { -- Crown of the Forlorn Protector
		[CLASS_WARRIOR] = {65266, 65271},
		[CLASS_HUNTER] = 65206,
		[CLASS_SHAMAN] = {65246, 65251, 65256},
	},

	[65001] = { -- Crown of the Forlorn Conqueror
		[CLASS_PALADIN] = {65216, 65221, 65226},
		[CLASS_PRIEST] = {65230, 65235},
		[CLASS_WARLOCK] = 65260,
	},

	[65002] = { -- Crown of the Forlorn Vanquisher
		[CLASS_ROGUE] = 65241,
		[CLASS_DEATHKNIGHT] = {65181, 65186},
		[CLASS_MAGE] = 65210,
		[CLASS_DRUID] = {65190, 65195, 65200},
	},

	[65087] = { -- Shoulders of the Forlorn Protector
		[CLASS_WARRIOR] = {65268, 65273},
		[CLASS_HUNTER] = 65208,
		[CLASS_SHAMAN] = {65248, 65253, 65258},
	},

	[65088] = { -- Shoulders of the Forlorn Conqueror
		[CLASS_PALADIN] = {65218, 65223, 65228},
		[CLASS_PRIEST] = {65233, 65238},
		[CLASS_WARLOCK] = 65263,
	},

	[65089] = { -- Shoulders of the Forlorn Vanquisher
		[CLASS_ROGUE] = 65243,
		[CLASS_DEATHKNIGHT] = {65183, 65188},
		[CLASS_MAGE] = 65213,
		[CLASS_DRUID] = {65193, 65198, 65203},
	},

	[67423] = { -- Chest of the Forlorn Conqueror
		[CLASS_PALADIN] = {65224, 65219, 65214},
		[CLASS_PRIEST] = {65237, 65232},
		[CLASS_WARLOCK] = 65262,
	},

	[67424] = { -- Chest of the Forlorn Protector
		[CLASS_WARRIOR] = {65269, 65264},
		[CLASS_HUNTER] = 65204,
		[CLASS_SHAMAN] = {65254, 65249, 65244},
	},

	[67425] = { -- Chest of the Forlorn Vanquisher
		[CLASS_ROGUE] = 65239,
		[CLASS_DEATHKNIGHT] = {65184, 65179},
		[CLASS_MAGE] = 65212,
		[CLASS_DRUID] = {65202, 65197, 65192},
	},

	[67426] = { -- Leggings of the Forlorn Vanquisher
		[CLASS_ROGUE] = 65242,
		[CLASS_DEATHKNIGHT] = {65187, 65182},
		[CLASS_MAGE] = 65211,
		[CLASS_DRUID] = {65201, 65196, 65191},
	},

	[67427] = { -- Leggings of the Forlorn Protector
		[CLASS_WARRIOR] = {65267, 65272},
		[CLASS_HUNTER] = 65207,
		[CLASS_SHAMAN] = {65257, 65252, 65247},
	},

	[67428] = { -- Leggings of the Forlorn Conqueror
		[CLASS_PALADIN] = {65227, 65222, 65217},
		[CLASS_PRIEST] = {65236, 65231},
		[CLASS_WARLOCK] = 65261,
	},

	[67429] = { -- Gauntlets of the Forlorn Conqueror
		[CLASS_PALADIN] = {65215, 65220, 65225},
		[CLASS_PRIEST] = {65229, 65234},
		[CLASS_WARLOCK] = 65259,
	},

	[67430] = { -- Gauntlets of the Forlorn Protector
		[CLASS_WARRIOR] = {65265, 65270},
		[CLASS_HUNTER] = 65205,
		[CLASS_SHAMAN] = {65255, 65245, 65250},
	},

	[67431] = { -- Gauntlets of the Forlorn Vanquisher
		[CLASS_ROGUE] = 65240,
		[CLASS_DEATHKNIGHT] = {65180, 65185},
		[CLASS_MAGE] = 65209,
		[CLASS_DRUID] = {65194, 65199, 65189},
	},

	[66998] = { -- Essence of the Forlorn
		[REDEEM] = REDEEM_TIER_11,
		["LINK"] = {67428, 65088, 67423, 67424, 67425, 67426, 67427, 65089, 67429, 67430, 67431, 65000, 65001, 65002, 65087},
	},

	[71669] = { -- Gauntlets of the Fiery Vanquisher
		[CLASS_ROGUE] = 71538,
		[CLASS_DEATHKNIGHT] = {71477, 71482},
		[CLASS_MAGE] = 71507,
		[CLASS_DRUID] = {71487, 71491, 71496},
	},

	[71670] = { -- Crown of the Fiery Vanquisher
		[CLASS_ROGUE] = 71539,
		[CLASS_DEATHKNIGHT] = {71478, 71483},
		[CLASS_MAGE] = 71508,
		[CLASS_DRUID] = {71488, 71492, 71497},
	},

	[71671] = { -- Leggings of the Fiery Vanquisher
		[CLASS_ROGUE] = 71540,
		[CLASS_DEATHKNIGHT] = {71479, 71484},
		[CLASS_MAGE] = 71509,
		[CLASS_DRUID] = {71489, 71493, 71498},
	},

	[71672] = { -- Chest of the Fiery Vanquisher
		[CLASS_ROGUE] = 71537,
		[CLASS_DEATHKNIGHT] = {71476, 71481},
		[CLASS_MAGE] = 71510,
		[CLASS_DRUID] = {71486, 71494, 71499},
	},

	[71673] = { -- Shoulders of the Fiery Vanquisher
		[CLASS_ROGUE] = 71541,
		[CLASS_DEATHKNIGHT] = {71480, 71485},
		[CLASS_MAGE] = 71511,
		[CLASS_DRUID] = {71490, 71495, 71500},
	},

	[71676] = { -- Gauntlets of the Fiery Conqueror
		[CLASS_PALADIN] = {71513, 71518, 71523},
		[CLASS_PRIEST] = {71527, 71532},
		[CLASS_WARLOCK] = 71594,
	},

	[71677] = { -- Crown of the Fiery Conqueror
		[CLASS_PALADIN] = {71514, 71519, 71524},
		[CLASS_PRIEST] = {71528, 71533},
		[CLASS_WARLOCK] = 71595,
	},

	[71678] = { -- Leggings of the Fiery Conqueror
		[CLASS_PALADIN] = {71515, 71520, 71525},
		[CLASS_PRIEST] = {71529, 71534},
		[CLASS_WARLOCK] = 71596,
	},

	[71679] = { -- Chest of the Fiery Conqueror
		[CLASS_PALADIN] = {71522, 71512, 71517},
		[CLASS_PRIEST] = {71530, 71535},
		[CLASS_WARLOCK] = 71597,
	},

	[71680] = { -- Shoulders of the Fiery Conqueror
		[CLASS_PALADIN] = {71516, 71521, 71526},
		[CLASS_PRIEST] = {71531, 71536},
		[CLASS_WARLOCK] = 71598,
	},

	[71683] = { -- Gauntlets of the Fiery Protector
		[CLASS_WARRIOR] = {71605, 71601},
		[CLASS_HUNTER] = 71502,
		[CLASS_SHAMAN] = {71543, 71548, 71553},
	},

	[71684] = { -- Crown of the Fiery Protector
		[CLASS_WARRIOR] = {71599, 71606},
		[CLASS_HUNTER] = 71503,
		[CLASS_SHAMAN] = {71544, 71549, 71554},
	},

	[71685] = { -- Leggings of the Fiery Protector
		[CLASS_WARRIOR] = {71602, 71607},
		[CLASS_HUNTER] = 71504,
		[CLASS_SHAMAN] = {71545, 71550, 71555},
	},

	[71686] = { -- Chest of the Fiery Protector
		[CLASS_WARRIOR] = {71600, 71604},
		[CLASS_HUNTER] = 71501,
		[CLASS_SHAMAN] = {71542, 71547, 71552},
	},

	[71687] = { -- Shoulders of the Fiery Protector
		[CLASS_WARRIOR] = {71603, 71608},
		[CLASS_HUNTER] = 71505,
		[CLASS_SHAMAN] = {71556, 71546, 71551},
	},

	[78170] = { -- Shoulders of the Corrupted Vanquisher
		[CLASS_ROGUE] = 77027,
		[CLASS_DEATHKNIGHT] = {76978, 77012},
		[CLASS_MAGE] = 76216,
		[CLASS_DRUID] = {76753, 77017, 77022},
	},

	[78171] = { -- Leggings of the Corrupted Vanquisher
		[CLASS_ROGUE] = 77026,
		[CLASS_DEATHKNIGHT] = {76977, 77011},
		[CLASS_MAGE] = 76214,
		[CLASS_DRUID] = {77016, 77020, 76751},
	},

	[78172] = { -- Crown of the Corrupted Vanquisher
		[CLASS_ROGUE] = 77025,
		[CLASS_DEATHKNIGHT] = {76976, 77010},
		[CLASS_MAGE] = 76213,
		[CLASS_DRUID] = {76750, 77015, 77019},
	},

	[78173] = { -- Gauntlets of the Corrupted Vanquisher
		[CLASS_ROGUE] = 77024,
		[CLASS_DEATHKNIGHT] = {76975, 77009},
		[CLASS_MAGE] = 76212,
		[CLASS_DRUID] = {76749, 77014, 77018},
	},

	[78174] = { -- Chest of the Corrupted Vanquisher
		[CLASS_ROGUE] = 77023,
		[CLASS_DEATHKNIGHT] = {76974, 77008},
		[CLASS_MAGE] = 76215,
		[CLASS_DRUID] = {76752, 77013, 77021},
	},

	[78175] = { -- Shoulders of the Corrupted Protector
		[CLASS_WARRIOR] = {76987, 76992},
		[CLASS_HUNTER] = 77032,
		[CLASS_SHAMAN] = {76760, 77035, 77044},
	},

	[78176] = { -- Leggings of the Corrupted Protector
		[CLASS_WARRIOR] = {76986, 76991},
		[CLASS_HUNTER] = 77031,
		[CLASS_SHAMAN] = {76759, 77036, 77043},
	},

	[78177] = { -- Crown of the Corrupted Protector
		[CLASS_WARRIOR] = {76983, 76990},
		[CLASS_HUNTER] = 77030,
		[CLASS_SHAMAN] = {76758, 77037, 77042},
	},

	[78178] = { -- Gauntlets of the Corrupted Protector
		[CLASS_WARRIOR] = {76985, 76989},
		[CLASS_HUNTER] = 77029,
		[CLASS_SHAMAN] = {76757, 77038, 77041},
	},

	[78179] = { -- Chest of the Corrupted Protector
		[CLASS_WARRIOR] = {76984, 76988},
		[CLASS_HUNTER] = 77028,
		[CLASS_SHAMAN] = {76756, 77039, 77040},
	},

	[78180] = { -- Shoulders of the Corrupted Conqueror
		[CLASS_PALADIN] = {76769, 76878, 77007},
		[CLASS_PRIEST] = {76344, 76361},
		[CLASS_WARLOCK] = 76339,
	},

	[78181] = { -- Leggings of the Corrupted Conqueror
		[CLASS_PALADIN] = {76768, 76877, 77006},
		[CLASS_PRIEST] = {76346, 76359},
		[CLASS_WARLOCK] = 76341,
	},

	[78182] = { -- Crown of the Corrupted Conqueror
		[CLASS_PALADIN] = {76767, 76876, 77005},
		[CLASS_PRIEST] = {76347, 76358},
		[CLASS_WARLOCK] = 76342,
	},

	[78183] = { -- Gauntlets of the Corrupted Conqueror
		[CLASS_PALADIN] = {76766, 76875, 77004},
		[CLASS_PRIEST] = {76348, 76357},
		[CLASS_WARLOCK] = 76343,
	},

	[78184] = { -- Chest of the Corrupted Conqueror
		[CLASS_PALADIN] = {76765, 76874, 77003},
		[CLASS_PRIEST] = {76345, 76360},
		[CLASS_WARLOCK] = 76340,
	},

	[78847] = { -- Chest of the Corrupted Conqueror
		[CLASS_PALADIN] = {78726, 78727, 78732},
		[CLASS_PRIEST] = {78728, 78731},
		[CLASS_WARLOCK] = 78730,
	},

	[78848] = { -- Chest of the Corrupted Protector
		[CLASS_WARRIOR] = {78658, 78657},
		[CLASS_HUNTER] = 78661,
		[CLASS_SHAMAN] = {78723, 78724, 78725},
	},

	[78849] = { -- Chest of the Corrupted Vanquisher
		[CLASS_ROGUE] = 78664,
		[CLASS_DEATHKNIGHT] = {78659, 78663},
		[CLASS_MAGE] = 78729,
		[CLASS_DRUID] = {78660, 78662, 78665},
	},

	[78850] = { -- Crown of the Corrupted Conqueror
		[CLASS_PALADIN] = {78692, 78693, 78695},
		[CLASS_PRIEST] = {78700, 78703},
		[CLASS_WARLOCK] = 78702,
	},

	[78851] = { -- Crown of the Corrupted Protector
		[CLASS_WARRIOR] = {78688, 78689},
		[CLASS_HUNTER] = 78698,
		[CLASS_SHAMAN] = {78685, 78686, 78691},
	},

	[78852] = { -- Crown of the Corrupted Vanquisher
		[CLASS_ROGUE] = 78699,
		[CLASS_DEATHKNIGHT] = {78687, 78697},
		[CLASS_MAGE] = 78701,
		[CLASS_DRUID] = {78690, 78694, 78696},
	},

	[78853] = { -- Gauntlets of the Corrupted Conqueror
		[CLASS_PALADIN] = {78673, 78675, 78677},
		[CLASS_PRIEST] = {78682, 78683},
		[CLASS_WARLOCK] = 78681,
	},

	[78854] = { -- Gauntlets of the Corrupted Protector
		[CLASS_WARRIOR] = {78668, 78669},
		[CLASS_HUNTER] = 78674,
		[CLASS_SHAMAN] = {78666, 78667, 78672},
	},

	[78855] = { -- Gauntlets of the Corrupted Vanquisher
		[CLASS_ROGUE] = 78679,
		[CLASS_DEATHKNIGHT] = {78670, 78678},
		[CLASS_MAGE] = 78671,
		[CLASS_DRUID] = {78676, 78680, 78684},
	},

	[78856] = { -- Leggings of the Corrupted Conqueror
		[CLASS_PALADIN] = {78712, 78715, 78717},
		[CLASS_PRIEST] = {78719, 78722},
		[CLASS_WARLOCK] = 78721,
	},

	[78857] = { -- Leggings of the Corrupted Protector
		[CLASS_WARRIOR] = {78705, 78706},
		[CLASS_HUNTER] = 78709,
		[CLASS_SHAMAN] = {78704, 78711, 78718},
	},

	[78858] = { -- Leggings of the Corrupted Vanquisher
		[CLASS_ROGUE] = 78708,
		[CLASS_DEATHKNIGHT] = {78716, 78707},
		[CLASS_MAGE] = 78720,
		[CLASS_DRUID] = {78710, 78713, 78714},
	},

	[78859] = { -- Shoulders of the Corrupted Conqueror
		[CLASS_PALADIN] = {78742, 78745, 78746},
		[CLASS_PRIEST] = {78747, 78750},
		[CLASS_WARLOCK] = 78749,
	},

	[78860] = { -- Shoulders of the Corrupted Protector
		[CLASS_WARRIOR] = {78734, 78735},
		[CLASS_HUNTER] = 78737,
		[CLASS_SHAMAN] = {78739, 78741, 78733},
	},

	[78861] = { -- Shoulders of the Corrupted Vanquisher
		[CLASS_ROGUE] = 78738,
		[CLASS_DEATHKNIGHT] = {78736, 78751},
		[CLASS_MAGE] = 78748,
		[CLASS_DRUID] = {78740, 78743, 78744},
	},

	[78862] = { -- Chest of the Corrupted Vanquisher
		[CLASS_ROGUE] = 78759,
		[CLASS_DEATHKNIGHT] = {78754, 78758},
		[CLASS_MAGE] = 78824,
		[CLASS_DRUID] = {78755, 78757, 78760},
	},

	[78863] = { -- Chest of the Corrupted Conqueror
		[CLASS_PALADIN] = {78821, 78822, 78827},
		[CLASS_PRIEST] = {78823, 78826},
		[CLASS_WARLOCK] = 78825,
	},

	[78864] = { -- Chest of the Corrupted Protector
		[CLASS_WARRIOR] = {78752, 78753},
		[CLASS_HUNTER] = 78756,
		[CLASS_SHAMAN] = {78818, 78819, 78820},
	},

	[78865] = { -- Gauntlets of the Corrupted Vanquisher
		[CLASS_ROGUE] = 78774,
		[CLASS_DEATHKNIGHT] = {78765, 78773},
		[CLASS_MAGE] = 78766,
		[CLASS_DRUID] = {78771, 78775, 78779},
	},

	[78866] = { -- Gauntlets of the Corrupted Conqueror
		[CLASS_PALADIN] = {78768, 78770, 78772},
		[CLASS_PRIEST] = {78777, 78778},
		[CLASS_WARLOCK] = 78776,
	},

	[78867] = { -- Gauntlets of the Corrupted Protector
		[CLASS_WARRIOR] = {78763, 78764},
		[CLASS_HUNTER] = 78769,
		[CLASS_SHAMAN] = {78761, 78762, 78767},
	},

	[78868] = { -- Crown of the Corrupted Vanquisher
		[CLASS_ROGUE] = 78794,
		[CLASS_DEATHKNIGHT] = {78782, 78792},
		[CLASS_MAGE] = 78796,
		[CLASS_DRUID] = {78785, 78789, 78791},
	},

	[78869] = { -- Crown of the Corrupted Conqueror
		[CLASS_PALADIN] = {78787, 78788, 78790},
		[CLASS_PRIEST] = {78795, 78798},
		[CLASS_WARLOCK] = 78797,
	},

	[78870] = { -- Crown of the Corrupted Protector
		[CLASS_WARRIOR] = {78783, 78784},
		[CLASS_HUNTER] = 78793,
		[CLASS_SHAMAN] = {78780, 78781, 78786},
	},

	[78871] = { -- Leggings of the Corrupted Vanquisher
		[CLASS_ROGUE] = 78803,
		[CLASS_DEATHKNIGHT] = {78802, 78811},
		[CLASS_MAGE] = 78815,
		[CLASS_DRUID] = {78805, 78808, 78809},
	},

	[78872] = { -- Leggings of the Corrupted Conqueror
		[CLASS_PALADIN] = {78807, 78810, 78812},
		[CLASS_PRIEST] = {78814, 78817},
		[CLASS_WARLOCK] = 78816,
	},

	[78873] = { -- Leggings of the Corrupted Protector
		[CLASS_WARRIOR] = {78800, 78801},
		[CLASS_HUNTER] = 78804,
		[CLASS_SHAMAN] = {78799, 78806, 78813},
	},

	[78874] = { -- Shoulders of the Corrupted Vanquisher
		[CLASS_ROGUE] = 78833,
		[CLASS_DEATHKNIGHT] = {78846, 78831},
		[CLASS_MAGE] = 78843,
		[CLASS_DRUID] = {78838, 78839, 78835},
	},

	[78875] = { -- Shoulders of the Corrupted Conqueror
		[CLASS_PALADIN] = {78840, 78841, 78837},
		[CLASS_PRIEST] = {78842, 78845},
		[CLASS_WARLOCK] = 78844,
	},

	[78876] = { -- Shoulders of the Corrupted Protector
		[CLASS_WARRIOR] = {78829, 78830},
		[CLASS_HUNTER] = 78832,
		[CLASS_SHAMAN] = {78828, 78834, 78836},
	},

	[89234] = { -- Helm of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 85301,
		[CLASS_DEATHKNIGHT] = {85316, 85336},
		[CLASS_MAGE] = 85377,
		[CLASS_DRUID] = {85307, 85311, 85357, 85381},
	},

	[89235] = { -- Helm of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {85321, 85341, 85346},
		[CLASS_PRIEST] = {85362, 85365},
		[CLASS_WARLOCK] = 85370,
	},

	[89236] = { -- Helm of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {85326, 85333},
		[CLASS_HUNTER] = 85296,
		[CLASS_SHAMAN] = {85286, 85291, 85351},
		[CLASS_MONK] = {85386, 85390, 85396},
	},

	[89237] = { -- Chest of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {85323, 85343, 85348},
		[CLASS_PRIEST] = {85360, 85367},
		[CLASS_WARLOCK] = 85372,
	},

	[89238] = { -- Chest of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {85328, 85332},
		[CLASS_HUNTER] = 85298,
		[CLASS_SHAMAN] = {85288, 85289, 85353},
		[CLASS_MONK] = {85394, 85388, 85392},
	},

	[89239] = { -- Chest of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 85303,
		[CLASS_DEATHKNIGHT] = {85318, 85338},
		[CLASS_MAGE] = 85375,
		[CLASS_DRUID] = {85305, 85313, 85355, 85379},
	},

	[89240] = { -- Gauntlets of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {85322, 85342, 85347},
		[CLASS_PRIEST] = {85363, 85364},
		[CLASS_WARLOCK] = 85369,
	},

	[89241] = { -- Gauntlets of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {85327, 85331},
		[CLASS_HUNTER] = 85297,
		[CLASS_SHAMAN] = {85287, 85290, 85352},
		[CLASS_MONK] = {85387, 85389, 85395},
	},

	[89242] = { -- Gauntlets of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 85302,
		[CLASS_DEATHKNIGHT] = {85317, 85337},
		[CLASS_MAGE] = 85378,
		[CLASS_DRUID] = {85308, 85312, 85358, 85380},
	},

	[89243] = { -- Leggings of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {85320, 85340, 85345},
		[CLASS_PRIEST] = {85361, 85366},
		[CLASS_WARLOCK] = 85371,
	},

	[89244] = { -- Leggings of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {85325, 85330},
		[CLASS_HUNTER] = 85295,
		[CLASS_SHAMAN] = {85285, 85292, 85350},
		[CLASS_MONK] = {85385, 85391, 85397},
	},

	[89245] = { -- Leggings of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 85300,
		[CLASS_DEATHKNIGHT] = {85315, 85335},
		[CLASS_MAGE] = 85376,
		[CLASS_DRUID] = {85306, 85310, 85356, 85382},
	},

	[89246] = { -- Shoulders of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {85319, 85339, 85344},
		[CLASS_PRIEST] = {85359, 85368},
		[CLASS_WARLOCK] = 85373,
	},

	[89247] = { -- Shoulders of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {85324, 85329},
		[CLASS_HUNTER] = 85294,
		[CLASS_SHAMAN] = {85284, 85293, 85349},
		[CLASS_MONK] = {85384, 85393, 85398},
	},

	[89248] = { -- Shoulders of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 85299,
		[CLASS_DEATHKNIGHT] = {85314, 85334},
		[CLASS_MAGE] = 85374,
		[CLASS_DRUID] = {85304, 85309, 85354, 85383},
	},

	[89249] = { -- Chest of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 87124,
		[CLASS_DEATHKNIGHT] = {86913, 86918},
		[CLASS_MAGE] = 87010,
		[CLASS_DRUID] = {86923, 86931, 86936, 86938},
	},

	[89250] = { -- Chest of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {87099, 87104, 87109},
		[CLASS_PRIEST] = {87117, 87122},
		[CLASS_WARLOCK] = 87190,
	},

	[89251] = { -- Chest of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {87193, 87197},
		[CLASS_HUNTER] = 87002,
		[CLASS_SHAMAN] = {87129, 87134, 87139},
		[CLASS_MONK] = {87084, 87092, 87094},
	},

	[89252] = { -- Leggings of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 87127,
		[CLASS_DEATHKNIGHT] = {86916, 86921},
		[CLASS_MAGE] = 87009,
		[CLASS_DRUID] = {86926, 86930, 86935, 86941},
	},

	[89253] = { -- Leggings of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {87102, 87107, 87112},
		[CLASS_PRIEST] = {87116, 87121},
		[CLASS_WARLOCK] = 87189,
	},

	[89254] = { -- Leggings of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {87195, 87200},
		[CLASS_HUNTER] = 87005,
		[CLASS_SHAMAN] = {87132, 87137, 87142},
		[CLASS_MONK] = {87087, 87091, 87097},
	},

	[89255] = { -- Gauntlets of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 87125,
		[CLASS_DEATHKNIGHT] = {86914, 86919},
		[CLASS_MAGE] = 87007,
		[CLASS_DRUID] = {86924, 86928, 86933, 86939},
	},

	[89256] = { -- Gauntlets of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {87100, 87105, 87110},
		[CLASS_PRIEST] = {87114, 87119},
		[CLASS_WARLOCK] = 87187,
	},

	[89257] = { -- Gauntlets of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {87194, 87198},
		[CLASS_HUNTER] = 87003,
		[CLASS_SHAMAN] = {87130, 87135, 87140},
		[CLASS_MONK] = {87085, 87089, 87095},
	},

	[89258] = { -- Helm of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 87126,
		[CLASS_DEATHKNIGHT] = {86915, 86920},
		[CLASS_MAGE] = 87008,
		[CLASS_DRUID] = {86934, 86940, 86925, 86929},
	},

	[89259] = { -- Helm of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {87101, 87106, 87111},
		[CLASS_PRIEST] = {87115, 87120},
		[CLASS_WARLOCK] = 87188,
	},

	[89260] = { -- Helm of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {87192, 87199},
		[CLASS_HUNTER] = 87004,
		[CLASS_SHAMAN] = {87131, 87136, 87141},
		[CLASS_MONK] = {87086, 87090, 87096},
	},

	[89261] = { -- Shoulders of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 87128,
		[CLASS_DEATHKNIGHT] = {86917, 86922},
		[CLASS_MAGE] = 87011,
		[CLASS_DRUID] = {86927, 86932, 86937, 86942},
	},

	[89262] = { -- Shoulders of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {87103, 87108, 87113},
		[CLASS_PRIEST] = {87118, 87123},
		[CLASS_WARLOCK] = 87191,
	},

	[89263] = { -- Shoulders of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {87196, 87201},
		[CLASS_HUNTER] = 87006,
		[CLASS_SHAMAN] = {87133, 87138, 87143},
		[CLASS_MONK] = {87088, 87093, 87098},
	},

	[89264] = { -- Chest of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 86643,
		[CLASS_DEATHKNIGHT] = {86658, 86678},
		[CLASS_MAGE] = 86715,
		[CLASS_DRUID] = {86719, 86645, 86653, 86695},
	},

	[89265] = { -- Chest of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {86663, 86683, 86688},
		[CLASS_PRIEST] = {86700, 86707},
		[CLASS_WARLOCK] = 86712,
	},

	[89266] = { -- Chest of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {86668, 86672},
		[CLASS_HUNTER] = 86638,
		[CLASS_SHAMAN] = {86693, 86628, 86629},
		[CLASS_MONK] = {86728, 86732, 86734},
	},

	[89267] = { -- Leggings of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 86640,
		[CLASS_DEATHKNIGHT] = {86655, 86675},
		[CLASS_MAGE] = 86716,
		[CLASS_DRUID] = {86646, 86650, 86696, 86722},
	},

	[89268] = { -- Leggings of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {86660, 86680, 86685},
		[CLASS_PRIEST] = {86706, 86701},
		[CLASS_WARLOCK] = 86711,
	},

	[89269] = { -- Leggings of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {86665, 86670},
		[CLASS_HUNTER] = 86635,
		[CLASS_SHAMAN] = {86632, 86690, 86625},
		[CLASS_MONK] = {86725, 86731, 86737},
	},

	[89270] = { -- Gauntlets of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 86642,
		[CLASS_DEATHKNIGHT] = {86657, 86677},
		[CLASS_MAGE] = 86718,
		[CLASS_DRUID] = {86648, 86652, 86698, 86720},
	},

	[89271] = { -- Gauntlets of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {86662, 86682, 86687},
		[CLASS_PRIEST] = {86703, 86704},
		[CLASS_WARLOCK] = 86709,
	},

	[89272] = { -- Gauntlets of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {86667, 86671},
		[CLASS_HUNTER] = 86637,
		[CLASS_SHAMAN] = {86627, 86630, 86692},
		[CLASS_MONK] = {86727, 86729, 86735},
	},

	[89273] = { -- Helm of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 86641,
		[CLASS_DEATHKNIGHT] = {86656, 86676},
		[CLASS_MAGE] = 86717,
		[CLASS_DRUID] = {86647, 86651, 86697, 86721},
	},

	[89274] = { -- Helm of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {86661, 86681, 86686},
		[CLASS_PRIEST] = {86702, 86705},
		[CLASS_WARLOCK] = 86710,
	},

	[89275] = { -- Helm of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {86666, 86673},
		[CLASS_HUNTER] = 86636,
		[CLASS_SHAMAN] = {86626, 86631, 86691},
		[CLASS_MONK] = {86726, 86730, 86736},
	},

	[89276] = { -- Shoulders of the Shadowy Vanquisher
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_ROGUE] = 86639,
		[CLASS_DEATHKNIGHT] = {86654, 86674},
		[CLASS_MAGE] = 86714,
		[CLASS_DRUID] = {86644, 86649, 86694, 86723},
	},

	[89277] = { -- Shoulders of the Shadowy Conqueror
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_PALADIN] = {86659, 86679, 86684},
		[CLASS_PRIEST] = {86699, 86708},
		[CLASS_WARLOCK] = 86713,
	},

	[89278] = { -- Shoulders of the Shadowy Protector
		[REDEEM] = REDEEM_MOP_OXHEART,
		[CLASS_WARRIOR] = {86664, 86669},
		[CLASS_HUNTER] = 86634,
		[CLASS_SHAMAN] = {86624, 86633, 86689},
		[CLASS_MONK] = {86724, 86733, 86738},
	},

	[95569] = { -- Chest of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 95305,
		[CLASS_DEATHKNIGHT] = {95225, 95230},
		[CLASS_MAGE] = 95263,
		[CLASS_DRUID] = {95235, 95243, 95248, 95250},
	},

	[95570] = { -- Gauntlets of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 95306,
		[CLASS_DEATHKNIGHT] = {95226, 95231},
		[CLASS_MAGE] = 95260,
		[CLASS_DRUID] = {95236, 95240, 95245, 95251},
	},

	[95571] = { -- Helm of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 95307,
		[CLASS_DEATHKNIGHT] = {95227, 95232},
		[CLASS_MAGE] = 95261,
		[CLASS_DRUID] = {95237, 95241, 95246, 95252},
	},

	[95572] = { -- Leggings of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 95308,
		[CLASS_DEATHKNIGHT] = {95228, 95233},
		[CLASS_MAGE] = 95262,
		[CLASS_DRUID] = {95238, 95242, 95247, 95253},
	},

	[95573] = { -- Shoulders of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 95309,
		[CLASS_DEATHKNIGHT] = {95229, 95234},
		[CLASS_MAGE] = 95264,
		[CLASS_DRUID] = {95239, 95244, 95249, 95254},
	},

	[95574] = { -- Chest of the Crackling Conqueror
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95280, 95285, 95290},
		[CLASS_PRIEST] = {95298, 95303},
		[CLASS_WARLOCK] = 95328,
	},

	[95575] = { -- Gauntlets of the Crackling Conqueror
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95281, 95286, 95291},
		[CLASS_PRIEST] = {95295, 95300},
		[CLASS_WARLOCK] = 95325,
	},

	[95576] = { -- Leggings of the Crackling Conqueror
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95283, 95288, 95293},
		[CLASS_PRIEST] = {95297, 95302},
		[CLASS_WARLOCK] = 95327,
	},

	[95577] = { -- Helm of the Crackling Conqueror
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95282, 95287, 95292},
		[CLASS_PRIEST] = {95296, 95301},
		[CLASS_WARLOCK] = 95326,
	},

	[95578] = { -- Shoulders of the Crackling Conqueror
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95284, 95289, 95294},
		[CLASS_PRIEST] = {95299, 95304},
		[CLASS_WARLOCK] = 95329,
	},

	[95579] = { -- Chest of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95331, 95335},
		[CLASS_HUNTER] = 95255,
		[CLASS_SHAMAN] = {95310, 95315, 95320},
		[CLASS_MONK] = {95265, 95273, 95275},
	},

	[95580] = { -- Gauntlets of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95332, 95336},
		[CLASS_HUNTER] = 95256,
		[CLASS_SHAMAN] = {95311, 95316, 95321},
		[CLASS_MONK] = {95266, 95270, 95276},
	},

	[95581] = { -- Leggings of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95333, 95338},
		[CLASS_HUNTER] = 95258,
		[CLASS_SHAMAN] = {95313, 95318, 95323},
		[CLASS_MONK] = {95268, 95272, 95278},
	},

	[95582] = { -- Helm of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95330, 95337},
		[CLASS_HUNTER] = 95257,
		[CLASS_SHAMAN] = {95312, 95317, 95322},
		[CLASS_MONK] = {95267, 95271, 95277},
	},

	[95583] = { -- Shoulders of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95334, 95339},
		[CLASS_HUNTER] = 95259,
		[CLASS_SHAMAN] = {95314, 95319, 95324},
		[CLASS_MONK] = {95269, 95274, 95279},
	},

	[95822] = { -- Chest of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 95935,
		[CLASS_DEATHKNIGHT] = {95825, 95830},
		[CLASS_MAGE] = 95893,
		[CLASS_DRUID] = {95843, 95848, 95850, 95835},
	},

	[95823] = { -- Chest of the Crackling Conqueror
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95910, 95915, 95920},
		[CLASS_PRIEST] = {95928, 95933},
		[CLASS_WARLOCK] = 95984,
	},

	[95824] = { -- Chest of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95987, 95991},
		[CLASS_HUNTER] = 95882,
		[CLASS_SHAMAN] = {95940, 95945, 95950},
		[CLASS_MONK] = {95895, 95903, 95905},
	},

	[95855] = { -- Gauntlets of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 95936,
		[CLASS_DEATHKNIGHT] = {95826, 95831},
		[CLASS_MAGE] = 95890,
		[CLASS_DRUID] = {95836, 95840, 95845, 95851},
	},

	[95856] = { -- Gauntlets of the Crackling Conqueror
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95911, 95916, 95921},
		[CLASS_PRIEST] = {95925, 95930},
		[CLASS_WARLOCK] = 95981,
	},

	[95857] = { -- Gauntlets of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95988, 95992},
		[CLASS_HUNTER] = 95883,
		[CLASS_SHAMAN] = {95941, 95946, 95951},
		[CLASS_MONK] = {95896, 95900, 95906},
	},

	[95879] = { -- Helm of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 95937,
		[CLASS_DEATHKNIGHT] = {95827, 95832},
		[CLASS_MAGE] = 95891,
		[CLASS_DRUID] = {95837, 95841, 95846, 95852},
	},

	[95880] = { -- Helm of the Crackling Conqueror
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95912, 95917, 95922},
		[CLASS_PRIEST] = {95926, 95931},
		[CLASS_WARLOCK] = 95982,
	},

	[95881] = { -- Helm of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95986, 95993},
		[CLASS_HUNTER] = 95884,
		[CLASS_SHAMAN] = {95942, 95947, 95952},
		[CLASS_MONK] = {95897, 95901, 95907},
	},

	[95887] = { -- Leggings of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 95938,
		[CLASS_DEATHKNIGHT] = {95828, 95833},
		[CLASS_MAGE] = 95892,
		[CLASS_DRUID] = {95838, 95842, 95847, 95853},
	},

	[95889] = { -- Leggings of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95989, 95994},
		[CLASS_HUNTER] = 95885,
		[CLASS_SHAMAN] = {95943, 95948, 95953},
		[CLASS_MONK] = {95898, 95902, 95908},
	},

	[95955] = { -- Shoulders of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 95939,
		[CLASS_DEATHKNIGHT] = {95834, 95829},
		[CLASS_MAGE] = 95894,
		[CLASS_DRUID] = {95839, 95844, 95849, 95854},
	},

	[95956] = { -- Shoulders of the Crackling Conqueror
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {95924, 95914, 95919},
		[CLASS_PRIEST] = {95929, 95934},
		[CLASS_WARLOCK] = 95985,
	},

	[95957] = { -- Shoulders of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {95990, 95995},
		[CLASS_HUNTER] = 95886,
		[CLASS_SHAMAN] = {95944, 95949, 95954},
		[CLASS_MONK] = {95899, 95904, 95909},
	},

	[96566] = { -- Chest of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 96679,
		[CLASS_DEATHKNIGHT] = {96569, 96574},
		[CLASS_MAGE] = 96637,
		[CLASS_DRUID] = {96579, 96587, 96592, 96594},
	},

	[96567] = { -- Chest of the Crackling Conqueror
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {96654, 96659, 96664},
		[CLASS_PRIEST] = {96672, 96677},
		[CLASS_WARLOCK] = 96728,
	},

	[96568] = { -- Chest of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {96731, 96735},
		[CLASS_HUNTER] = 96626,
		[CLASS_SHAMAN] = {96694, 96684, 96689},
		[CLASS_MONK] = {96639, 96647, 96649},
	},

	[96599] = { -- Gauntlets of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 96680,
		[CLASS_DEATHKNIGHT] = {96570, 96575},
		[CLASS_MAGE] = 96634,
		[CLASS_DRUID] = {96580, 96584, 96589, 96595},
	},

	[96601] = { -- Gauntlets of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {96732, 96736},
		[CLASS_HUNTER] = 96627,
		[CLASS_SHAMAN] = {96695, 96685, 96690},
		[CLASS_MONK] = {96640, 96644, 96650},
	},

	[96623] = { -- Helm of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 96681,
		[CLASS_DEATHKNIGHT] = {96571, 96576},
		[CLASS_MAGE] = 96635,
		[CLASS_DRUID] = {96581, 96585, 96590, 96596},
	},

	[96624] = { -- Helm of the Crackling Conqueror
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {96656, 96661, 96666},
		[CLASS_PRIEST] = {96670, 96675},
		[CLASS_WARLOCK] = 96726,
	},

	[96625] = { -- Helm of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {96730, 96737},
		[CLASS_HUNTER] = 96628,
		[CLASS_SHAMAN] = {96686, 96691, 96696},
		[CLASS_MONK] = {96641, 96645, 96651},
	},

	[96631] = { -- Leggings of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 96682,
		[CLASS_DEATHKNIGHT] = {96572, 96577},
		[CLASS_MAGE] = 96636,
		[CLASS_DRUID] = {96582, 96586, 96591, 96597},
	},

	[96632] = { -- Leggings of the Crackling Conqueror
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {96657, 96662, 96667},
		[CLASS_PRIEST] = {96671, 96676},
		[CLASS_WARLOCK] = 96727,
	},

	[96633] = { -- Leggings of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {96733, 96738},
		[CLASS_HUNTER] = 96629,
		[CLASS_SHAMAN] = {96687, 96692, 96697},
		[CLASS_MONK] = {96642, 96646, 96652},
	},

	[96699] = { -- Shoulders of the Crackling Vanquisher
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_ROGUE] = 96683,
		[CLASS_DEATHKNIGHT] = {96573, 96578},
		[CLASS_MAGE] = 96638,
		[CLASS_DRUID] = {96583, 96588, 96593, 96598},
	},

	[96700] = { -- Shoulders of the Crackling Conqueror
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_PALADIN] = {96658, 96663, 96668},
		[CLASS_PRIEST] = {96673, 96678},
		[CLASS_WARLOCK] = 96729,
	},

	[96701] = { -- Shoulders of the Crackling Protector
		[REDEEM] = REDEEM_TIER_15,
		[CLASS_WARRIOR] = {96734, 96739},
		[CLASS_HUNTER] = 96630,
		[CLASS_SHAMAN] = {96688, 96693, 96698},
		[CLASS_MONK] = {96643, 96648, 96653},
	},

	[99667] = { -- Gauntlets of the Cursed Protector (Raid Finder)
		[CLASS_WARRIOR] = {99034, 99038},
		[CLASS_HUNTER] = 99086,
		[CLASS_SHAMAN] = {98993, 99088, 98988},
		[CLASS_MONK] = {99064, 99068, 99072},
	},

	[99668] = { -- Shoulders of the Cursed Vanquisher (Raid Finder)
		[CLASS_ROGUE] = 99010,
		[CLASS_DEATHKNIGHT] = {99040, 99059},
		[CLASS_MAGE] = 99079,
		[CLASS_DRUID] = {98978, 98998, 99016, 99022},
	},

	[99669] = { -- Shoulders of the Cursed Conqueror (Raid Finder)
		[CLASS_PALADIN] = {98987, 99027, 99076},
		[CLASS_PRIEST] = {99005, 99018},
		[CLASS_WARLOCK] = 99045,
	},

	[99670] = { -- Shoulders of the Cursed Protector (Raid Finder)
		[CLASS_WARRIOR] = {99030, 99036},
		[CLASS_HUNTER] = 99082,
		[CLASS_SHAMAN] = {99091, 98977, 98991},
		[CLASS_MONK] = {99051, 99062, 99075},
	},

	[99671] = { -- Helm of the Cursed Vanquisher (Raid Finder)
		[CLASS_ROGUE] = 99008,
		[CLASS_DEATHKNIGHT] = {99049, 99057},
		[CLASS_MAGE] = 99084,
		[CLASS_DRUID] = {98995, 99001, 99013, 99043},
	},

	[99672] = { -- Helm of the Cursed Conqueror (Raid Finder)
		[CLASS_PALADIN] = {98979, 98985, 99029},
		[CLASS_PRIEST] = {99020, 99024},
		[CLASS_WARLOCK] = 99054,
	},

	[99673] = { -- Helm of the Cursed Protector (Raid Finder)
		[CLASS_WARRIOR] = {99032, 99046},
		[CLASS_HUNTER] = 99080,
		[CLASS_SHAMAN] = {99089, 98983, 98989},
		[CLASS_MONK] = {99065, 99069, 99073},
	},

	[99674] = { -- Leggings of the Cursed Vanquisher (Raid Finder)
		[CLASS_ROGUE] = 99009,
		[CLASS_DEATHKNIGHT] = {99039, 99058},
		[CLASS_MAGE] = 99077,
		[CLASS_DRUID] = {98981, 98996, 99014, 99044},
	},

	[99675] = { -- Leggings of the Cursed Conqueror (Raid Finder)
		[CLASS_PALADIN] = {99026, 98980, 98986},
		[CLASS_PRIEST] = {99025, 99021},
		[CLASS_WARLOCK] = 99055,
	},

	[99676] = { -- Leggings of the Cursed Protector (Raid Finder)
		[CLASS_WARRIOR] = {99033, 99035},
		[CLASS_HUNTER] = 99081,
		[CLASS_SHAMAN] = {98984, 98990, 99090},
		[CLASS_MONK] = {99050, 99070, 99074},
	},

	[99677] = { -- Chest of the Cursed Vanquisher (Raid Finder)
		[CLASS_ROGUE] = 99006,
		[CLASS_DEATHKNIGHT] = {99060, 99066},
		[CLASS_MAGE] = 99078,
		[CLASS_DRUID] = {98997, 98999, 99015, 99041},
	},

	[99678] = { -- Chest of the Cursed Conqueror (Raid Finder)
		[CLASS_PALADIN] = {99003, 99031, 99052},
		[CLASS_PRIEST] = {99004, 99017},
		[CLASS_WARLOCK] = 99056,
	},

	[99679] = { -- Chest of the Cursed Protector (Raid Finder)
		[CLASS_WARRIOR] = {99037, 99047},
		[CLASS_HUNTER] = 99085,
		[CLASS_SHAMAN] = {98992, 99011, 99087},
		[CLASS_MONK] = {99061, 99063, 99071},
	},

	[99680] = { -- Gauntlets of the Cursed Vanquisher (Raid Finder)
		[CLASS_ROGUE] = 99007,
		[CLASS_DEATHKNIGHT] = {99048, 99067},
		[CLASS_MAGE] = 99083,
		[CLASS_DRUID] = {98994, 99000, 99012, 99042},
	},

	[99681] = { -- Gauntlets of the Cursed Conqueror (Raid Finder)
		[CLASS_PALADIN] = {98982, 99002, 99028},
		[CLASS_PRIEST] = {99019, 99023},
		[CLASS_WARLOCK] = 99053,
	},

	[99682] = { -- Gauntlets of the Cursed Vanquisher (Heroic)
		[CLASS_ROGUE] = 99113,
		[CLASS_DEATHKNIGHT] = {99189, 99193},
		[CLASS_MAGE] = 99160,
		[CLASS_DRUID] = {99163, 99174, 99181, 99185},
	},

	[99683] = { -- Helm of the Cursed Vanquisher (Heroic)
		[CLASS_ROGUE] = 99114,
		[CLASS_DEATHKNIGHT] = {99190, 99194},
		[CLASS_MAGE] = 99161,
		[CLASS_DRUID] = {99164, 99175, 99178, 99182},
	},

	[99684] = { -- Leggings of the Cursed Vanquisher (Heroic)
		[CLASS_ROGUE] = 99115,
		[CLASS_DEATHKNIGHT] = {99186, 99191},
		[CLASS_MAGE] = 99162,
		[CLASS_DRUID] = {99165, 99171, 99176, 99183},
	},

	[99685] = { -- Shoulders of the Cursed Vanquisher (Heroic)
		[CLASS_ROGUE] = 99116,
		[CLASS_DEATHKNIGHT] = {99179, 99187},
		[CLASS_MAGE] = 99153,
		[CLASS_DRUID] = {99166, 99169, 99173, 99184},
	},

	[99686] = { -- Chest of the Cursed Conqueror (Heroic)
		[CLASS_PALADIN] = {99126, 99133, 99136},
		[CLASS_PRIEST] = {99110, 99119},
		[CLASS_WARLOCK] = 99204,
	},

	[99687] = { -- Gauntlets of the Cursed Conqueror (Heroic)
		[CLASS_PALADIN] = {99127, 99134, 99137},
		[CLASS_PRIEST] = {99121, 99131},
		[CLASS_WARLOCK] = 99096,
	},

	[99688] = { -- Leggings of the Cursed Conqueror (Heroic)
		[CLASS_PALADIN] = {99124, 99129, 99139},
		[CLASS_PRIEST] = {99118, 99123},
		[CLASS_WARLOCK] = 99098,
	},

	[99689] = { -- Helm of the Cursed Conqueror (Heroic)
		[CLASS_PALADIN] = {99128, 99135, 99138},
		[CLASS_PRIEST] = {99117, 99122},
		[CLASS_WARLOCK] = 99097,
	},

	[99690] = { -- Shoulders of the Cursed Conqueror (Heroic)
		[CLASS_PALADIN] = {99125, 99130, 99132},
		[CLASS_PRIEST] = {99111, 99120},
		[CLASS_WARLOCK] = 99205,
	},

	[99691] = { -- Chest of the Cursed Protector (Heroic)
		[CLASS_WARRIOR] = {99197, 99201},
		[CLASS_HUNTER] = 99167,
		[CLASS_SHAMAN] = {99101, 99106, 99107},
		[CLASS_MONK] = {99140, 99150, 99154},
	},

	[99692] = { -- Gauntlets of the Cursed Protector (Heroic)
		[CLASS_WARRIOR] = {99198, 99202},
		[CLASS_HUNTER] = 99168,
		[CLASS_SHAMAN] = {99092, 99102, 99108},
		[CLASS_MONK] = {99141, 99147, 99155},
	},

	[99693] = { -- Leggings of the Cursed Protector (Heroic)
		[CLASS_WARRIOR] = {99195, 99199},
		[CLASS_HUNTER] = 99158,
		[CLASS_SHAMAN] = {99094, 99099, 99104},
		[CLASS_MONK] = {99143, 99145, 99149},
	},

	[99694] = { -- Helm of the Cursed Protector (Heroic)
		[CLASS_WARRIOR] = {99203, 99206},
		[CLASS_HUNTER] = 99157,
		[CLASS_SHAMAN] = {99093, 99103, 99109},
		[CLASS_MONK] = {99142, 99148, 99156},
	},

	[99695] = { -- Shoulders of the Cursed Protector (Heroic)
		[CLASS_WARRIOR] = {99196, 99200},
		[CLASS_HUNTER] = 99159,
		[CLASS_SHAMAN] = {99095, 99100, 99105},
		[CLASS_MONK] = {99144, 99146, 99151},
	},

	[99696] = { -- Chest of the Cursed Vanquisher (Heroic)
		[CLASS_ROGUE] = 99112,
		[CLASS_DEATHKNIGHT] = {99188, 99192},
		[CLASS_MAGE] = 99152,
		[CLASS_DRUID] = {99170, 99172, 99177, 99180},
	},

	[99712] = { -- Leggings of the Cursed Conqueror (Mythic)
		[CLASS_PALADIN] = {99371, 99372, 99377},
		[CLASS_PRIEST] = {99361, 99367},
		[CLASS_WARLOCK] = 99426,
	},

	[99713] = { -- Leggings of the Cursed Protector (Mythic)
		[CLASS_WARRIOR] = {99410, 99413},
		[CLASS_HUNTER] = 99403,
		[CLASS_SHAMAN] = {99333, 99342, 99354},
		[CLASS_MONK] = {99385, 99390, 99394},
	},

	[99714] = { -- Chest of the Cursed Vanquisher (Mythic)
		[CLASS_ROGUE] = 99356,
		[CLASS_DEATHKNIGHT] = {99330, 99335},
		[CLASS_MAGE] = 99400,
		[CLASS_DRUID] = {99326, 99419, 99427, 99430},
	},

	[99715] = { -- Chest of the Cursed Conqueror (Mythic)
		[CLASS_PALADIN] = {99368, 99374, 99387},
		[CLASS_PRIEST] = {99357, 99362},
		[CLASS_WARLOCK] = 99416,
	},

	[99716] = { -- Chest of the Cursed Protector (Mythic)
		[CLASS_WARRIOR] = {99411, 99415},
		[CLASS_HUNTER] = 99405,
		[CLASS_SHAMAN] = {99344, 99347, 99351},
		[CLASS_MONK] = {99382, 99391, 99396},
	},

	[99717] = { -- Shoulders of the Cursed Vanquisher (Mythic)
		[CLASS_ROGUE] = 99350,
		[CLASS_DEATHKNIGHT] = {99325, 99339},
		[CLASS_MAGE] = 99401,
		[CLASS_DRUID] = {99322, 99423, 99428, 99431},
	},

	[99718] = { -- Shoulders of the Cursed Conqueror (Mythic)
		[CLASS_PALADIN] = {99364, 99373, 99378},
		[CLASS_PRIEST] = {99358, 99363},
		[CLASS_WARLOCK] = 99417,
	},

	[99719] = { -- Shoulders of the Cursed Protector (Mythic)
		[CLASS_WARRIOR] = {99407, 99414},
		[CLASS_HUNTER] = 99404,
		[CLASS_SHAMAN] = {99334, 99343, 99346},
		[CLASS_MONK] = {99381, 99386, 99395},
	},

	[99720] = { -- Gauntlets of the Cursed Vanquisher (Mythic)
		[CLASS_ROGUE] = 99355,
		[CLASS_DEATHKNIGHT] = {99331, 99336},
		[CLASS_MAGE] = 99397,
		[CLASS_DRUID] = {99327, 99420, 99432, 99435},
	},

	[99721] = { -- Gauntlets of the Cursed Conqueror (Mythic)
		[CLASS_PALADIN] = {99369, 99375, 99380},
		[CLASS_PRIEST] = {99359, 99365},
		[CLASS_WARLOCK] = 99424,
	},

	[99722] = { -- Gauntlets of the Cursed Protector (Mythic)
		[CLASS_WARRIOR] = {99408, 99412},
		[CLASS_HUNTER] = 99406,
		[CLASS_SHAMAN] = {99340, 99345, 99352},
		[CLASS_MONK] = {99383, 99388, 99392},
	},

	[99723] = { -- Helm of the Cursed Vanquisher (Mythic)
		[CLASS_ROGUE] = 99348,
		[CLASS_DEATHKNIGHT] = {99323, 99337},
		[CLASS_MAGE] = 99398,
		[CLASS_DRUID] = {99328, 99421, 99433, 99436},
	},

	[99724] = { -- Helm of the Cursed Conqueror (Mythic)
		[CLASS_PALADIN] = {99370, 99376, 99379},
		[CLASS_PRIEST] = {99360, 99366},
		[CLASS_WARLOCK] = 99425,
	},

	[99725] = { -- Helm of the Cursed Protector (Mythic)
		[CLASS_WARRIOR] = {99409, 99418},
		[CLASS_HUNTER] = 99402,
		[CLASS_SHAMAN] = {99332, 99341, 99353},
		[CLASS_MONK] = {99393, 99384, 99389},
	},

	[99726] = { -- Leggings of the Cursed Vanquisher (Mythic)
		[CLASS_ROGUE] = 99349,
		[CLASS_DEATHKNIGHT] = {99324, 99338},
		[CLASS_MAGE] = 99399,
		[CLASS_DRUID] = {99329, 99422, 99429, 99434},
	},

	[99742] = { -- Chest of the Cursed Vanquisher
		[CLASS_ROGUE] = 99629,
		[CLASS_DEATHKNIGHT] = {99608, 99640},
		[CLASS_MAGE] = 99658,
		[CLASS_DRUID] = {99582, 99620, 99622, 99632},
	},

	[99743] = { -- Chest of the Cursed Conqueror
		[CLASS_PALADIN] = {99566, 99598, 99626},
		[CLASS_PRIEST] = {99584, 99627},
		[CLASS_WARLOCK] = 99570,
	},

	[99744] = { -- Chest of the Cursed Protector
		[CLASS_WARRIOR] = {99562, 99603},
		[CLASS_HUNTER] = 99577,
		[CLASS_SHAMAN] = {99636, 99579, 99615},
		[CLASS_MONK] = {99641, 99643, 99555},
	},

	[99745] = { -- Gauntlets of the Cursed Vanquisher
		[CLASS_ROGUE] = 99630,
		[CLASS_DEATHKNIGHT] = {99604, 99609},
		[CLASS_MAGE] = 99575,
		[CLASS_DRUID] = {99623, 99633, 99637, 99617},
	},

	[99746] = { -- Gauntlets of the Cursed Conqueror
		[CLASS_PALADIN] = {99595, 99625, 99648},
		[CLASS_PRIEST] = {99586, 99590},
		[CLASS_WARLOCK] = 99567,
	},

	[99747] = { -- Gauntlets of the Cursed Protector
		[CLASS_WARRIOR] = {99559, 99563},
		[CLASS_HUNTER] = 99578,
		[CLASS_SHAMAN] = {99616, 99580, 99611},
		[CLASS_MONK] = {99644, 99552, 99556},
	},

	[99748] = { -- Helm of the Cursed Vanquisher
		[CLASS_ROGUE] = 99631,
		[CLASS_DEATHKNIGHT] = {99571, 99605},
		[CLASS_MAGE] = 99576,
		[CLASS_DRUID] = {99599, 99618, 99624, 99638},
	},

	[99749] = { -- Helm of the Cursed Conqueror
		[CLASS_PALADIN] = {99596, 99651, 99665},
		[CLASS_PRIEST] = {99587, 99591},
		[CLASS_WARLOCK] = 99568,
	},

	[99750] = { -- Helm of the Cursed Protector
		[CLASS_WARRIOR] = {99557, 99602},
		[CLASS_HUNTER] = 99660,
		[CLASS_SHAMAN] = {99612, 99645, 99649},
		[CLASS_MONK] = {99553, 99607, 99653},
	},

	[99751] = { -- Leggings of the Cursed Vanquisher
		[CLASS_ROGUE] = 99634,
		[CLASS_DEATHKNIGHT] = {99564, 99572},
		[CLASS_MAGE] = 99657,
		[CLASS_DRUID] = {99581, 99600, 99610, 99619},
	},

	[99752] = { -- Leggings of the Cursed Conqueror
		[CLASS_PALADIN] = {99593, 99661, 99666},
		[CLASS_PRIEST] = {99588, 99592},
		[CLASS_WARLOCK] = 99569,
	},

	[99753] = { -- Leggings of the Cursed Protector
		[CLASS_WARRIOR] = {99558, 99560},
		[CLASS_HUNTER] = 99573,
		[CLASS_SHAMAN] = {99613, 99646, 99650},
		[CLASS_MONK] = {99554, 99606, 99654},
	},

	[99754] = { -- Shoulders of the Cursed Vanquisher
		[CLASS_ROGUE] = 99635,
		[CLASS_DEATHKNIGHT] = {99639, 99652},
		[CLASS_MAGE] = 99659,
		[CLASS_DRUID] = {99664, 99583, 99589, 99621},
	},

	[99755] = { -- Shoulders of the Cursed Conqueror
		[CLASS_PALADIN] = {99594, 99656, 99662},
		[CLASS_PRIEST] = {99585, 99628},
		[CLASS_WARLOCK] = 99601,
	},

	[99756] = { -- Shoulders of the Cursed Protector
		[CLASS_WARRIOR] = {99561, 99597},
		[CLASS_HUNTER] = 99574,
		[CLASS_SHAMAN] = {99614, 99647, 99663},
		[CLASS_MONK] = {99565, 99642, 99655},
	},

		[152740] = { -- Unsullied Cloak
		["DEPENDANT_WARNING"] = false,
		[CLASS_WARRIOR] = 152778,
		[CLASS_PALADIN] = 152778,
		[CLASS_DEATHKNIGHT] = 152778,
		[CLASS_HUNTER] = 152778,
		[CLASS_SHAMAN] = 152778,
		[CLASS_MAGE] = 152778,
		[CLASS_PRIEST] = 152778,
		[CLASS_WARLOCK] = 152778,
		[CLASS_DRUID] = 152778,
		[CLASS_DEMONHUNTER] = 152778,
		[CLASS_MONK] = 152778,
		[CLASS_ROGUE] = 152778,
	},
	
	[152742] = { -- Unsullied Cloth Cuffs 
		["DEPENDANT_WARNING"] = false,
		[CLASS_MAGE] = 152773,
		[CLASS_PRIEST] = 152773,
		[CLASS_WARLOCK] = 152773,
	},
	
	[153135] = { -- Unsullied Cloth Robes 
		["DEPENDANT_WARNING"] = false,
		[CLASS_MAGE] = 152775,
		[CLASS_PRIEST] = 152775,
		[CLASS_WARLOCK] = 152775,
	},
	
	[153144] = { -- Unsullied Cloth Slippers
		["DEPENDANT_WARNING"] = false,
		[CLASS_MAGE] = 152774,
		[CLASS_PRIEST] = 152774,
		[CLASS_WARLOCK] = 152774,
	},
	
	[153141] = { -- Unsullied Cloth Mitts
		["DEPENDANT_WARNING"] = false,
		[CLASS_MAGE] = 152771,
		[CLASS_PRIEST] = 152771,
		[CLASS_WARLOCK] = 152771,
	},
	
	[152738] = { -- Unsullied Cloth Cap
		["DEPENDANT_WARNING"] = false,
		[CLASS_MAGE] = 152770,
		[CLASS_PRIEST] = 152770,
		[CLASS_WARLOCK] = 152770,
	},
	
	[153154] = { -- Unsullied Cloth Leggings
		["DEPENDANT_WARNING"] = false,
		[CLASS_MAGE] = 152776,
		[CLASS_PRIEST] = 152776,
		[CLASS_WARLOCK] = 152776,
	},
	
	[152734] = { -- Unsullied Cloth Mantle
		["DEPENDANT_WARNING"] = false,
		[CLASS_MAGE] = 152777,
		[CLASS_PRIEST] = 152777,
		[CLASS_WARLOCK] = 152777,
	},
	
	[153156] = { -- Unsullied Cloth Sash
		["DEPENDANT_WARNING"] = false,
		[CLASS_MAGE] = 152772,
		[CLASS_PRIEST] = 152772,
		[CLASS_WARLOCK] = 152772,
	},
	
	[153142] = { -- Unsullied Leather Armbands
		["DEPENDANT_WARNING"] = false,
		[CLASS_DRUID] = 152754,
		[CLASS_DEMONHUNTER] = 152754,
		[CLASS_MONK] = 152754,
		[CLASS_ROGUE] = 152754,
	},
	
	[153151] = { -- Unsullied Leather Tunic
		["DEPENDANT_WARNING"] = false,
		[CLASS_DRUID] = 152758,
		[CLASS_DEMONHUNTER] = 152758,
		[CLASS_MONK] = 152758,
		[CLASS_ROGUE] = 152758,
	},
	
	[153136] = { -- Unsullied Leather Treads
		["DEPENDANT_WARNING"] = false,
		[CLASS_DRUID] = 152757,
		[CLASS_DEMONHUNTER] = 152757,
		[CLASS_MONK] = 152757,
		[CLASS_ROGUE] = 152757,
	},
	
	[152739] = { -- Unsullied Leather Grips
		["DEPENDANT_WARNING"] = false,
		[CLASS_DRUID] = 152755,
		[CLASS_DEMONHUNTER] = 152755,
		[CLASS_MONK] = 152755,
		[CLASS_ROGUE] = 152755,
	},
	
	[153139] = { -- Unsullied Leather Headgear
		["DEPENDANT_WARNING"] = false,
		[CLASS_DRUID] = 152759,
		[CLASS_DEMONHUNTER] = 152759,
		[CLASS_MONK] = 152759,
		[CLASS_ROGUE] = 152759,
	},
	
	[152737] = { -- Unsullied Leather Trousers
		["DEPENDANT_WARNING"] = false,
		[CLASS_DRUID] = 152761,
		[CLASS_DEMONHUNTER] = 152761,
		[CLASS_MONK] = 152761,
		[CLASS_ROGUE] = 152761,
	},
	
	[153145] = { -- Unsullied Leather Spaulders
		["DEPENDANT_WARNING"] = false,
		[CLASS_DRUID] = 152760,
		[CLASS_DEMONHUNTER] = 152760,
		[CLASS_MONK] = 152760,
		[CLASS_ROGUE] = 152760,
	},
	
	[153148] = { -- Unsullied Leather Belt
		["DEPENDANT_WARNING"] = false,
		[CLASS_DRUID] = 152756,
		[CLASS_DEMONHUNTER] = 152756,
		[CLASS_MONK] = 152756,
		[CLASS_ROGUE] = 152756,
	},
	
	[153152] = { -- Unsullied Mail Boots
		["DEPENDANT_WARNING"] = false,
		[CLASS_HUNTER] = 152766,
		[CLASS_SHAMAN] = 152766,
	},
	
	[153158] = { -- Unsullied Mail Bracers
		["DEPENDANT_WARNING"] = false,
		[CLASS_HUNTER] = 152762,
		[CLASS_SHAMAN] = 152762,
	},
	
	[152741] = { -- Unsullied Mail Chestguard
		["DEPENDANT_WARNING"] = false,
		[CLASS_HUNTER] = 152768,
		[CLASS_SHAMAN] = 152768,
	},
	
	[153147] = { -- Unsullied Mail Coif
		["DEPENDANT_WARNING"] = false,
		[CLASS_HUNTER] = 152765,
		[CLASS_SHAMAN] = 152765,
	},
	
	[152744] = { -- Unsullied Mail Girdle
		["DEPENDANT_WARNING"] = false,
		[CLASS_HUNTER] = 152767,
		[CLASS_SHAMAN] = 152767,
	},
	
	[153149] = { -- Unsullied Mail Gloves
		["DEPENDANT_WARNING"] = false,
		[CLASS_HUNTER] = 152763,
		[CLASS_SHAMAN] = 152763,
	},
	
	[153138] = { -- Unsullied Mail Legguards
		["DEPENDANT_WARNING"] = false,
		[CLASS_HUNTER] = 153138,
		[CLASS_SHAMAN] = 153138,
	},
	
	[153137] = { -- Unsullied Mail Spaulders
		["DEPENDANT_WARNING"] = false,
		[CLASS_HUNTER] = 152769,
		[CLASS_SHAMAN] = 152769,
	},
	
	[153143] = { -- Unsullied Plate Breastplate
		["DEPENDANT_WARNING"] = false,
		[CLASS_WARRIOR] = 152748,
		[CLASS_PALADIN] = 152748,
		[CLASS_DEATHKNIGHT] = 152748,
	},
	
	[153157] = { -- Unsullied Plate Gauntlets
		["DEPENDANT_WARNING"] = false,
		[CLASS_WARRIOR] = 152751,
		[CLASS_PALADIN] = 152751,
		[CLASS_DEATHKNIGHT] = 152751,
	},
	
	[153146] = { -- Unsullied Plate Greaves
		["DEPENDANT_WARNING"] = false,
		[CLASS_WARRIOR] = 152746,
		[CLASS_PALADIN] = 152746,
		[CLASS_DEATHKNIGHT] = 152746,
	},
	
	[153155] = { -- Unsullied Plate Helmet
		["DEPENDANT_WARNING"] = false,
		[CLASS_WARRIOR] = 152747,
		[CLASS_PALADIN] = 152747,
		[CLASS_DEATHKNIGHT] = 152747,
	},
	
	[153153] = { -- Unsullied Plate Pauldrons
		["DEPENDANT_WARNING"] = false,
		[CLASS_WARRIOR] = 152750,
		[CLASS_PALADIN] = 152750,
		[CLASS_DEATHKNIGHT] = 152750,
	},
	
	[152743] = { -- Unsullied Plate Sabatons
		["DEPENDANT_WARNING"] = false,
		[CLASS_WARRIOR] = 152753,
		[CLASS_PALADIN] = 152753,
		[CLASS_DEATHKNIGHT] = 152753,
	},
	
	[153150] = { -- Unsullied Plate Vambraces
		["DEPENDANT_WARNING"] = false,
		[CLASS_WARRIOR] = 152752,
		[CLASS_PALADIN] = 152752,
		[CLASS_DEATHKNIGHT] = 152752,
	},
	
	[153140] = { -- Unsullied Plate Waistplate
		["DEPENDANT_WARNING"] = false,
		[CLASS_WARRIOR] = 152749,
		[CLASS_PALADIN] = 152749,
		[CLASS_DEATHKNIGHT] = 152749,
	},
	
	[124550] = { -- Baleful Bracers
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124566,
		[CLASS_PALADIN] = 124566,
		[CLASS_DEATHKNIGHT] = 124566,
		[CLASS_HUNTER] = 124565,
		[CLASS_SHAMAN] = 124565,
		[CLASS_MAGE] = 124563,
		[CLASS_PRIEST] = 124563,
		[CLASS_WARLOCK] = 124563,
		[CLASS_DRUID] = 124564,
		[CLASS_DEMONHUNTER] = 124564,
		[CLASS_MONK] = 124564,
		[CLASS_ROGUE] = 124564,
	},

	[124551] = { -- Baleful Tunic
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124569,
		[CLASS_PALADIN] = 124569,
		[CLASS_DEATHKNIGHT] = 124569,
		[CLASS_HUNTER] = 124568,
		[CLASS_SHAMAN] = 124568,
		[CLASS_MAGE] = 124570,
		[CLASS_PRIEST] = 124570,
		[CLASS_WARLOCK] = 124570,
		[CLASS_DRUID] = 124567,
		[CLASS_DEMONHUNTER] = 124567,
		[CLASS_MONK] = 124567,
		[CLASS_ROGUE] = 124567,
	},

	[124552] = { -- Baleful Treads
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124574,
		[CLASS_PALADIN] = 124574,
		[CLASS_DEATHKNIGHT] = 124574,
		[CLASS_HUNTER] = 124573,
		[CLASS_SHAMAN] = 124573,
		[CLASS_MAGE] = 124571,
		[CLASS_PRIEST] = 124571,
		[CLASS_WARLOCK] = 124571,
		[CLASS_DRUID] = 124572,
		[CLASS_DEMONHUNTER] = 124572,
		[CLASS_MONK] = 124572,
		[CLASS_ROGUE] = 124572,
	},

	[124553] = { -- Baleful Gauntlets
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124578,
		[CLASS_PALADIN] = 124578,
		[CLASS_DEATHKNIGHT] = 124578,
		[CLASS_HUNTER] = 124577,
		[CLASS_SHAMAN] = 124577,
		[CLASS_MAGE] = 124575,
		[CLASS_PRIEST] = 124575,
		[CLASS_WARLOCK] = 124575,
		[CLASS_DRUID] = 124576,
		[CLASS_DEMONHUNTER] = 124576,
		[CLASS_MONK] = 124576,
		[CLASS_ROGUE] = 124576,
	},

	[124554] = { -- Baleful Hood
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124582,
		[CLASS_PALADIN] = 124582,
		[CLASS_DEATHKNIGHT] = 124582,
		[CLASS_HUNTER] = 124581,
		[CLASS_SHAMAN] = 124581,
		[CLASS_MAGE] = 124579,
		[CLASS_PRIEST] = 124579,
		[CLASS_WARLOCK] = 124579,
		[CLASS_DRUID] = 124580,
		[CLASS_DEMONHUNTER] = 124580,
		[CLASS_MONK] = 124580,
		[CLASS_ROGUE] = 124580,
	},

	[124555] = { -- Baleful Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124586,
		[CLASS_PALADIN] = 124586,
		[CLASS_DEATHKNIGHT] = 124586,
		[CLASS_HUNTER] = 124585,
		[CLASS_SHAMAN] = 124585,
		[CLASS_MAGE] = 124583,
		[CLASS_PRIEST] = 124583,
		[CLASS_WARLOCK] = 124583,
		[CLASS_DRUID] = 124584,
		[CLASS_DEMONHUNTER] = 124584,
		[CLASS_MONK] = 124584,
		[CLASS_ROGUE] = 124584,
	},

	[124556] = { -- Baleful Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124590,
		[CLASS_PALADIN] = 124590,
		[CLASS_DEATHKNIGHT] = 124590,
		[CLASS_HUNTER] = 124589,
		[CLASS_SHAMAN] = 124589,
		[CLASS_MAGE] = 124587,
		[CLASS_PRIEST] = 124587,
		[CLASS_WARLOCK] = 124587,
		[CLASS_DRUID] = 124588,
		[CLASS_DEMONHUNTER] = 124588,
		[CLASS_MONK] = 124588,
		[CLASS_ROGUE] = 124588,
	},

	[124557] = { -- Baleful Girdle
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124594,
		[CLASS_PALADIN] = 124594,
		[CLASS_DEATHKNIGHT] = 124594,
		[CLASS_HUNTER] = 124593,
		[CLASS_SHAMAN] = 124593,
		[CLASS_MAGE] = 124591,
		[CLASS_PRIEST] = 124591,
		[CLASS_WARLOCK] = 124591,
		[CLASS_DRUID] = 124592,
		[CLASS_DEMONHUNTER] = 124592,
		[CLASS_MONK] = 124592,
		[CLASS_ROGUE] = 124592,
	},

	[127777] = { -- Baleful Cloth Bracers
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = 124563,
		[CLASS_PRIEST] = 124563,
		[CLASS_WARLOCK] = 124563,
	},

	[127778] = { -- Baleful Cloth Robe
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = 124570,
		[CLASS_PRIEST] = 124570,
		[CLASS_WARLOCK] = 124570,
	},

	[127779] = { -- Baleful Cloth Treads
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = 124571,
		[CLASS_PRIEST] = 124571,
		[CLASS_WARLOCK] = 124571,
	},

	[127780] = { -- Baleful Cloth Gauntlets
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = 124575,
		[CLASS_PRIEST] = 124575,
		[CLASS_WARLOCK] = 124575,
	},

	[127781] = { -- Baleful Cloth Hood
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = 124579,
		[CLASS_PRIEST] = 124579,
		[CLASS_WARLOCK] = 124579,
	},

	[127782] = { -- Baleful Cloth Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = 124583,
		[CLASS_PRIEST] = 124583,
		[CLASS_WARLOCK] = 124583,
	},

	[127783] = { -- Baleful Cloth Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = 124587,
		[CLASS_PRIEST] = 124587,
		[CLASS_WARLOCK] = 124587,
	},

	[127784] = { -- Baleful Cloth Girdle
		["DEPENDANT_WARNING"] = true,
		[CLASS_MAGE] = 124591,
		[CLASS_PRIEST] = 124591,
		[CLASS_WARLOCK] = 124591,
	},

	[127790] = { -- Baleful Leather Bracers
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = 124564,
		[CLASS_DEMONHUNTER] = 124564,
		[CLASS_MONK] = 124564,
		[CLASS_ROGUE] = 124564,
	},

	[127791] = { -- Baleful Leather Tunic
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = 124567,
		[CLASS_DEMONHUNTER] = 124567,
		[CLASS_MONK] = 124567,
		[CLASS_ROGUE] = 124567,
	},

	[127792] = { -- Baleful Leather Treads
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = 124572,
		[CLASS_DEMONHUNTER] = 124572,
		[CLASS_MONK] = 124572,
		[CLASS_ROGUE] = 124572,
	},

	[127793] = { -- Baleful Leather Gauntlets
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = 124576,
		[CLASS_DEMONHUNTER] = 124576,
		[CLASS_MONK] = 124576,
		[CLASS_ROGUE] = 124576,
	},

	[127794] = { -- Baleful Leather Hood
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = 124580,
		[CLASS_DEMONHUNTER] = 124580,
		[CLASS_MONK] = 124580,
		[CLASS_ROGUE] = 124580,
	},

	[127795] = { -- Baleful Leather Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = 124584,
		[CLASS_DEMONHUNTER] = 124584,
		[CLASS_MONK] = 124584,
		[CLASS_ROGUE] = 124584,
	},

	[127796] = { -- Baleful Leather Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = 124588,
		[CLASS_DEMONHUNTER] = 124588,
		[CLASS_MONK] = 124588,
		[CLASS_ROGUE] = 124588,
	},

	[127797] = { -- Baleful Leather Girdle
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = 124592,
		[CLASS_DEMONHUNTER] = 124592,
		[CLASS_MONK] = 124592,
		[CLASS_ROGUE] = 124592,
	},

	[127803] = { -- Baleful Mail Bracers
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = 124565,
		[CLASS_SHAMAN] = 124565,
	},

	[127804] = { -- Baleful Mail Robe
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = 124568,
		[CLASS_SHAMAN] = 124568,
	},

	[127805] = { -- Baleful Mail Treads
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = 124573,
		[CLASS_SHAMAN] = 124573,
	},

	[127806] = { -- Baleful Mail Gauntlets
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = 124577,
		[CLASS_SHAMAN] = 124577,
	},

	[127807] = { -- Baleful Mail Hood
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = 124581,
		[CLASS_SHAMAN] = 124581,
	},

	[127808] = { -- Baleful Mail Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = 124585,
		[CLASS_SHAMAN] = 124585,
	},

	[127809] = { -- Baleful Mail Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = 124589,
		[CLASS_SHAMAN] = 124589,
	},

	[127810] = { -- Baleful Mail Girdle
		["DEPENDANT_WARNING"] = true,
		[CLASS_HUNTER] = 124593,
		[CLASS_SHAMAN] = 124593,
	},

	[127816] = { -- Baleful Plate Bracers
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124566,
		[CLASS_PALADIN] = 124566,
		[CLASS_DEATHKNIGHT] = 124566,
	},

	[127817] = { -- Baleful Plate Chest
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124569,
		[CLASS_PALADIN] = 124569,
		[CLASS_DEATHKNIGHT] = 124569,
	},

	[127818] = { -- Baleful Plate Treads
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124574,
		[CLASS_PALADIN] = 124574,
		[CLASS_DEATHKNIGHT] = 124574,
	},

	[127819] = { -- Baleful Plate Gauntlets
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124578,
		[CLASS_PALADIN] = 124578,
		[CLASS_DEATHKNIGHT] = 124578,
	},

	[127820] = { -- Baleful Plate Hood
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124582,
		[CLASS_PALADIN] = 124582,
		[CLASS_DEATHKNIGHT] = 124582,
	},

	[127821] = { -- Baleful Plate Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124586,
		[CLASS_PALADIN] = 124586,
		[CLASS_DEATHKNIGHT] = 124586,
	},

	[127822] = { -- Baleful Plate Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124590,
		[CLASS_PALADIN] = 124590,
		[CLASS_DEATHKNIGHT] = 124590,
	},

	[127823] = { -- Baleful Plate Girdle
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124594,
		[CLASS_PALADIN] = 124594,
		[CLASS_DEATHKNIGHT] = 124594,
	},

	[128348] = { -- Baleful Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = 124590,
		[CLASS_PALADIN] = 124590,
		[CLASS_DEATHKNIGHT] = 124590,
		[CLASS_HUNTER] = 124589,
		[CLASS_SHAMAN] = 124589,
		[CLASS_MAGE] = 124587,
		[CLASS_PRIEST] = 124587,
		[CLASS_WARLOCK] = 124587,
		[CLASS_DRUID] = 124588,
		[CLASS_DEMONHUNTER] = 124588,
		[CLASS_MONK] = 124588,
		[CLASS_ROGUE] = 124588,
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
		[CLASS_DEMONHUNTER] = {124613, 124616, 124614, 124615, 124618, 124617},
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
		[CLASS_DEMONHUNTER] = {124613, 124616, 124614, 124615, 124618, 124617},
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
		[CLASS_DEMONHUNTER] = {BALEFUL_WEP_DAGGER, BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_1H_SWORD}, -- ?
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
		[CLASS_DEMONHUNTER] = {101867, 101786},
		[CLASS_MONK] = {101867, 101786},
		[CLASS_ROGUE] = {101867, 101786},
	},

	[102278] = { -- Timeless Leather Boots
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {101863, 101782},
		[CLASS_DEMONHUNTER] = {101863, 101782},
		[CLASS_MONK] = {101863, 101782},
		[CLASS_ROGUE] = {101863, 101782},
	},

	[102279] = { -- Timeless Leather Gloves
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {101865, 101784},
		[CLASS_DEMONHUNTER] = {101865, 101784},
		[CLASS_MONK] = {101865, 101784},
		[CLASS_ROGUE] = {101865, 101784},
	},

	[102280] = { -- Timeless Leather Helm
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {101866, 101785},
		[CLASS_DEMONHUNTER] = {101866, 101785},
		[CLASS_MONK] = {101866, 101785},
		[CLASS_ROGUE] = {101866, 101785},
	},

	[102281] = { -- Timeless Leather Leggings
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {101864, 101783},
		[CLASS_DEMONHUNTER] = {101864, 101783},
		[CLASS_MONK] = {101864, 101783},
		[CLASS_ROGUE] = {101864, 101783},
	},

	[102282] = { -- Timeless Leather Spaulders
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {101868, 101787},
		[CLASS_DEMONHUNTER] = {101868, 101787},
		[CLASS_MONK] = {101868, 101787},
		[CLASS_ROGUE] = {101868, 101787},
	},

	[102283] = { -- Timeless Leather Belt
		["DEPENDANT_WARNING"] = true,
		[CLASS_DRUID] = {101869, 101788},
		[CLASS_DEMONHUNTER] = {101869, 101788},
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
		[CLASS_DEMONHUNTER] = {101862, 101781},
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
		[CLASS_DEMONHUNTER] = {101800, 101790, 101852, 101848, 101828},
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
		[CLASS_DEMONHUNTER] = {101862, 101781, 101869, 101788, 101868, 101787, 101864, 101783, 101866, 101785, 101865, 101784, 101863, 101782, 101867, 101786},
	},
};

t.HORDE_ONLY_DATA = {
	[47242] = { -- Trophy of the Crusade
		[REDEEM] = REDEEM_TOC,
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

	[120209] = { -- Essence of the Iron Conqueror (Mythic) (Horde)
		["LINK"] = {119305, 119306, 119308, 119307, 119309},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = TIER_17_MYTHIC,
	},

	[120206] = { -- Essence of the Iron Conqueror (Heroic) (Horde)
		["LINK"] = {119305, 119306, 119308, 119307, 119309},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = TIER_17_HEROIC,
	},

	[119310] = { -- Essence of the Iron Conqueror (Normal) (Horde)
		["LINK"] = {119305, 119306, 119308, 119307, 119309},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = 0,
	},

	[120210] = { -- Essence of the Iron Protector (Mythic) (Horde)
		["LINK"] = {119320, 119321, 119322, 119319, 119318},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = TIER_17_MYTHIC,
	},

	[120207] = { -- Essence of the Iron Protector (Heroic) (Horde)
		["LINK"] = {119320, 119321, 119322, 119319, 119318},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = TIER_17_HEROIC,
	},

	[119323] = { -- Essence of the Iron Protector (Normal) (Horde)
		["LINK"] = {119320, 119321, 119322, 119319, 119318},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = 0,
	},

	[120211] = { -- Essence of the Iron Vanquisher (Mythic) (Horde)
		["LINK"] = {119315, 119311, 119312, 119313, 119314},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = TIER_17_MYTHIC,
	},

	[120208] = { -- Essence of the Iron Vanquisher (Heroic) (Horde)
		["LINK"] = {119315, 119311, 119312, 119313, 119314},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = TIER_17_HEROIC,
	},

	[119316] = { -- Essence of the Iron Vanquisher (Normal) (Horde)
		["LINK"] = {119315, 119311, 119312, 119313, 119314},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = 0,
	},
};

t.ALLIANCE_ONLY_DATA = {
	[47242] = { -- Trophy of the Crusade
		[REDEEM] = REDEEM_TOC,
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

	[120283] = { -- Essence of the Iron Conqueror (Mythic) (Alliance)
		["LINK"] = {119305, 119306, 119308, 119307, 119309},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = TIER_17_MYTHIC,
	},

	[120280] = { -- Essence of the Iron Conqueror (Heroic) (Alliance)
		["LINK"] = {119305, 119306, 119308, 119307, 119309},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = TIER_17_HEROIC,
	},

	[120277] = { -- Essence of the Iron Conqueror (Normal) (Alliance)
		["LINK"] = {119305, 119306, 119308, 119307, 119309},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = 0,
	},

	[120284] = { -- Essence of the Iron Protector (Mythic) (Alliance)
		["LINK"] = {119320, 119321, 119322, 119319, 119318},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = TIER_17_MYTHIC,
	},

	[120281] = { -- Essence of the Iron Protector (Heroic) (Alliance)
		["LINK"] = {119320, 119321, 119322, 119319, 119318},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = TIER_17_HEROIC,
	},

	[120279] = { -- Essence of the Iron Protector (Normal) (Alliance)
		["LINK"] = {119320, 119321, 119322, 119319, 119318},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = 0,
	},

	[120285] = { -- Essence of the Iron Vanquisher (Mythic) (Alliance)
		["LINK"] = {119315, 119311, 119312, 119313, 119314},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = TIER_17_MYTHIC,
	},

	[120282] = { -- Essence of the Iron Vanquisher (Heroic) (Alliance)
		["LINK"] = {119315, 119311, 119312, 119313, 119314},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = TIER_17_HEROIC,
	},

	[120278] = { -- Essence of the Iron Vanquisher (Normal) (Alliance)
		["LINK"] = {119315, 119311, 119312, 119313, 119314},
		[REDEEM] = REDEEM_TIER_17, [BONUS] = 0,
	},
};
