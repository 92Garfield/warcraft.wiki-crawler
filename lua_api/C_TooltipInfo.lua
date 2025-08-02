-- C_TooltipInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_TooltipInfo
C_TooltipInfo = {}

---
---@param achievementID number 
---@return TooltipData data 
function C_TooltipInfo.GetAchievementByID(achievementID)
end

---
---@param actionID number 
---@return TooltipData data 
function C_TooltipInfo.GetAction(actionID)
end

---
---@return TooltipData data 
function C_TooltipInfo.GetArtifactItem()
end

---
---@param powerID number 
---@return TooltipData data 
function C_TooltipInfo.GetArtifactPowerByID(powerID)
end

---
---@param essenceID number 
---@param rank number ?
---@return TooltipData data 
function C_TooltipInfo.GetAzeriteEssence(essenceID, rank)
end

---
---@param slot Enum.AzeriteEssenceSlot 
---@return TooltipData data 
function C_TooltipInfo.GetAzeriteEssenceSlot(slot)
end

---
---@param itemID number 
---@param itemLevel number 
---@param powerID number 
---@param owningItemLink string ?
---@return TooltipData data 
function C_TooltipInfo.GetAzeritePower(itemID, itemLevel, powerID, owningItemLink)
end

---
---@param index number 
---@return TooltipData data 
function C_TooltipInfo.GetBackpackToken(index)
end

---
---@param bagIndex number 
---@param slotIndex number 
---@return TooltipData data 
function C_TooltipInfo.GetBagItem(bagIndex, slotIndex)
end

---
---@param bagIndex number 
---@param slotIndex number 
---@param equipSlotIndex number 
---@return TooltipData data 
function C_TooltipInfo.GetBagItemChild(bagIndex, slotIndex, equipSlotIndex)
end

---
---@param index number 
---@return TooltipData data 
function C_TooltipInfo.GetBuybackItem(index)
end

---
---@param petGUID string 
---@return TooltipData data 
function C_TooltipInfo.GetCompanionPet(petGUID)
end

---
---@param conduitID number 
---@param conduitRank number 
---@return TooltipData data 
function C_TooltipInfo.GetConduit(conduitID, conduitRank)
end

---
---@param currencyID number 
---@param amount number ?
---@return TooltipData data 
function C_TooltipInfo.GetCurrencyByID(currencyID, amount)
end

---
---@param tokenIndex number - Index as shown in the currency tab.
---@return TooltipData data 
function C_TooltipInfo.GetCurrencyToken(tokenIndex)
end

---
---@param conduitID number 
---@param rank number 
---@return TooltipData data 
function C_TooltipInfo.GetEnhancedConduit(conduitID, rank)
end

---
---@param setID number 
---@return TooltipData data 
function C_TooltipInfo.GetEquipmentSet(setID)
end

---
---@param index number 
---@param toDestroy boolean ?
---@return TooltipData data 
function C_TooltipInfo.GetExistingSocketGem(index, toDestroy)
end

---
---@param tab number 
---@param slot number 
---@return TooltipData data 
function C_TooltipInfo.GetGuildBankItem(tab, slot)
end

---
---@param itemID number 
---@return TooltipData data 
function C_TooltipInfo.GetHeirloomByItemID(itemID)
end

---Returns tooltip data for a given hyperlink.
---@param hyperlink string - Hyperlink : The hyperlink to query.
---@param optionalArg1 number ? - First optional argument for the given link. Refer to the Optional Arguments table below for details.
---@param optionalArg2 number ? - Second optional argument for the given link. Refer to the Optional Arguments table below for details.
---@param hideVendorPrice boolean ? - If true, omits vendor price information from the line text data.
---@return TooltipData data 
---@since Patch 10.0.2 (2022-11-15): Added.
function C_TooltipInfo.GetHyperlink(hyperlink, optionalArg1, optionalArg2, hideVendorPrice)
end

---
---@param messageIndex number 
---@param attachmentIndex number ?
---@return TooltipData data 
function C_TooltipInfo.GetInboxItem(messageIndex, attachmentIndex)
end

---
---@param index number 
---@return TooltipData data 
function C_TooltipInfo.GetInstanceLockEncountersComplete(index)
end

---
---@param unit string 
---@param slot number 
---@param hideUselessStats boolean ?
---@return TooltipData data 
function C_TooltipInfo.GetInventoryItem(unit, slot, hideUselessStats)
end

---
---@param itemID number 
---@return TooltipData data 
function C_TooltipInfo.GetInventoryItemByID(itemID)
end

