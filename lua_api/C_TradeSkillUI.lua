-- C_TradeSkillUI API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_TradeSkillUI
C_TradeSkillUI = {}

---
---@param itemGUID string WOWGUID
---@return boolean canStore 
function C_TradeSkillUI.CanStoreEnchantInItem(itemGUID)
end

---
function C_TradeSkillUI.CancelProfessionRespec()
end

---
---@return boolean canInteract 
function C_TradeSkillUI.CheckRespecNPC()
end

---Closes an open trade skill window.
function C_TradeSkillUI.CloseTradeSkill()
end

---
function C_TradeSkillUI.ConfirmProfessionRespec()
end

---
---@param recipeSpellID number 
---@param numCasts number ? = 1
---@param craftingReagents CraftingReagentInfo []?
---@since Patch 11.0.0 (2024-07-23): Added applyConcentration argument.
function C_TradeSkillUI.CraftEnchant(recipeSpellID, numCasts, craftingReagents)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param recipeSpellID number - The ID of the tradeskill recipe.
---@param numCasts number ? = 1- The number of times to repeat the creation of the specified recipe.
---@param craftingReagents CraftingReagentInfo []?
---@since Patch 11.0.0 (2024-07-23): Added applyConcentration argument.
function C_TradeSkillUI.CraftRecipe(recipeSpellID, numCasts, craftingReagents)
end

---
---@param recipeSpellID number 
---@param numCasts number ? = 1 - This defaults to 1 if passed nil.
---@param itemTarget ItemLocation 🔗
---@param craftingReagents CraftingReagentInfo []?
---@since Patch 11.0.0 (2024-07-23): Added craftingReagents, applyConcentration arguments.
function C_TradeSkillUI.CraftSalvage(recipeSpellID, numCasts, itemTarget, craftingReagents)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@param recipeID number 
---@return boolean result 
function C_TradeSkillUI.DoesRecraftingRecipeAcceptItem(itemLocation, recipeID)
end

---
---@return number skillLineID []
---@since Patch 8.1.0 (2018-12-11): Added.
function C_TradeSkillUI.GetAllProfessionTradeSkillLines()
end

---Returns all recipes for the current profession.
---@return number recipeIDs [] - The IDs of all the recipes for the current trade skill, or an empty table if the trade skill panel has yet to be opened.
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TradeSkillUI.GetAllRecipeIDs()
end

---Returns the current profession displayed in the trade skill window.
---@return ProfessionInfo info 
function C_TradeSkillUI.GetBaseProfessionInfo()
end

---Returns a table of category IDs for the currently opened trade skill.
---@return number categoryIDs []
---@since Patch 8.0.1 (2018-07-17): Changed to return a table (Build 26231).
function C_TradeSkillUI.GetCategories()
end

---Returns information for a tradeskill category.
---@param categoryID number - The ID of the tradeskill category to get information for.
---@param returnTable table - Optional. The table to return the information in.
---@return table categoryInfo - A table containing information for the category:
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TradeSkillUI.GetCategoryInfo(categoryID, returnTable)
end

---
---@return ProfessionInfo info 
function C_TradeSkillUI.GetChildProfessionInfo()
end

---
---@return ProfessionInfo infos []
function C_TradeSkillUI.GetChildProfessionInfos()
end

---
---@param skillLineID number 
---@return number currencyType 
function C_TradeSkillUI.GetConcentrationCurrencyID(skillLineID)
end

---
---@param recipeSpellID number 
---@param recipeLevel number ?
---@return number numAvailable 
function C_TradeSkillUI.GetCraftableCount(recipeSpellID, recipeLevel)
end

---
---@param recipeID number 
---@param craftingReagents CraftingReagentInfo []
---@return CraftingOperationInfo info ?
---@since Patch 11.0.0 (2024-07-23): Added applyConcentration argument.
function C_TradeSkillUI.GetCraftingOperationInfo(recipeID, craftingReagents)
end

---
---@param recipeID number 
---@param craftingReagents CraftingReagentInfo []
---@return CraftingOperationInfo info ?
---@since Patch 11.0.0 (2024-07-23): Added applyConcentration argument.
function C_TradeSkillUI.GetCraftingOperationInfoForOrder(recipeID, craftingReagents)
end

---
---@param recipeSpellID number 
---@param craftingReagentIndex number 
---@param craftingReagents CraftingReagentInfo []
---@return string bonusText []
function C_TradeSkillUI.GetCraftingReagentBonusText(recipeSpellID, craftingReagentIndex, craftingReagents)
end

---
---@param itemIDs number []
---@return CraftingTargetItem items []
function C_TradeSkillUI.GetCraftingTargetItems(itemIDs)
end

