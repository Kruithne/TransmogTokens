TransmogTokens = {
	["REDEEM_DATA"] = {},
	["BONUS_LOOKUP"] = {},
	["SPEC_CLASS_TOKENS"] = {},
	["NOTES"] = {},
	["AQ_LOOKUP"] = {},
	["AQ_ENTRIES"] = {},
	["SORTED_DATA"] = {},
	["INVENTORY_SLOTS"] = {},
	["SET_DATA"] = {},
	["L"] = setmetatable({}, { __index = function(t, k)
		local v = tostring(k)
		rawset(t, k, v)
		return v
	end })
};

local t = TransmogTokens;
local L = t.L;

t.tooltipCache = {
	["active"] = false,
	["lastTooltip"] = nil,
	["lastItemID"] = 0,	
	["lastItemBonus"] = 0,
	["textLineID"] = 0,
	["pendingItems"] = {},
	["infoItems"] = {},
};

local BLUE = "|cff15abff";
local ORANGE = "|cffff9333";
local YELLOW = "|cfff0e442";
local GRAY = "|cff888888";
local GREEN = "|cff20ff20";
local RED = "|cffff2020";

local model = CreateFrame('DressUpModel');
local eventFrame = CreateFrame("FRAME");

eventFrame.DoTooltipUpdate = false;
eventFrame.UpdateTime = 0;

eventFrame:RegisterEvent("ADDON_LOADED");
eventFrame:RegisterEvent("GET_ITEM_INFO_RECEIVED");

eventFrame:SetScript("OnEvent", function(self, event, ...)
	if event == "ADDON_LOADED" then
		local addonName = ...;
		if addonName == "TransmogTokens" then
			local _, _, classIndex = UnitClass("player");

			t.sortData(t.ITEM_DATA, classIndex);
			t.ITEM_DATA = nil;

			-- Load class-specific redeem data.
			local classRedeemData = t.CLASS_REDEEM_LOOKUP[classIndex];
			if classRedeemData ~= nil then
				t.sortRedeemData(classRedeemData);
			end

			-- Load faction-specific redeem data.
			local faction = UnitFactionGroup("player");

			if faction == "Alliance" then
				t.sortData(t.ALLIANCE_ONLY_DATA, classIndex);
				t.sortRedeemData(t.ALLIANCE_REDEEM_LOOKUP);
			elseif faction == "Horde" then
				t.sortData(t.HORDE_ONLY_DATA, classIndex);
				t.sortRedeemData(t.HORDE_REDEEM_LOOKUP);
			end

			t.ALLIANCE_ONLY_DATA = nil;
			t.HORDE_ONLY_DATA = nil;

			t.ALLIANCE_REDEEM_LOOKUP = nil;
			t.HORDE_REDEEM_LOOKUP = nil;

			-- AQ Lookup
			local lookup = t.AQ_DATA[classIndex];
			if lookup then
				for itemID, itemData in pairs(lookup) do
					-- Copy the data for use when rendering tool-tips.
					t.AQ_ENTRIES[itemID] = itemData;
					--t.REDEEM_LOOKUP[itemID] = itemData["REDEEM"];

					-- Loop items needed for the item, create a look-up entry.
					for subItemID, subItemCount in pairs(itemData["ITEMS"]) do
						if t.AQ_LOOKUP[subItemID] then
							table.insert(t.AQ_LOOKUP[subItemID], itemID);
						else
							t.AQ_LOOKUP[subItemID] = {itemID};
						end
					end
				end
			end
			t.AQ_DATA = nil;
		end
	elseif event == "GET_ITEM_INFO_RECEIVED" then
		if t.tooltipCache["active"] then
			eventFrame.DoTooltipUpdate = true;
		end
	end
end);