---
---@param guid string 
---@return TooltipData data 
function C_TooltipInfo.GetItemByGUID(guid)
end

---
---@param itemID number 
---@param quality number ?
---@return TooltipData data 
function C_TooltipInfo.GetItemByID(itemID, quality)
end

---
---@param itemModifiedAppearanceID number 
---@return TooltipData data 
function C_TooltipInfo.GetItemByItemModifiedAppearanceID(itemModifiedAppearanceID)
end

---
---@return TooltipData data 
function C_TooltipInfo.GetItemInteractionItem()
end

---
---@param itemID number 
---@param itemLevel number 
---@param itemSuffix number 
---@param requiredLevel number ?
---@return TooltipData data 
function C_TooltipInfo.GetItemKey(itemID, itemLevel, itemSuffix, requiredLevel)
end

---
---@param dungeonID number 
---@param lootIndex number 
---@return TooltipData data 
function C_TooltipInfo.GetLFGDungeonReward(dungeonID, lootIndex)
end

---
---@param dungeonID number 
---@param shortageSeverity number 
---@param lootIndex number 
---@return TooltipData data 
function C_TooltipInfo.GetLFGDungeonShortageReward(dungeonID, shortageSeverity, lootIndex)
end

---
---@param slot number 
---@return TooltipData data 
function C_TooltipInfo.GetLootCurrency(slot)
end

---
---@param slot number 
---@return TooltipData data 
function C_TooltipInfo.GetLootItem(slot)
end

---
---@param id number 
---@return TooltipData data 
function C_TooltipInfo.GetLootRollItem(id)
end

---
---@param slot number 
---@param costIndex number 
---@return TooltipData data 
function C_TooltipInfo.GetMerchantCostItem(slot, costIndex)
end

---
---@param slot number 
---@return TooltipData data 
function C_TooltipInfo.GetMerchantItem(slot)
end

---
---@return TooltipData data 
function C_TooltipInfo.GetMinimapMouseover()
end

---
---@param spellID number 
---@param checkIndoors boolean ?
---@return TooltipData data 
function C_TooltipInfo.GetMountBySpellID(spellID, checkIndoors)
end

---
---@param itemID number 
---@return TooltipData data 
function C_TooltipInfo.GetOwnedItemByID(itemID)
end

---
---@param slot number 
---@return TooltipData data 
function C_TooltipInfo.GetPetAction(slot)
end

---
---@param slot number 
---@return TooltipData data 
function C_TooltipInfo.GetPossession(slot)
end

---
---@param isSpecial boolean ?
---@return TooltipData data 
function C_TooltipInfo.GetPvpBrawl(isSpecial)
end

---
---@param talentID number 
---@param isInspect boolean ?
---@param groupIndex number ?
---@param talentIndex number ?
---@return TooltipData data 
function C_TooltipInfo.GetPvpTalent(talentID, isInspect, groupIndex, talentIndex)
end

---
---@param type string 
---@param currencyIndex number 
---@return TooltipData data 
function C_TooltipInfo.GetQuestCurrency(type, currencyIndex)
end

---
---@param type string 
---@param itemIndex number 
---@param allowCollectionText boolean ?
---@return TooltipData data 
function C_TooltipInfo.GetQuestItem(type, itemIndex, allowCollectionText)
end

---
---@param type string 
---@param currencyIndex number 
---@param questID number ?
---@return TooltipData data 
function C_TooltipInfo.GetQuestLogCurrency(type, currencyIndex, questID)
end

---
---@param type string 
---@param itemIndex number 
---@param questID number ?
---@param allowCollectionText boolean ?
---@return TooltipData data 
function C_TooltipInfo.GetQuestLogItem(type, itemIndex, questID, allowCollectionText)
end

---
---@param questIndex number 
---@return TooltipData data 
function C_TooltipInfo.GetQuestLogSpecialItem(questIndex)
end

---
---@param questID number 
---@param omitTitle boolean ?
---@param ignoreActivePlayer boolean ?
---@return TooltipData data 
function C_TooltipInfo.GetQuestPartyProgress(questID, omitTitle, ignoreActivePlayer)
end

---
---@param recipeID number 
---@param rank number 
---@return TooltipData data 
function C_TooltipInfo.GetRecipeRankInfo(recipeID, rank)
end

---
---@param recipeSpellID number 
---@param dataSlotIndex number 
---@return TooltipData data 
function C_TooltipInfo.GetRecipeReagentItem(recipeSpellID, dataSlotIndex)
end