---
---@param recipeID number 
---@return string items [] : WOWGUID
function C_TradeSkillUI.GetEnchantItems(recipeID)
end

---
---@param recipeSpellID number 
---@return number itemID ?
function C_TradeSkillUI.GetFactionSpecificOutputItem(recipeSpellID)
end

---
---@param recipeID number 
---@return GatheringOperationInfo info ?
function C_TradeSkillUI.GetGatheringOperationInfo(recipeID)
end

---
---@param recipeID number 
---@return boolean cannotModifyHideUnowned 
---@return boolean alwaysShowUnowned 
function C_TradeSkillUI.GetHideUnownedFlags(recipeID)
end

---
---@param itemInfo string 
---@return number quality ?
function C_TradeSkillUI.GetItemCraftedQualityByItemInfo(itemInfo)
end

---
---@param itemInfo string 
---@return number quality ?
function C_TradeSkillUI.GetItemReagentQualityByItemInfo(itemInfo)
end

---
---@param itemGUID string 
---@return CraftingItemSlotModification slotMods []
function C_TradeSkillUI.GetItemSlotModifications(itemGUID)
end

---
---@param orderID number 
---@return CraftingItemSlotModification slotMods []
function C_TradeSkillUI.GetItemSlotModificationsForOrder(orderID)
end

---
---@param itemGUID string 
---@return number recipeID ?
---@return number skillLineAbilityID ?
function C_TradeSkillUI.GetOriginalCraftRecipeID(itemGUID)
end

---
---@param slot number 
---@return Enum.Profession profession ?
function C_TradeSkillUI.GetProfessionByInventorySlot(slot)
end

---
---@return number skillLineID 
function C_TradeSkillUI.GetProfessionChildSkillLineID()
end

---
---@return Enum.Profession profession ?
function C_TradeSkillUI.GetProfessionForCursorItem()
end

---
---@param recipeID number 
---@return ProfessionInfo info 
function C_TradeSkillUI.GetProfessionInfoByRecipeID(recipeID)
end

---
---@param skillLineID number 
---@return ProfessionInfo info 
function C_TradeSkillUI.GetProfessionInfoBySkillLineID(skillLineID)
end

---
---@return number invSlots [] : InventorySlots - The returned values needs to be offset by 1, so 19-24 should be 20-25.
function C_TradeSkillUI.GetProfessionInventorySlots()
end

---
---@param skillLineAbilityID number 
---@return string professionName 
function C_TradeSkillUI.GetProfessionNameForSkillLineAbility(skillLineAbilityID)
end

---
---@param profession Enum.Profession 
---@return number skillLineID 
function C_TradeSkillUI.GetProfessionSkillLineID(profession)
end

---
---@param profession Enum.Profession 
---@return number slots []
function C_TradeSkillUI.GetProfessionSlots(profession)
end

---
---@param professionID number 
---@param skillLineID number ?
---@return number knownSpells []
function C_TradeSkillUI.GetProfessionSpells(professionID, skillLineID)
end

---
---@param recipeID number 
---@return number qualityIDs []?
function C_TradeSkillUI.GetQualitiesForRecipe(recipeID)
end

---
---@param craftingReagentIndex number 
---@param craftingReagents CraftingReagentInfo []
---@return string bonusText 
function C_TradeSkillUI.GetReagentDifficultyText(craftingReagentIndex, craftingReagents)
end

---
---@param itemID number 
---@return number itemIDs []
function C_TradeSkillUI.GetReagentRequirementItemIDs(itemID)
end

---
---@param mcrSlotID number 
---@param recipeSpellID number 
---@param skillLineAbilityID number 
---@return boolean locked 
---@return string lockedReason 
function C_TradeSkillUI.GetReagentSlotStatus(mcrSlotID, recipeSpellID, skillLineAbilityID)
end

---Returns the description for a recipe.
---@param recipeID number - Also doubles as a Spell ID.
---@return string recipeDescription - For example, "Permanently enchant a two handed melee weapon to grant +25 Agility." Not readily available on function call, see SpellMixin:ContinueOnSpellLoad.
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TradeSkillUI.GetRecipeDescription(recipeID)
end

---
---@param recipeID number 
---@param dataSlotIndex number 
---@return string link 
function C_TradeSkillUI.GetRecipeFixedReagentItemLink(recipeID, dataSlotIndex)
end

---Returns information for a recipe.
---@param recipeSpellID number 
---@param recipeLevel number ?
---@return TradeSkillRecipeInfo recipeInfo ?
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TradeSkillUI.GetRecipeInfo(recipeSpellID, recipeLevel)
end