eventFrame:SetScript("OnUpdate", function(self, elapsed)
	if eventFrame.DoTooltipUpdate then
		if eventFrame.UpdateTime >= 0.5 then
			local itemID = t.tooltipCache["lastItemID"];
			local itemBonus = t.tooltipCache["lastItemBonus"];
			local tooltip = t.tooltipCache["lastTooltip"];

			if tooltip ~= nil and tooltip:IsShown() then
				local relatedItems = t.SORTED_DATA[itemID] or t.AQ_LOOKUP[itemID];
				local tooltipName = tooltip:GetName() .. "TextLeft";
				local line = _G[tooltipName .. t.tooltipCache["textLineID"]];

				local neededText, neededReturn = t.calculateNeededText(relatedItems, itemID, itemBonus);
				line:SetText(neededText);

				for i = 1, #neededReturn do
					local neededID = neededReturn[i];
					if not t.tooltipCache["infoItems"][neededID] then
						t.addItemInfo(tooltip, neededID);
					end
				end

				-- AQ stuff.
				local pendingItems = t.tooltipCache["pendingItems"];
				for pendingItemID, lineIndex in pairs(pendingItems) do
					local itemName = GetItemInfo(pendingItemID);
					if itemName ~= nil then
						for i = 1, #lineIndex do
							line = _G[tooltipName .. lineIndex[i]];
							if line ~= nil then
								line:SetText(string.gsub(line:GetText(), "{" .. pendingItemID .. "}", itemName));
							end
						end
						table.remove(pendingItems, pendingItemID);
					end
				end

				tooltip:Show();
			end

			eventFrame.DoTooltipUpdate = false;
			eventFrame.UpdateTime = 0;
		else
			eventFrame.UpdateTime = eventFrame.UpdateTime + elapsed;
		end
	end
end);

SLASH_TIER1, SLASH_TIER2 = "/tier", "/transmogtokens";
function SlashCmdList.TIER(msg, editbox)
	TransmogTokens.showTierWindow();
end

TransmogTokens.showTierWindow = function()
	if not t.frame then
		TransmogTokens.createTierWindow();
	end

	t.frame:Show();
end

TransmogTokens.createTierWindow = function()
	local frame = CreateFrame("FRAME", "TransmogTokensFrame", UIParent);
	frame:SetPoint("CENTER", 0, 0);

	local backdrop = {
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
		edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
		tile = true,
		tileSize = 32,
		edgeSize = 32,
		insets = {
			left = 11,
			right = 12,
			top = 12,
			bottom = 11
		}
	};

	frame:SetWidth(400);
	frame:SetHeight(600);
	frame:SetBackdrop(backdrop);

	-- Close Button
	local close = CreateFrame("BUTTON", "TransmogTokensFrameCloseButton", frame, "UIPanelCloseButton");
	close:SetPoint("TOPRIGHT", -6, -6);
	close:SetScript("OnClick", function(self)
		self:GetParent():Hide();
	end);

	-- Drop down
	local drop = CreateFrame("BUTTON", "TransmogTokensFrameDropDown", frame, "UIDropDownMenuTemplate");
	drop:ClearAllPoints();
	drop:SetPoint("TOPLEFT", 5, -20);
	drop:Show();

	local function OnClick(self)
		UIDropDownMenu_SetSelectedID(TransmogTokensFrameDropDown, self:GetID());
		TransmogTokens.updateTierFrame(self:GetID());
	end

	local function initialize(self, level)
		local info = UIDropDownMenu_CreateInfo();
		for k, v in pairs(t.SET_INDEX) do
			info = UIDropDownMenu_CreateInfo();
			info.text = v;
			info.value = v;
			info.func = OnClick;
			UIDropDownMenu_AddButton(info, level);
		end
	end

	UIDropDownMenu_Initialize(TransmogTokensFrameDropDown, initialize);
	UIDropDownMenu_SetWidth(TransmogTokensFrameDropDown, 150);
	UIDropDownMenu_SetButtonWidth(TransmogTokensFrameDropDown, 174);
	UIDropDownMenu_SetSelectedID(TransmogTokensFrameDropDown, 1);
	UIDropDownMenu_JustifyText(TransmogTokensFrameDropDown, "LEFT");

	TransmogTokens.updateTierFrame(1);

	t.frame = frame;
