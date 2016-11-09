-- zhTW localization by GitHub user mcc1
local L = TransmogTokens.L

if GetLocale() == "zhTW" then
	L["Loading item information..."] = "讀取物品資訊中...";
	L["Can be exchanged for %d appearances you need."] = "你需要的 %d 個外觀可被兌換。";
	L["Can be exchanged for 1 appearance you need."] = "你需要的 1 個外觀可被兌換。";
	L["Appearances from this are class and/or spec dependant."] = "此外觀需要特定職業或天賦。";
	L["Can be exchanged for appearances you don't need."] = "可以兌換你不需要的外觀。";
	L["This token cannot be redeemed for anything."] = "此徽章無法兌換任何物品。";
	
	--Redeem
	L.REDEEM_LOOKUP = {
		["REDEEM_TBC_SUNMOTE"] = "兌換：耶瑪 @ 奎爾達納斯之島\n地點在日境碼頭[船上] (50.2, 28.6)",
		["REDEEM_TBC_TIER_6"] = "兌換：索令 @ 奎爾達納斯之島\n日境軍械庫之內 (49.0, 39.0)\n\n兌換：凱里 @ 奎爾達納斯之島\n日境軍械庫之內 (49.0, 39.0)\n\n兌換：瑟雷敏斯 @ 奎爾達納斯之島\n地點在日境碼頭[船上] (50.2, 28.6)\n\n|cFFF58CBANote: Items can be purchased despite class requirement.|r",
		["REDEEM_TBC_HYJAL"] = "兌換：提多姆 @ 海加爾山\n地點在副本入口處。\n\n兌換：索令 @ 奎爾達納斯之島\n日境軍械庫之內 (49.0, 39.0)\n\n兌換：凱里 @ 奎爾達納斯之島\n日境軍械庫之內 (49.0, 39.0)",
		["REDEEM_FIRELANDS_BOE"] = "兌換：盧拉‧怒藤 @ 火源之界\n地點在副本入口處。",

		["REDEEM_TIER_15"] = "兌換：璈湃 @ 螳螂荒原\n地點在怒兆寺 (37.8, 64.6)", -- Throne of Thunder T15,
		["REDEEM_MOP_OXHEART"] = "兌換：指揮官牛心 @ 螳螂荒原\n地點在怒兆寺 (37.8, 64.6)", -- Tier 14 (HoF/ToES)
		["REDEEM_TIER_4"] = "兌換：阿羅迪斯‧日刃 @ 撒塔斯 [占卜者]\n地點在先知書庫 (42.6, 90.6)\n\n兌換：阿蘇爾 @ 撒塔斯 [奧多爾]\n地點在永恆聖光神殿 (23.6, 32.6)\n\n兌換：凱立娜 @ 奎爾達納斯之島\n日境軍械庫之內 (49.0, 39.0)", -- Tier 4
		["REDEEM_TIER_5"] = "兌換：維娜‧黎星 @ 撒塔斯 [占卜者]\n地點在先知書庫 (44.8, 91.6)\n\n兌換：奇拉娜 @ 撒塔斯 [奧多爾]\n地點在永恆聖光神殿 (24.6, 27.8)\n\n兌換：歐盧思 @ 奎爾達納斯之島\n日境軍械庫之內 (49.0, 39.0)", -- Tier 5

		["REDEEM_AQ_KEYL"] = "兌換：凱伊‧迅爪 @ 安其拉廢墟\n地點在團隊副本之外",
		["REDEEM_AQ_HARO"] = "兌換：守望者哈洛 @ 安其拉廢墟\n地點在團隊副本之外",
		["REDEEM_AQ_ANDO"] = "兌換：安多葛斯 @ 安其拉神廟\n在副本之內 預言者斯克拉姆(首領)之後",
		["REDEEM_AQ_VETH"] = "兌換：溫瑟拉 @ 安其拉神廟\n在副本之內 預言者斯克拉姆(首領)之後",
		["REDEEM_AQ_KAND"] = "兌換：坎多斯塔茲 @ 安其拉神廟\n在副本之內 預言者斯克拉姆(首領)之後",
	};
	
	L.ALLIANCE_REDEEM_LOOKUP = {
		["REDEEM_TOC"] = "兌換：驍士菈若蒂雅 @ 寒冰皇冠\n地點在銀白聯賽場地 (75.4, 21.6)", -- ToC Trophy Vendor T9 (Alliance)

		["REDEEM_TIER_11"] = "兌換：托倫‧藍道 @ 暴風城\n地點在舊城區指揮所 (79.0, 70.0)", -- T11 (Alliance)
		["REDEEM_TIER_12"] = "兌換：瑪加薩‧銀舌 @ 暴風城\n地點在舊城區指揮所 (79.0, 69.6)", -- Firelands T12 (Alliance)
		["REDEEM_TIER_13"] = "兌換：法德倫‧錢谷 @ 暴風城\n地點在舊城區指揮所 (79.0, 69.6)", -- Dragon Soul T13 (Alliance)

		["REDEEM_TIER_16_LFR"] = "兌換：薇碧茲‧歡哨 @ 潘達利亞\n地點在七星廟 (41.6, 42.6)", -- Siege of Orgrimmar T16 [Raid Finder] (Alliance)
		["REDEEM_TIER_16_NORMAL"] = "兌換：瑟雷特‧岩心 @ 潘達利亞\n地點在七星廟 (41.6, 42.6)", -- Siege of Origimmar T16 [Normal] (Alliance)
		["REDEEM_TIER_16_HEROIC"] = "兌換：克萊麗絲‧崔普曼 @ 潘達利亞\n地點在七星廟 (41.6, 42.6)", -- Siege of Origimmar T16 [Heroic] (Alliance)
		["REDEEM_TIER_16_MYTHIC"] = "兌換：洛瑞‧暖心@ 潘達利亞\n地點在七星廟 (41.6, 42.6)", -- Siege of Origimmar T16 [Mythic] (Alliance)

		["REDEEM_TIER_17"] = "兌換：瑪拉達爾主教 @ 德拉諾\n地點在塔拉多爾 (49.8, 48.6)", -- T17 Quest Hand-in (Alliance)
	};

	L.HORDE_REDEEM_LOOKUP = {
		["REDEEM_TOC"] = "兌換：驍士貝芮西雅 @ 寒冰皇冠\n地點在銀白聯賽場地 (75.4, 21.6)", -- ToC Trophy Vendor T9 (Horde)

		["REDEEM_TIER_11"] = "兌換：羅格克 @ 奧格瑪\n地點在葛羅瑪許堡 (48.2, 71.6)", -- T11 (Horde)
		["REDEEM_TIER_12"] = "兌換：岡拉 @ 奧格瑪\n地點在葛羅瑪許堡 (48.4, 71.6)", -- Firelands T12 (Horde)
		["REDEEM_TIER_13"] = "兌換：傑墨斯瓦茲 @ 奧格瑪\n地點在葛羅瑪許堡 (48.6, 71.4)", -- Dragon Soul T13 (Horde)

		["REDEEM_TIER_16_LFR"] = "兌換：布雷里茲‧輝刃 @ 潘達利亞\n地點在雙月廟 (43.6, 74.8)", -- Siege of Orgrimmar T16 [Raid Finder] (Horde)
		["REDEEM_TIER_16_NORMAL"] = "兌換：納蒂娜‧星寶 @ 潘達利亞\n地點在雙月廟 (43.6, 74.8)", -- Siege of Orgrimmar T16 [Normal] (Horde)
		["REDEEM_TIER_16_HEROIC"] = "兌換：齊安格努 @ 潘達利亞\n地點在雙月廟 (43.6, 74.8)", -- Siege of Orgrimmar T16 [Heroic] (Horde)
		["REDEEM_TIER_16_MYTHIC"] = "兌換：圖阿赫‧斷徑者 @ 潘達利亞\n地點在雙月廟 (43.6, 74.8)", -- Siege of Orgrimmar T16 [Mythic] (Horde)

		["REDEEM_TIER_17"] = "兌換：莉雅德倫女士 @ 德拉諾\n地點在塔拉多爾 (50.0. 48.6)", -- T17 Quest Hand-in (Alliance)
	};

	L.CLASS_REDEEM_LOOKUP = {
		["CLASS_WARRIOR"] = {
			["REDEEM_TIER_10"] = "兌換：何瑞斯‧杭德蘭 @ 達拉然 (北裂境)\n地點在萬物皆可坦 (47.0, 28.4)", -- 寒冰皇冠 Citadel T10 (Warriors)
			["REDEEM_TIER_7"] = "兌換：格力瑟達‧杭德蘭 @ 達拉然 (北裂境)\n地點在萬物皆可坦 (47.0, 28.4)", -- 那克薩馬斯 T7 (Warriors)
			["REDEEM_TIER_8"] = "兌換：杜賓‧克雷 @ 達拉然 (北裂境)\n地點在萬物皆可坦 (47.0, 28.4)", -- 奧度亞 T8 (Warriors)
		},

		["CLASS_PALADIN"] = {
			["REDEEM_TIER_10"] = "兌換：何瑞斯‧杭德蘭 @ 達拉然 (北裂境)\n地點在萬物皆可坦 (47.0, 28.4)", -- 寒冰皇冠 Citadel T10 (Paladins)
			["REDEEM_TIER_7"] = "兌換：格力瑟達‧杭德蘭 @ 達拉然 (北裂境)\n地點在萬物皆可坦 (47.0, 28.4)", -- 那克薩馬斯 T7 (Paladins)
			["REDEEM_TIER_8"] = "兌換：杜賓‧克雷 @ 達拉然 (北裂境)\n地點在萬物皆可坦 (47.0, 28.4)", -- 奧度亞 T8 (Paladins)
		},

		["CLASS_DEATHKNIGHT"] = {
			["REDEEM_TIER_10"] = "兌換：何瑞斯‧杭德蘭 @ 達拉然 (北裂境)\n地點在萬物皆可坦 (47.0, 28.4)", -- 寒冰皇冠 Citadel T10 (Death Knights)
			["REDEEM_TIER_7"] = "兌換：格力瑟達‧杭德蘭 @ 達拉然 (北裂境)\n地點在萬物皆可坦 (47.0, 28.4)", -- 那克薩馬斯 T7 (Death Knights)
			["REDEEM_TIER_8"] = "兌換：杜賓‧克雷 @ 達拉然 (北裂境)\n地點在萬物皆可坦 (47.0, 28.4)", -- 奧度亞 T8 (Death Knights)
		},

		["CLASS_MAGE"] = {
			["REDEEM_TIER_10"] = "兌換：魯本‧勞倫 @ 達拉然 (北裂境)\n地點在命運織坊 (43.4, 50.2)", -- 寒冰皇冠 Citadel T10 (Mages)
			["REDEEM_TIER_7"] = "兌換：佩德希 @ 達拉然 (北裂境)\n地點在命運織坊 (43.4, 50.2)", -- 那克薩馬斯 T7 (Mages)
			["REDEEM_TIER_8"] = "兌換：佩德希 @ 達拉然 (北裂境)\n地點在命運織坊 (43.4, 50.2)", -- 奧度亞 T8 (Mages)
		},

		["CLASS_WARLOCK"] = {
			["REDEEM_TIER_10"] = "兌換：魯本‧勞倫 @ 達拉然 (北裂境)\n地點在命運織坊 (43.4, 50.2)", -- 寒冰皇冠 Citadel T10 (Warlocks)
			["REDEEM_TIER_7"] = "兌換：佩德希 @ 達拉然 (北裂境)\n地點在命運織坊 (43.4, 50.2)", -- 那克薩馬斯 T7 (Warlocks)
			["REDEEM_TIER_8"] = "兌換：佩德希 @ 達拉然 (北裂境)\n地點在命運織坊 (43.4, 50.2)", -- 奧度亞 T8 (Warlocks)
		},

		["CLASS_PRIEST"] = {
			["REDEEM_TIER_10"] = "兌換：魯本‧勞倫 @ 達拉然 (北裂境)\n地點在命運織坊 (43.4, 50.2)", -- 寒冰皇冠 Citadel T10 (Priests)
			["REDEEM_TIER_7"] = "兌換：佩德希 @ 達拉然 (北裂境)\n地點在命運織坊 (43.4, 50.2)", -- 那克薩馬斯 T7 (Priests)
			["REDEEM_TIER_8"] = "兌換：佩德希 @ 達拉然 (北裂境)\n地點在命運織坊 (43.4, 50.2)", -- 奧度亞 T8 (Priests)
		},

		["CLASS_DRUID"] = {
			["REDEEM_TIER_10"] = "兌換：勞佛‧郎格姆 @ 達拉然 (北裂境)\n地點在郎格姆的皮甲與鍊甲 (51.6, 71.6)", -- 寒冰皇冠 Citadel T10 (Druids)
			["REDEEM_TIER_7"] = "兌換：維勒莉‧郎格姆 @ 達拉然 (北裂境)\n地點在郎格姆的皮甲與鍊甲 (51.6, 71.6)", -- 那克薩馬斯 T7 (Druids)
			["REDEEM_TIER_8"] = "兌換：維勒莉‧郎格姆 @ 達拉然 (北裂境)\n地點在郎格姆的皮甲與鍊甲 (51.6, 71.6)", -- 奧度亞 T8 (Druids)
		},

		["CLASS_ROGUE"] = {
			["REDEEM_TIER_10"] = "兌換：勞佛‧郎格姆 @ 達拉然 (北裂境)\n地點在郎格姆的皮甲與鍊甲 (51.6, 71.6)", -- 寒冰皇冠 Citadel T10 (Rogues)
			["REDEEM_TIER_7"] = "兌換：維勒莉‧郎格姆 @ 達拉然 (北裂境)\n地點在郎格姆的皮甲與鍊甲 (51.6, 71.6)", -- 那克薩馬斯 T7 (Rogues)
			["REDEEM_TIER_8"] = "兌換：維勒莉‧郎格姆 @ 達拉然 (北裂境)\n地點在郎格姆的皮甲與鍊甲 (51.6, 71.6)", -- 奧度亞 T8 (Rogues)
		},

		["CLASS_HUNTER"] = {
			["REDEEM_TIER_10"] = "兌換：瑪蒂妲‧明鏈 @ 達拉然 (北裂境)\n地點在郎格姆的皮甲與鍊甲 (51.6, 71.6)", -- 寒冰皇冠 Citadel T10 (Hunters)
			["REDEEM_TIER_7"] = "兌換：布拉岡‧明鏈 @ 達拉然 (北裂境)\n地點在郎格姆的皮甲與鍊甲 (51.6, 71.6)", -- 那克薩馬斯 T7 (Hunters)
			["REDEEM_TIER_8"] = "兌換：布拉岡‧明鏈 @ 達拉然 (北裂境)\n地點在郎格姆的皮甲與鍊甲 (51.6, 71.6)", -- 奧度亞 T8 (Hunters)
		},

		["CLASS_SHAMAN"] = {
			["REDEEM_TIER_10"] = "兌換：瑪蒂妲‧明鏈 @ 達拉然 (北裂境)\n地點在郎格姆的皮甲與鍊甲 (51.6, 71.6)", -- 寒冰皇冠 Citadel T10 (Shamans)
			["REDEEM_TIER_7"] = "兌換：布拉岡‧明鏈 @ 達拉然 (北裂境)\n地點在郎格姆的皮甲與鍊甲 (51.6, 71.6)", -- 那克薩馬斯 T7 (Shamans)
			["REDEEM_TIER_8"] = "兌換：布拉岡‧明鏈 @ 達拉然 (北裂境)\n地點在郎格姆的皮甲與鍊甲 (51.6, 71.6)", -- 奧度亞 T8 (Shamans)
		}
	};
end