---
---@param recipeID number 
---@param craftingReagents CraftingReagentInfo []?
---@return TooltipData data 
function C_TooltipInfo.GetRecipeResultItem(recipeID, craftingReagents)
end

---
---@param recipeID number 
---@param craftingReagents CraftingReagentInfo []?
---@return TooltipData data 
function C_TooltipInfo.GetRecipeResultItemForOrder(recipeID, craftingReagents)
end

---
---@param itemGUID string 
---@param itemLevel number 
---@param powerID number ?
---@param modifiers number []?
---@return TooltipData data 
function C_TooltipInfo.GetRuneforgeResultItem(itemGUID, itemLevel, powerID, modifiers)
end

---
---@param attachmentIndex number ?
---@return TooltipData data 
function C_TooltipInfo.GetSendMailItem(attachmentIndex)
end

---
---@param slot number 
---@return TooltipData data 
function C_TooltipInfo.GetShapeshift(slot)
end

---
---@return TooltipData data 
function C_TooltipInfo.GetSlottedKeystone()
end

---
---@param index number 
---@return TooltipData data 
function C_TooltipInfo.GetSocketGem(index)
end

---
---@return TooltipData data 
function C_TooltipInfo.GetSocketedItem()
end

---
---@param slotIndex number 
---@return TooltipData data 
function C_TooltipInfo.GetSocketedRelic(slotIndex)
end

---
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return TooltipData data 
function C_TooltipInfo.GetSpellBookItem(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---
---@param spellID number 
---@param isPet boolean ?
---@param showSubtext boolean ?
---@param dontOverride boolean ?
---@param difficultyID number ?
---@param isLink boolean ?
---@return TooltipData data 
function C_TooltipInfo.GetSpellByID(spellID, isPet, showSubtext, dontOverride, difficultyID, isLink)
end

---
---@param talentID number 
---@param isInspect boolean ?
---@param groupIndex number ?
---@return TooltipData data 
function C_TooltipInfo.GetTalent(talentID, isInspect, groupIndex)
end

---
---@param slot number 
---@return TooltipData data 
function C_TooltipInfo.GetTotem(slot)
end

---
---@param itemID number 
---@return TooltipData data 
function C_TooltipInfo.GetToyByItemID(itemID)
end

---
---@param slot number 
---@return TooltipData data 
function C_TooltipInfo.GetTradePlayerItem(slot)
end

---
---@param slot number 
---@return TooltipData data 
function C_TooltipInfo.GetTradeTargetItem(slot)
end

---
---@param serviceIndex number 
---@return TooltipData data 
function C_TooltipInfo.GetTrainerService(serviceIndex)
end

---
---@param entryID number 
---@param rank number ?
---@return TooltipData data 
function C_TooltipInfo.GetTraitEntry(entryID, rank)
end

---
---@param transmogLocation TransmogLocationMixin 🔗
---@return TooltipData data 
function C_TooltipInfo.GetTransmogrifyItem(transmogLocation)
end

---
---@param unit string 
---@param hideStatus boolean ?
---@return TooltipData data 
function C_TooltipInfo.GetUnit(unit, hideStatus)
end

---
---@param unitToken string 
---@param index number 
---@param filter string ?
---@return TooltipData data 
function C_TooltipInfo.GetUnitAura(unitToken, index, filter)
end

---
---@param unitToken string 
---@param index number 
---@param filter string ?
---@return TooltipData data 
function C_TooltipInfo.GetUnitBuff(unitToken, index, filter)
end

---
---@param unitTokenString string 
---@param auraInstanceID number 
---@param filter string ?
---@return TooltipData data 
function C_TooltipInfo.GetUnitBuffByAuraInstanceID(unitTokenString, auraInstanceID, filter)
end

---
---@param unitToken string 
---@param index number 
---@param filter string ?
---@return TooltipData data 
function C_TooltipInfo.GetUnitDebuff(unitToken, index, filter)
end

---
---@param unitTokenString string 
---@param auraInstanceID number 
---@param filter string ?
---@return TooltipData data 
function C_TooltipInfo.GetUnitDebuffByAuraInstanceID(unitTokenString, auraInstanceID, filter)
end

---
---@return TooltipData data 
function C_TooltipInfo.GetUpgradeItem()
end

---
---@param itemDBID string 
---@return TooltipData data 
function C_TooltipInfo.GetWeeklyReward(itemDBID)
end

---
---@return TooltipData data 
function C_TooltipInfo.GetWorldCursor()
end

---
---@param unitTokenString string 
---@return TooltipData data 
function C_TooltipInfo.GetWorldLootObject(unitTokenString)
end