end

TransmogTokens.updateTierFrame = function(selectedID)
	local frame = TransmogTokensFrame;

	-- Hide existing icon frames.
	local frameIndex = 1;
	while true do
		local icon = _G[frame:GetName() .. "Icon" .. frameIndex];
		if icon then
			icon:Hide();
			frameIndex = frameIndex + 1;
		else
			break;
		end
	end

	local set = t.SET_DATA[selectedID];

	-- Prevent iteration over a nil set.
	if set == nil then return; end

	frameIndex = 1;
	for tokenID, obtainString in pairs(set) do
		local iconName = frame:GetName() .. "Icon" .. frameIndex;
		local icon = _G[iconName];

		local itemName, itemHyperLink, itemRarity, _, _, _, _, _, _, itemTexture = GetItemInfo(tokenID);

		if not icon then
			icon = CreateFrame("FRAME", iconName, frame);
			icon:SetHeight(32);
			icon:SetWidth(32);

			local tex = icon:CreateTexture(nil, "BACKGROUND");
			tex:SetAllPoints(icon);
			icon.tex = tex;

			local tick = icon:CreateTexture(nil, "LOW");
			tick:SetAllPoints(icon);
			icon.tick = tick;

			local text = icon:CreateFontString(nil, "ARTWORK", "GameFontHighlight");
			text:SetHeight(32);
			text:SetWidth(400);
			text:SetJustifyH("LEFT");
			text:SetPoint("TOPLEFT", icon, "TOPRIGHT", 10, 0);
			icon.text = text;
		end

		icon.tick:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-Waiting");
		icon.tick:Show();

		local interest = {};
		local itemData = t.SORTED_DATA[tokenID];

		local hasInterest = false;

		if itemName == nil then
			interest[tokenID] = false;
			hasInterest = true;
		else
			interest[tokenID] = true;
		end

		for itemDataK, itemDataV in pairs(itemData) do
			local itemName = GetItemInfo(itemDataV);
			if itemName == nil then
				hasInterest = true;
				interest[itemDataV] = false;
			else
				interest[itemDataV] = true;
			end
		end

		icon.interest = nil;

		if hasInterest then
			icon.interest = interest;
			itemTexture = "Interface\\Icons\\Inv_misc_questionmark";
			itemName = ORANGE .. L["Loading item information..."];

			icon.pendingItemID = tokenID;
			icon.obtainString = obtainString;
			icon.updatedInfo = false;
			icon:RegisterEvent("GET_ITEM_INFO_RECEIVED");
			icon:SetScript("OnEvent", function(self, event, ...)
				if event == "GET_ITEM_INFO_RECEIVED" then
					local itemID = ...;

					if self.interest[itemID] ~= nil then
						if itemID == self.pendingItemID then
							local updatedName, _, _, _, _, _, _, _, _, updatedTexture = GetItemInfo(itemID);
							self.tex:SetTexture(updatedTexture);
							self.text:SetText(BLUE .. updatedName .. "|r\n" .. self.obtainString);

							self.updatedInfo = true;
						end

						self.interest[itemID] = true;
						local interestDone = true;

						for interestK, interestV in pairs(self.interest) do
							if interestV ~= true then
								interestDone = false;
								break;
							end
						end

						if interestDone then
							self.updateTimer = 0;
							self:SetScript("OnUpdate", function(self, elapsed)
								if self.updateTimer >= 1 then
									self:SetScript("OnUpdate", nil);

								if not self.updatedInfo then
									self.updatedInfo = true;

									local updatedName, _, _, _, _, _, _, _, _, updatedTexture = GetItemInfo(self.pendingItemID);
									self.tex:SetTexture(updatedTexture);
									self.text:SetText(BLUE .. updatedName .. "|r\n" .. self.obtainString);

									self.updatedInfo = true;
								end

								local needed = t.calculateNeeded(t.SORTED_DATA[self.pendingItemID], 0);

								if #needed == 0 then
									self.tick:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-Ready");
									self.tick:Show();
								else
									self.tick:Hide();
								end

								self.interest = nil;
								self:SetScript("OnEvent", nil);
								self:UnregisterEvent("GET_ITEM_INFO_RECEIVED");
								else
									self.updateTimer = self.updateTimer + elapsed;
								end
							end);
						end
					end
				end
			end);
		else
			icon:SetScript("OnEvent", nil);
			icon:UnregisterEvent("GET_ITEM_INFO_RECEIVED");

			local needed = t.calculateNeeded(t.SORTED_DATA[tokenID], 0);

			if #needed == 0 then
				icon.tick:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-Ready");
				icon.tick:Show();
			else
				icon.tick:Hide();
			end
		end

		icon.tex:SetTexture(itemTexture);
		icon.text:SetText(BLUE .. itemName .. "|r\n" .. obtainString);
		icon:SetPoint("TOPLEFT", 30, -25 - (frameIndex * 38));
		icon:Show();

		frameIndex = frameIndex + 1;
	end