---
---@param skillLineAbilityID number 
---@param recipeLevel number ?
---@return TradeSkillRecipeInfo recipeInfo ?
function C_TradeSkillUI.GetRecipeInfoForSkillLineAbility(skillLineAbilityID, recipeLevel)
end

---Returns the result item link for a recipe.
---@param recipeId number 
---@return string itemLink : ItemLink
---@since Patch 7.0.3 (2016-07-19): Moved from GetTradeSkillRecipeLink to C_TradeSkillUI.GetRecipeItemLink.
function C_TradeSkillUI.GetRecipeItemLink(recipeId)
end

---Returns an icon, item link (if any) and item ID (if any) for the expected output of a recipe, given the supplied reagents.
---@param recipeSpellID number 
---@param reagents CraftingReagentInfo []?
---@return CraftingRecipeOutputInfo outputInfo 
---@since Patch 10.0.5 (2023-01-24): Added recraftOrderID argument.
function C_TradeSkillUI.GetRecipeOutputItemData(recipeSpellID, reagents)
end

---Returns the qualityItemIDs of a recipe.
---@param recipeSpellID number 
---@return number qualityItemIDs []?
function C_TradeSkillUI.GetRecipeQualityItemIDs(recipeSpellID)
end

---
---@param recipeID number 
---@param dataSlotIndex number 
---@param qualityIndex number 
---@return string link 
function C_TradeSkillUI.GetRecipeQualityReagentItemLink(recipeID, dataSlotIndex, qualityIndex)
end

---
---@param recipeID number 
---@return CraftingRecipeRequirement requirements []
function C_TradeSkillUI.GetRecipeRequirements(recipeID)
end

---
---@param recipeSpellID number 
---@param isRecraft boolean 
---@param recipeLevel number ?
---@return CraftingRecipeSchematic schematic 
---@since Patch 10.0.5 (2023-01-24): Removed hasGatheringOperationInfo field.
function C_TradeSkillUI.GetRecipeSchematic(recipeSpellID, isRecraft, recipeLevel)
end

---
---@param isRecraft boolean 
---@return number recipeIDs []
---@since Patch 10.0.5 (2023-01-24): Added isRecraft argument.
function C_TradeSkillUI.GetRecipesTracked(isRecraft)
end

---
---@param recipeID number ?
---@return string items [] : WOWGUID
function C_TradeSkillUI.GetRecraftItems(recipeID)
end

---
---@param itemGUID string WOWGUID
---@param replacedItemIDs number []
---@return string warnings []
function C_TradeSkillUI.GetRecraftRemovalWarnings(itemGUID, replacedItemIDs)
end

---
---@return number remaining 
function C_TradeSkillUI.GetRemainingRecasts()
end

---
---@param recipeID number 
---@return number itemIDs []
function C_TradeSkillUI.GetSalvagableItemIDs(recipeID)
end

---
---@return boolean flag 
function C_TradeSkillUI.GetShowLearned()
end

---
---@return boolean flag 
function C_TradeSkillUI.GetShowUnlearned()
end

---
---@param itemInfo string 
---@return number skillLineID ?
function C_TradeSkillUI.GetSkillLineForGear(itemInfo)
end

---
---@return number sourceTypeFilter 
function C_TradeSkillUI.GetSourceTypeFilter()
end

---
---@param skillLineID number 
---@return string professionDisplayName 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_TradeSkillUI.GetTradeSkillDisplayName(skillLineID)
end

---Get the associated profession information for a recipe.
---@param recipeID number 
---@return number tradeSkillID - skill line ID for profession where recipe comes from (including expansion)
---@return string skillLineName - profession name where recipe comes from (including expansion)
---@return number parentTradeSkillID - skill line ID for the profession (not expansion specific)
function C_TradeSkillUI.GetTradeSkillLineForRecipe(recipeID)
end

---Returns a link for the currently displayed profession.
---@return string link ? : tradeLink
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TradeSkillUI.GetTradeSkillListLink()
end

---
---@return boolean hasFavorites 
function C_TradeSkillUI.HasFavoriteOrderRecipes()
end

---
---@param recipeID number 
---@param itemGUID string WOWGUID
---@return boolean valid 
function C_TradeSkillUI.IsEnchantTargetValid(recipeID, itemGUID)
end

---
---@return boolean enabled 
function C_TradeSkillUI.IsGuildTradeSkillsEnabled()
end

---Returns true if the trade skill window is displayed for an NPC.
---@return boolean isNPCCrafting - true if the Trade Skill UI is open for crafting by an NPC, such as a Garrison follower.
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TradeSkillUI.IsNPCCrafting()
end

