local L = TransmogTokens.L

if GetLocale() == "enUS" then
	L["Loading item information..."] = "Loading item information...";
	L["Can be exchanged for %d appearances you need."] = "Can be exchanged for %d appearances you need.";
	L["Can be exchanged for 1 appearance you need."] = "Can be exchanged for 1 appearance you need.";
	L["Appearances from this are class and/or spec dependant."] = "Appearances from this are class and/or spec dependant.";
	L["Can be exchanged for appearances you don't need."] = "Can be exchanged for appearances you don't need.";
	L["This token cannot be redeemed for anything."] = "This token cannot be redeemed for anything.";
	
	--redeem
	L.REDEEM_LOOKUP = {
		["REDEEM_TBC_SUNMOTE"] = "Redeem: Yrma @ Isle of Quel'Danas\nLocated on Sun's Reach Harbour [Boat] (50.2, 28.6)",
		["REDEEM_TBC_TIER_6"] = "Redeem: Soryn @ Isle of Quel'Danas\nLocated in Sun's Reach Armory (49.0, 39.0)\n\nRedeem: Kayri @ Isle of Quel'Danas\nLocated in Sun's Reach Armor (49.0, 39.0)\n\nRedeem: Theremis @ Isle of Quel'Danas\nLocated on Sun's Reach Harbour [Boat] (50.2, 28.6)\n\n|cFFF58CBANote: Items can be purchased despite class requirement.|r",
		["REDEEM_TBC_HYJAL"] = "Redeem: Tydormu @ Hyjal Summit\nLocated just inside the entrance of the raid.\n\nRedeem: Soryn @ Isle of Quel'Danas\nLocated in Sun's Reach Armory (49.0, 39.0)\n\nRedeem: Kayri @ Isle of Quel'Danas\nLocated in Sun's Reach Armor (49.0, 39.0)",
		["REDEEM_FIRELANDS_BOE"] = "Redeem: Lurah Wrathvine @ Firelands\nLocated just inside the entrance of the raid.",

		["REDEEM_TIER_15"] = "Redeem: Ao Pye @ Townlong Steppes\nLocated in Niuzao Temple (37.8, 64.6)", -- Throne of Thunder T15,
		["REDEEM_MOP_OXHEART"] = "Redeem: Commander Oxheart @ Townlong Steppes\nLocated in Niuzao Temple (37.8, 64.6)", -- Tier 14 (HoF/ToES)
		["REDEEM_TIER_4"] = "Redeem: Arodis Sunblade @ Shattrath [Scryers]\nLocated in Seer's Library (42.6, 90.6)\n\nRedeem: Asuur @ Shattrath [Aldor]\nLocated in Shrine of Unending Light (23.6, 32.6)\n\nRedeem: Karynna @ Isle of Quel'Danas\nLocated in Sun's Reach Armory (49.0, 39.0)", -- Tier 4
		["REDEEM_TIER_5"] = "Redeem: Veynna Dawnstar @ Shattrath [Scryers]\nLocated in Seer's Library (44.8, 91.6)\n\nRedeem: Kelara @ Shattrath [Aldor]\nLocated in Shrine of Unending Light (24.6, 27.8)\n\nRedeem: Olus @ Isle of Quel'Danas\nLocated in Sun's Reach Armory (49.0, 39.0)", -- Tier 5

		["REDEEM_AQ_KEYL"] = "Redeem: Keyl Swiftclaw @ Ruins of Ahn'Qiraj\nLocated outside raid enterance",
		["REDEEM_AQ_HARO"] = "Redeem: Warden Haro @ Ruins of Ahn'Qiraj\nLocated outside raid enterance",
		["REDEEM_AQ_ANDO"] = "Redeem: Andorgos @ Temple of Ahn'Qiarj\nLocated inside, after Skeram (Boss)",
		["REDEEM_AQ_VETH"] = "Redeem: Vethsera @ Temple of Ahn'Qiarj\nLocated inside, after Skeram (Boss)",
		["REDEEM_AQ_KAND"] = "Redeem: Kandrostrasz @ Temple of Ahn'Qiarj\nLocated inside, after Skeram (Boss)",
	};

	L.ALLIANCE_REDEEM_LOOKUP = {
		["REDEEM_TOC"] = "Redeem: Valiant Laradia @ Icecrown\nLocated at Argent Tournament (75.4, 21.6)", -- ToC Trophy Vendor T9 (Alliance)

		["REDEEM_TIER_11"] = "Redeem: Toren Landow @ Stormwind\nLocated in the Command Center (79.0, 70.0)", -- T11 (Alliance)
		["REDEEM_TIER_12"] = "Redeem: Magatha Silverton @ Stormwind\nLocated in the Command Center (79.0, 69.6)", -- Firelands T12 (Alliance)
		["REDEEM_TIER_13"] = "Redeem: Faldren Tillsdale @ Stormwind\nLocated in the Command Center (79.0, 69.6)", -- Dragon Soul T13 (Alliance)

		["REDEEM_TIER_16_LFR"] = "Redeem: Welbiz Cheerwhistle @ Pandaria\nLocated in Shrine of Seven Stars (41.6, 42.6)", -- Siege of Orgrimmar T16 [Raid Finder] (Alliance)
		["REDEEM_TIER_16_NORMAL"] = "Redeem: Thelett Shaleheart @ Pandaria\nLocated in Shrine of Seven Stars (41.6, 42.6)", -- Siege of Orgrimmar T16 [Normal] (Alliance)
		["REDEEM_TIER_16_HEROIC"] = "Redeem: Clarice Chapmann @ Pandaria\nLocated in Shrine of Seven Stars (41.6, 42.6)", -- Siege of Orgrimmar T16 [Heroic] (Alliance)
		["REDEEM_TIER_16_MYTHIC"] = "Redeem: Lorry Warmheart @ Pandaria\nLocated in Shrine of Seven Stars (41.6, 42.6)", -- Siege of Orgrimmar T16 [Mythic] (Alliance)

		["REDEEM_TIER_17"] = "Redeem: Exarch Maladaar @ Draenor\nLocated in Talador (49.8, 48.6)", -- T17 Quest Hand-in (Alliance)
	};

	L.HORDE_REDEEM_LOOKUP = {
		["REDEEM_TOC"] = "Redeem: Valiant Bressia @ Icecrown\nLocated at Argent Tournament (75.4, 21.6)", -- ToC Trophy Vendor T9 (Horde)

		["REDEEM_TIER_11"] = "Redeem: Rugok @ Orgrimmar\nLocated in Grommash Hold (48.2, 71.6)", -- T11 (Horde)
		["REDEEM_TIER_12"] = "Redeem: Gunra @ Orgrimmar\nLocated in Grommash Hold (48.4, 71.6)", -- Firelands T12 (Horde)
		["REDEEM_TIER_13"] = "Redeem: Jamus'Vaz @ Orgrimmar\nLocated in Grommash Hold (48.6, 71.4)", -- Dragon Soul T13 (Horde)

		["REDEEM_TIER_16_LFR"] = "Redeem: Blizzix Sparkshiv @ Pandaria\nLocated in Shrine of Two Moons (43.6, 74.8)", -- Siege of Orgrimmar T16 [Raid Finder] (Horde)
		["REDEEM_TIER_16_NORMAL"] = "Redeem: Nadina Stargem @ Pandaria\nLocated in Shrine of Two Moons (43.6, 74.8)", -- Siege of Orgrimmar T16 [Normal] (Horde)
		["REDEEM_TIER_16_HEROIC"] = "Redeem: Ki'agnuu @ Pandaria\nLocated in Shrine of Two Moons (43.6, 74.8)", -- Siege of Orgrimmar T16 [Heroic] (Horde)
		["REDEEM_TIER_16_MYTHIC"] = "Redeem: Tu'aho Pathcutter @ Pandaria\nLocated in Shrine of Two Moons (43.6, 74.8)", -- Siege of Orgrimmar T16 [Mythic] (Horde)

		["REDEEM_TIER_17"] = "Redeem:Lady Liandrin @ Draenor\nLocated in Talador (50.0. 48.6)", -- T17 Quest Hand-in (Alliance)
	};

	L.CLASS_REDEEM_LOOKUP = {
		["CLASS_WARRIOR"] = {
			["REDEEM_TIER_10"] = "Redeem: Horace Hunderland @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Icecrown Citadel T10 (Warriors)
			["REDEEM_TIER_7"] = "Redeem: Griselda Hunderland @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Naxxramas T7 (Warriors)
			["REDEEM_TIER_8"] = "Redeem: Dubin Clay @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Ulduar T8 (Warriors)
		},

		["CLASS_PALADIN"] = {
			["REDEEM_TIER_10"] = "Redeem: Horace Hunderland @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Icecrown Citadel T10 (Paladins)
			["REDEEM_TIER_7"] = "Redeem: Griselda Hunderland @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Naxxramas T7 (Paladins)
			["REDEEM_TIER_8"] = "Redeem: Dubin Clay @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Ulduar T8 (Paladins)
		},

		["CLASS_DEATHKNIGHT"] = {
			["REDEEM_TIER_10"] = "Redeem: Horace Hunderland @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Icecrown Citadel T10 (Death Knights)
			["REDEEM_TIER_7"] = "Redeem: Griselda Hunderland @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Naxxramas T7 (Death Knights)
			["REDEEM_TIER_8"] = "Redeem: Dubin Clay @ Dalaran (Northrend)\nLocated in Tanks for Everything (47.0, 28.4)", -- Ulduar T8 (Death Knights)
		},

		["CLASS_MAGE"] = {
			["REDEEM_TIER_10"] = "Redeem: Rueben Lauren @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Icecrown Citadel T10 (Mages)
			["REDEEM_TIER_7"] = "Redeem: Paldesse @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Naxxramas T7 (Mages)
			["REDEEM_TIER_8"] = "Redeem: Paldesse @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Ulduar T8 (Mages)
		},

		["CLASS_WARLOCK"] = {
			["REDEEM_TIER_10"] = "Redeem: Rueben Lauren @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Icecrown Citadel T10 (Warlocks)
			["REDEEM_TIER_7"] = "Redeem: Paldesse @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Naxxramas T7 (Warlocks)
			["REDEEM_TIER_8"] = "Redeem: Paldesse @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Ulduar T8 (Warlocks)
		},

		["CLASS_PRIEST"] = {
			["REDEEM_TIER_10"] = "Redeem: Rueben Lauren @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Icecrown Citadel T10 (Priests)
			["REDEEM_TIER_7"] = "Redeem: Paldesse @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Naxxramas T7 (Priests)
			["REDEEM_TIER_8"] = "Redeem: Paldesse @ Dalaran (Northrend)\nLocated in Threads of Fate (43.4, 50.2)", -- Ulduar T8 (Priests)
		},

		["CLASS_DRUID"] = {
			["REDEEM_TIER_10"] = "Redeem: Rafael Langrom @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Icecrown Citadel T10 (Druids)
			["REDEEM_TIER_7"] = "Redeem: Valerie Langrom @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Naxxramas T7 (Druids)
			["REDEEM_TIER_8"] = "Redeem: Valerie Langrom @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Ulduar T8 (Druids)
		},

		["CLASS_ROGUE"] = {
			["REDEEM_TIER_10"] = "Redeem: Rafael Langrom @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Icecrown Citadel T10 (Rogues)
			["REDEEM_TIER_7"] = "Redeem: Valerie Langrom @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Naxxramas T7 (Rogues)
			["REDEEM_TIER_8"] = "Redeem: Valerie Langrom @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Ulduar T8 (Rogues)
		},

		["CLASS_HUNTER"] = {
			["REDEEM_TIER_10"] = "Redeem: Matilda Brightlink @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Icecrown Citadel T10 (Hunters)
			["REDEEM_TIER_7"] = "Redeem: Bragund Brightlink @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Naxramas T7 (Hunters)
			["REDEEM_TIER_8"] = "Redeem: Bragund Brightlink @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Ulduar T8 (Hunters)
		},

		["CLASS_SHAMAN"] = {
			["REDEEM_TIER_10"] = "Redeem: Matilda Brightlink @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Icecrown Citadel T10 (Shamans)
			["REDEEM_TIER_7"] = "Redeem: Bragund Brightlink @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Naxramas T7 (Shamans)
			["REDEEM_TIER_8"] = "Redeem: Bragund Brightlink @ Dalaran (Northrend)\nLocated in Langrom's Leather & Links (51.6, 71.6)", -- Ulduar T8 (Shamans)
		}
	};
end