end

TransmogTokens.pushDataNode = function(target, targetKey, data, dataKey)
	local node = data[dataKey];
	if node then
		target[targetKey] = node;
	end
end

TransmogTokens.sortData = function(pool, classIndex)
	local itemType = t.CLASS_ITEM_TYPE[classIndex];
	for tokenID, data in pairs(pool) do
		t.pushDataNode(t.SPEC_CLASS_TOKENS, tokenID, data, "DEPENDANT_WARNING");
		t.pushDataNode(t.NOTES, tokenID, data, "NOTE");
		t.pushDataNode(t.REDEEM_DATA, tokenID, data, "REDEEM");
		t.pushDataNode(t.BONUS_LOOKUP, tokenID, data, "BONUS");
		t.pushDataNode(t.SORTED_DATA, tokenID, data, classIndex);
		t.pushDataNode(t.SORTED_DATA, tokenID, data, itemType);

		local dupBonus = data["DUPLICATE_BONUS"];
		if dupBonus then
			for bonusToken, bonusID in pairs(dupBonus) do
				-- Share data with this token.
				t.SORTED_DATA[bonusToken] = t.SORTED_DATA[tokenID];

				-- Unlike linking, we need to enforce a static bonus.
				t.BONUS_LOOKUP[bonusToken] = bonusID;
			end
		end

		if data["OBTAIN"] and data[classIndex] then
			local node = data["OBTAIN"];
			local setIndex = node[1];
			local obtainIndex = node[2];

			local set = t.SET_DATA[setIndex];
			if not set then
				set = {};
				t.SET_DATA[setIndex] = set;
			end

			set[tokenID] = obtainIndex;
		end

		if data["LINK"] then
			for linkIndex, linkValue in pairs(data["LINK"]) do
				local node = t.SORTED_DATA[linkValue];
				if node then
					if not t.SORTED_DATA[tokenID] then
						t.SORTED_DATA[tokenID] = node;
					else
						local sorted = t.SORTED_DATA[tokenID];

						if type(sorted) == "number" then
							sorted = {sorted};
							t.SORTED_DATA[tokenID] = sorted;
						end

						local pull = node;
						if type(pull) == "number" then
							-- Linked data is just a single number, insert.
							table.insert(sorted, pull);
						else
							-- Linked data is a table, loop.
							for nodeKey, nodeValue in pairs(pull) do
								table.insert(sorted, nodeValue);
							end
						end
					end
				end
			end
		end
	end
end