---
---@param profession Enum.Profession 
---@return boolean nearFocus 
function C_TradeSkillUI.IsNearProfessionSpellFocus(profession)
end

---
---@param itemGUID string 
---@return boolean learned 
function C_TradeSkillUI.IsOriginalCraftRecipeLearned(itemGUID)
end

---
---@param recipeID number 
---@return boolean result 
function C_TradeSkillUI.IsRecipeFirstCraft(recipeID)
end

---
---@param recipeID number 
---@return boolean result 
function C_TradeSkillUI.IsRecipeInBaseSkillLine(recipeID)
end

---
---@param recipeID number 
---@param skillLineID number 
---@return boolean result 
function C_TradeSkillUI.IsRecipeInSkillLine(recipeID, skillLineID)
end

---
---@param recipeID number 
---@return boolean recipeProfessionLearned 
function C_TradeSkillUI.IsRecipeProfessionLearned(recipeID)
end

---
---@param recipeID number 
---@param isRecraft boolean 
---@return boolean tracked 
---@since Patch 10.0.5 (2023-01-24): Added isRecraft argument.
function C_TradeSkillUI.IsRecipeTracked(recipeID, isRecraft)
end

---
---@param recraftItemGUID string 
---@return boolean isEquipped 
function C_TradeSkillUI.IsRecraftItemEquipped(recraftItemGUID)
end

---
---@param itemGUID string WOWGUID
---@param itemID number 
---@return boolean valid 
function C_TradeSkillUI.IsRecraftReagentValid(itemGUID, itemID)
end

---
---@return boolean result 
function C_TradeSkillUI.IsRuneforging()
end

---Checks if the Trade Skill UI is open for a profession in the guild.
---@return boolean isGuild - true if the Trade Skill UI is open for a profession in the guild, false otherwise.
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TradeSkillUI.IsTradeSkillGuild()
end

---Checks if the Trade Skill UI is open for a profession linked by another character.
---@return boolean isLinked - true if the Trade Skill UI is open for a profession linked by another character, false otherwise.
---@since Patch 7.0.3 (2016-07-19): Added. Replaces IsTradeSkillLinked.
function C_TradeSkillUI.IsTradeSkillLinked()
end

---Checks if the Trade Skill UI is open for a profession.
---@return boolean isReady - true if the Trade Skill UI is open  and loaded for a profession, false otherwise.
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TradeSkillUI.IsTradeSkillReady()
end

---
---@param recipeID number 
function C_TradeSkillUI.OpenRecipe(recipeID)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param tradeSkillID number 
---@return boolean success 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TradeSkillUI.OpenTradeSkill(tradeSkillID)
end

---
---@param reagentItemID number 
---@return boolean recraftValid 
function C_TradeSkillUI.RecraftLimitCategoryValid(reagentItemID)
end

---
---@param itemGUID string WOWGUID
---@param craftingReagents CraftingReagentInfo []?
---@return boolean result 
---@since Patch 11.0.0 (2024-07-23): Added applyConcentration argument.
function C_TradeSkillUI.RecraftRecipe(itemGUID, craftingReagents)
end

---
---@param orderID number BigUInteger
---@param itemGUID string WOWGUID
---@param craftingReagents CraftingReagentInfo []?
---@return boolean result 
---@since Patch 11.0.0 (2024-07-23): Added applyConcentration argument.
function C_TradeSkillUI.RecraftRecipeForOrder(orderID, itemGUID, craftingReagents)
end

---
---@param flag boolean 
function C_TradeSkillUI.SetOnlyShowAvailableForOrders(flag)
end

---
---@param flag boolean 
function C_TradeSkillUI.SetOnlyShowSkillUpRecipes(flag)
end

---
---@param skillLineID number 
function C_TradeSkillUI.SetProfessionChildSkillLineID(skillLineID)
end

---
---@param text string ? - search text or nil to clear the search
function C_TradeSkillUI.SetRecipeItemNameFilter(text)
end

---
---@param recipeID number - the recipe SpellID. Any spell can be used, though only recipes will track ingredients
---@param tracked boolean 
---@param isRecraft boolean 
---@since Patch 10.0.5 (2023-01-24): Added isRecraft argument.
function C_TradeSkillUI.SetRecipeTracked(recipeID, tracked, isRecraft)
end

---
---@param flag boolean 
function C_TradeSkillUI.SetShowLearned(flag)
end

---
---@param flag boolean 
function C_TradeSkillUI.SetShowUnlearned(flag)
end

---
---@param sourceTypeFilter number 
function C_TradeSkillUI.SetSourceTypeFilter(sourceTypeFilter)
end