TransmogTokens.sortRedeemData = function(pool)
	for index, str in pairs(pool) do
		t.REDEEM_LOOKUP[index] = str;
	end
end

TransmogTokens.addDoubleTooltipLine = function(tooltip, left, right)
	tooltip:AddDoubleLine(left, right);
	tooltip:Show();
end

TransmogTokens.addTooltipLine = function(tooltip, text)
	tooltip:AddLine(text);
	tooltip:Show();
end

TransmogTokens.getItemID = function(itemLink)
	return tonumber(itemLink:match("item:(%d+)"));
end

TransmogTokens.getItemBonus = function(itemLink)
	return tonumber(itemLink:match("item:%d+:[%d]*:[%d]*:[%d]*:[%d]*:[%d]*:[%d]*:[%d]*:[%d]*:[%d]*:[%d]*:[%d]*:[%d]*:(%d+)") or 0);
end

TransmogTokens.getSource = function(itemLink)
	if itemLink == nil then
		return;
	end

    local source = select(2, C_TransmogCollection.GetItemInfo(itemLink))
    if source then
        return source
    end

    local itemID, _, _, slotName = GetItemInfoInstant(itemLink);
    local slots = t.INVENTORY_SLOTS[slotName];

    if not slots or not IsDressableItem(itemLink) then
    	return;
    end

    model:SetUnit("player");
    model:Undress();

	for i, slot in pairs(slots) do
    	model:TryOn(itemLink, slot);
		local info = model:GetItemTransmogInfo(slot);

		-- The appearanceID property is misnamed and is actually the sourceID
		if info and info.appearanceID ~= nil and info.appearanceID ~= 0 then
			return info.appearanceID;
		end
	end
end

TransmogTokens.getAppearanceID = function(itemLink)
	local source = t.getSource(itemLink);
    if source then
        local appearanceID = select(2, C_TransmogCollection.GetAppearanceSourceInfo(source));
        return appearanceID;
    end
end

TransmogTokens.hasApperance = function(appearanceID)
    local sources = C_TransmogCollection.GetAppearanceSources(appearanceID);

    if sources then
        for i, source in pairs(sources) do
            if source.isCollected then
                return true;
            end
        end
    end

    return false;
end

TransmogTokens.calculateNeeded = function(relatedItems, bonus)
	local needed = {};
	local neededReturn = {};

	if relatedItems == nil then
		return needed;
	end

	if type(relatedItems) == "table" then
		for key, value in pairs(relatedItems) do
			t.calculateNeededSingle(value, bonus, needed, neededReturn);
		end
	else
		t.calculateNeededSingle(relatedItems, bonus, needed, neededReturn);
	end

	return neededReturn;
end

TransmogTokens.calculateNeededSingle = function(itemID, bonus, stash, returnStash)
	local itemName, link = GetItemInfo("item:" .. itemID .. ":0:0:0:0:0:0:0:0:0:0:0:1:" .. bonus);

	if link ~= nil then
		local appearanceID = t.getAppearanceID(link);

		if appearanceID ~= nil and not t.hasApperance(appearanceID) then
			if not stash[appearanceID] then
				stash[appearanceID] = true;
				table.insert(returnStash, itemID);
			end
		end
	end
end

TransmogTokens.calculateNeededText = function(relatedItems, itemID, bonus)
	local needed = TransmogTokens.calculateNeeded(relatedItems, bonus);
	local message = "";

	if #needed > 0 then
		message = message .. ORANGE;

		if #needed > 1 then
			message = message .. string.format (L["Can be exchanged for %d appearances you need."], #needed);
		else
			message = message .. L["Can be exchanged for 1 appearance you need."];
		end


		if t.SPEC_CLASS_TOKENS[itemID] then
			message = message .. "\n" .. L["Appearances from this are class and/or spec dependant."];
		end
	else
		message = GRAY .. L["Can be exchanged for appearances you don't need."];
	end

	return message, needed;
end

TransmogTokens.processTooltip = function(tooltip, itemLink)
	local itemID = t.getItemID(itemLink);
	local relatedItems = t.SORTED_DATA[itemID] or t.AQ_LOOKUP[itemID];

	wipe(t.tooltipCache["pendingItems"]);
	wipe(t.tooltipCache["infoItems"]);

	t.tooltipCache["active"] = false;

	if relatedItems then
		local bonusLookup = t.BONUS_LOOKUP[itemID];
		local bonus = 0;

		if bonusLookup then
			if type(bonusLookup) == "number" then
				bonus = bonusLookup;
			else
				bonus = t.getItemBonus(itemLink);
				if bonus > 0 then
					bonus = t.BONUS_LOOKUP[itemID][bonus] or 0;
				end
			end
		end

		local neededText, neededResult = t.calculateNeededText(relatedItems, itemID, bonus);
		t.addTooltipLine(tooltip, neededText);

		t.tooltipCache["active"] = true;
		t.tooltipCache["lastTooltip"] = tooltip;
		t.tooltipCache["lastItemID"] = itemID;
		t.tooltipCache["lastItemBonus"] = bonus;
		t.tooltipCache["textLineID"] = tooltip:NumLines();

		local redeem = t.REDEEM_DATA[itemID];
		if redeem then
			t.addTooltipLine(tooltip, BLUE .. t.REDEEM_LOOKUP[redeem]);
		end

		local note = t.NOTES[itemID];
		if note then
			t.addTooltipLine(tooltip, GREEN .. note);
		end

		-- AQ Handling
		for i = 1, #neededResult do
			t.addItemInfo(tooltip, neededResult[i]);
		end
	end
end

TransmogTokens.addItemInfo = function(tooltip, itemID)
	local subItemNode = t.AQ_ENTRIES[itemID];
	local pendingItems = t.tooltipCache["pendingItems"];

	t.tooltipCache["infoItems"][itemID] = true;

	if subItemNode then
		local mainItemName = GetItemInfo(itemID);
		t.addTooltipLine(tooltip, BLUE .. mainItemName .. "\n");

		for componentID, componentAmount in pairs(subItemNode["ITEMS"]) do
			local itemName = GetItemInfo(componentID);

			if not itemName then
				itemName = "{" .. componentID .. "}";

				if not pendingItems[componentID] then
					pendingItems[componentID] = {};
				end

				table.insert(pendingItems[componentID], tooltip:NumLines() + 1);
			end

			local amountColour = RED;
			local itemCount = GetItemCount(componentID);

			if itemCount >= componentAmount then
				amountColour = GREEN;
			end

			t.addTooltipLine(tooltip, amountColour .. "   " .. itemName .. " x" .. componentAmount);
		end

		t.addTooltipLine(tooltip, "\n" .. BLUE .. t.REDEEM_LOOKUP[subItemNode["REDEEM"]]);
	end
end

local function hookToTooltip(self)
	local link = select(2, self:GetItem());
	if link then
		t.processTooltip(self, link);
	end
end

GameTooltip:HookScript("OnTooltipSetItem", hookToTooltip);
ItemRefTooltip:HookScript("OnTooltipSetItem", hookToTooltip);
ItemRefShoppingTooltip1:HookScript("OnTooltipSetItem", hookToTooltip);
ItemRefShoppingTooltip2:HookScript("OnTooltipSetItem", hookToTooltip);
ShoppingTooltip1:HookScript("OnTooltipSetItem", hookToTooltip);
ShoppingTooltip2:HookScript("OnTooltipSetItem", hookToTooltip);


local function onSetHyperlink(self, link)
	local type, id = string.match(link, "^(%a+):(%d+)");
	if not type or not id then return end

	if type == "item" then
		t.processTooltip(self, link);
	end
end

hooksecurefunc(GameTooltip, "SetHyperlink", onSetHyperlink);