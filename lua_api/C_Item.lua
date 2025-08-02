-- C_Item API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Item
C_Item = {}

---
function C_Item.ActionBindsItem()
end

---
function C_Item.BindEnchant()
end

---
---@param itemLocation ItemLocation 🔗
---@return boolean canBeRefunded 
function C_Item.CanBeRefunded(itemLocation)
end

---
---@param itemLoc ItemLocationMixin 🔗
---@return boolean canTransmog 
---@return number errorCode 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_Item.CanItemTransmogAppearance(itemLoc)
end

---
---@param itemLoc ItemLocationMixin 🔗
---@return boolean canBeScrapped 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_Item.CanScrapItem(itemLoc)
end

---
---@param itemLoc ItemLocationMixin 🔗
---@return boolean isItemViewable 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_Item.CanViewItemPowers(itemLoc)
end

---#protected - This can only be called from secure code.
function C_Item.ConfirmBindOnUse()
end

---When a user purchases a refundable item from a vendor with an on-use effect (such as a toy or cosmetic) and attempts to use that item, the game will pop up a StaticPopup dialog informing the user that the item would no longer be refundable. If the user clicks the Okay button to continue using the item, this function confirms the use and dismisses the dialog.
---@since Patch 11.0.5 (2024-10-22): Briefly marked as Protected, then reverted shortly after.
function C_Item.ConfirmNoRefundOnUse()
end

---
function C_Item.ConfirmOnUse()
end

---
---@param itemInfo number |string : ItemInfo
---@param classID number 
---@param specID number ? = 0
---@return boolean result 
function C_Item.DoesItemContainSpec(itemInfo, classID, specID)
end

---
---@param emptiableItemLocation ItemLocationMixin 🔗
---@return boolean itemExists 
function C_Item.DoesItemExist(emptiableItemLocation)
end

---
---@param emptiableItemLocation ItemLocationMixin 🔗
---@return boolean itemExists 
function C_Item.DoesItemExistByID(emptiableItemLocation)
end

---
---@param itemLoc ItemLocationMixin 🔗
---@return boolean matchesBonusTree 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Item.DoesItemMatchBonusTreeReplacement(itemLoc)
end

---
---@param itemLoc ItemLocation 🔗
---@return boolean matchesTargetEnchantingSpell 
function C_Item.DoesItemMatchTargetEnchantingSpell(itemLoc)
end

---
---@param itemLoc ItemLocation 🔗
---@return boolean matchesTrackJump 
function C_Item.DoesItemMatchTrackJump(itemLoc)
end

---
---@param unitGUID string UnitToken
function C_Item.DropItemOnUnit(unitGUID)
end

---
---@param type string 
function C_Item.EndBoundTradeable(type)
end

---
---@param type number 
function C_Item.EndRefund(type)
end

---
---@param itemInfo number |string : ItemInfo
---@param dstSlot number ?
function C_Item.EquipItemByName(itemInfo, dstSlot)
end

---
---@param itemLoc ItemLocationMixin 🔗
---@return ItemTransmogInfoMixin info ?🔗
---@since Patch 9.1.0 (2021-06-29): Added.
function C_Item.GetAppliedItemTransmogInfo(itemLoc)
end

---
---@param itemLoc ItemLocationMixin 🔗
---@return ItemTransmogInfoMixin info ?🔗
---@since Patch 9.1.0 (2021-06-29): Added.
function C_Item.GetBaseItemTransmogInfo(itemLoc)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return number currentItemLevel ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.GetCurrentItemLevel(itemLocation)
end

---
---@param itemLoc ItemLocationMixin 🔗
---@return ItemTransmogInfoMixin info ?🔗
---@since Patch 9.1.5 (2021-11-02): Added.
function C_Item.GetCurrentItemTransmogInfo(itemLoc)
end

---
---@param itemID number 
---@param context Enum.ItemCreationContext 🔗
---@return string itemLink ?
function C_Item.GetDelvePreviewItemLink(itemID, context)
end

---
---@param itemID number 
---@param context Enum.ItemCreationContext 🔗
---@return Enum.ItemQuality itemQuality 🔗
function C_Item.GetDelvePreviewItemQuality(itemID, context)
end

---
---@param itemInfo number |string : ItemInfo
---@return number actualItemLevel 
---@return boolean previewLevel 
---@return number sparseItemLevel 
function C_Item.GetDetailedItemLevelInfo(itemInfo)
end

---
---@param itemID number 
---@param itemQuality number 
---@return number spellID ?
function C_Item.GetFirstTriggeredSpellForItem(itemID, itemQuality)
end

---
---@param itemInfo number |string : ItemInfo
---@param slotID number ?
---@return number result []
function C_Item.GetItemChildInfo(itemInfo, slotID)
end

---
---@param itemClassID number 
---@return string result 
function C_Item.GetItemClassInfo(itemClassID)
end

---
---@param itemLoc ItemLocationMixin 🔗
---@return number icon ?
---@since Patch 9.2.0 (2022-02-22): Added.
function C_Item.GetItemConversionOutputIcon(itemLoc)
end

---
---@param itemInfo number |string : ItemInfo
---@return number startTimeSeconds 
---@return number durationSeconds 
---@return boolean enableCooldownTimer 
function C_Item.GetItemCooldown(itemInfo)
end

---Returns the number (or available charges) of an item in the inventory.
---@param itemInfo number |string : ItemInfo
---@param includeBank boolean ? = false
---@param includeUses boolean ? = false
---@param includeReagentBank boolean ? = false
---@param includeAccountBank boolean ? = false
---@return number count 
---@since Patch 11.0.0 (2024-07-23): Added includeAccountBank parameter.
function C_Item.GetItemCount(itemInfo, includeBank, includeUses, includeReagentBank, includeAccountBank)
end

---
---@param itemInfo number |string : ItemInfo
---@return number itemID 
---@return string creationContext 
function C_Item.GetItemCreationContext(itemInfo)
end

---
---@param itemInfo number |string : ItemInfo
---@return number result ?
function C_Item.GetItemFamily(itemInfo)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return string itemGUID : ItemGUID
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.GetItemGUID(itemLocation)
end

---
---@param hyperlink string 
---@param index number 
---@return string gemName 
---@return string gemLink 
function C_Item.GetItemGem(hyperlink, index)
end

---
---@param itemInfo number |string : ItemInfo
---@param index number 
---@return number gemID 
function C_Item.GetItemGemID(itemInfo, index)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return number itemID 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.GetItemID(itemLocation)
end

---
---@param itemGUID string 
---@return number itemID ?
function C_Item.GetItemIDByGUID(itemGUID)
end

---
---@param itemInfo number |string : ItemInfo
---@return number itemID 
function C_Item.GetItemIDForItemInfo(itemInfo)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return number icon ? : fileID
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.GetItemIcon(itemLocation)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return number icon ? : fileID
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.GetItemIconByID(itemLocation)
end

---Returns info for an item.
---@param item number |string : ItemInfo - Item ID, Link or name
Accepts any valid item ID but returns nil if the item is not cached yet.
Accepts an item link, or minimally in item:%d format.
Accepts a localized item name but this requires the item to be or have been in the player's inventory (bags/bank) for that session.
---@return string 1. itemName - The localized name of the item.
---@return string 2. itemLink : ItemLink - The localized link of the item.
---@return number 3. itemQuality : Enum.ItemQuality - The quality of the item, e.g. 2 for Uncommon and 3 for Rare quality items.
---@return number 4. itemLevel - The base item level, not including upgrades. See GetDetailedItemLevelInfo() for getting the actual item level.
---@return number 5. itemMinLevel - The minimum level required to use the item, or 0 if there is no level requirement.
---@return string 6. itemType : ItemType - The localized type name of the item: Armor, Weapon, Quest, etc.
---@return string 7. itemSubType : ItemType - The localized sub-type name of the item: Bows, Guns, Staves, etc.
---@return number 8. itemStackCount - The max amount of an item per stack, e.g. 200 for Runecloth.
---@return string 9. itemEquipLoc : ItemEquipLoc - The inventory equipment location in which the item may be equipped e.g. "INVTYPE_HEAD", or an empty string if it cannot be equipped.
---@return number 10. itemTexture : FileID - The texture for the item icon.
---@return number 11. sellPrice - The vendor price in copper, or 0 for items that cannot be sold.
---@return number 12. classID : ItemType - The numeric ID of itemType
---@return number 13. subclassID : ItemType - The numeric ID of itemSubType
---@return number 14. bindType : Enum.ItemBind - When the item becomes soulbound, e.g. 1 for Bind on Pickup items.
---@return number 15. expansionID : LE_EXPANSION - The related Expansion, e.g. 8 for Shadowlands. On Classic this appears to be always 254.
---@return number 16. setID ? : ItemSetID - For example 761 for  [Red Winter Hat] (itemID 21524).
---@return boolean 17. isCraftingReagent - Whether the item can be used as a crafting reagent.
---@since Patch 10.2.6 (2024-03-19): Namespaced to C_Item.GetItemInfo.
function C_Item.GetItemInfo(item)
end

---Returns readily available info for an item.
---@param item number |string : Item ID, Link or name
Accepts any valid item ID.
Accepts an item link, or minimally in item:%d format.
Accepts a localized item name but this requires the item to be or have been in the player's inventory (bags/bank) for that session.
---@return number itemID - ID of the item.
---@return string itemType : ItemType - The localized type name of the item: Armor, Weapon, Quest, etc.
---@return string itemSubType : ItemType - The localized sub-type name of the item: Bows, Guns, Staves, etc.
---@return string itemEquipLoc : ItemEquipLoc - The inventory equipment location in which the item may be equipped e.g. "INVTYPE_HEAD", or an empty string if it cannot be equipped.
---@return number icon : fileID - The texture for the item icon.
---@return number classID : ItemType - The numeric ID of itemType
---@return number subClassID : ItemType - The numeric ID of itemSubType
---@since Patch 10.2.6 (2024-03-19): Namespaced to C_Item.GetItemInfoInstant.
function C_Item.GetItemInfoInstant(item)
end

---
---@param inventorySlot Enum.InventoryType 🔗
---@return string result - Seems to return the name of an inventorySlot type, e.g. C_Item.GetItemInventorySlotInfo(1) returns "Head"
function C_Item.GetItemInventorySlotInfo(inventorySlot)
end

---
---@param inventorySlot Enum.InventoryType 🔗
---@return string result 
function C_Item.GetItemInventorySlotKey(inventorySlot)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return Enum.InventoryType inventoryType ?🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.GetItemInventoryType(itemLocation)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return Enum.InventoryType inventoryType ?🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.GetItemInventoryTypeByID(itemLocation)
end

---
---@param itemInfo number |string : ItemInfo
---@return number setID ?
function C_Item.GetItemLearnTransmogSet(itemInfo)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return string itemLink ? : ItemLink
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.GetItemLink(itemLocation)
end

---
---@param itemGUID string 
---@return string itemLink ?
function C_Item.GetItemLinkByGUID(itemGUID)
end

---
---@param itemGUID string 
---@return ItemLocationMixin itemLocation ?🔗
function C_Item.GetItemLocation(itemGUID)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return number stackSize ?
function C_Item.GetItemMaxStackSize(itemLocation)
end

---
---@param itemInfo string 
---@return number stackSize ?
function C_Item.GetItemMaxStackSizeByID(itemInfo)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return string itemName ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.GetItemName(itemLocation)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return string itemName ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.GetItemNameByID(itemLocation)
end

---
---@param itemInfo number |string : ItemInfo
---@return number socketCount 
function C_Item.GetItemNumAddedSockets(itemInfo)
end

---
---@param itemInfo number |string : ItemInfo
---@return number socketCount 
function C_Item.GetItemNumSockets(itemInfo)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return Enum.ItemQuality itemQuality ?🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.GetItemQuality(itemLocation)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return Enum.ItemQuality itemQuality ?🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.GetItemQualityByID(itemLocation)
end

---
---@param quality Enum.ItemQuality 🔗
---@return number colorRGBR 
---@return number colorRGBG 
---@return number colorRGBB 
---@return string qualityString 
function C_Item.GetItemQualityColor(quality)
end

---
---@param setID number 
---@return string result 
function C_Item.GetItemSetInfo(setID)
end

---
---@param itemInfo number |string : ItemInfo
---@return number specTable []
function C_Item.GetItemSpecInfo(itemInfo)
end

---Returns the spell effect for an item.
---@param itemInfo number |string : ItemInfo : Item ID, Link or name
---@return string spellName - The name of the spell.
---@return number spellID - The spell's unique identifier.
---@since Patch 10.2.6 (2024-03-19): Added.
function C_Item.GetItemSpell(itemInfo)
end

---
---@param itemLink1 string 
---@param itemLink2 string 
---@return table statTable - A table whose keys are also globalstrings.
function C_Item.GetItemStatDelta(itemLink1, itemLink2)
end

---Returns a table of stats for an item.
---@param itemLink string - Only accepts an item link, minimally in item:%d format.
---@return table statTable - A table whose keys are also globalstrings.
function C_Item.GetItemStats(itemLink)
end

---
---@param itemClassID number 
---@param itemSubClassID number 
---@return string subClassName 
---@return boolean subClassUsesInvType 
function C_Item.GetItemSubClassInfo(itemClassID, itemSubClassID)
end

---
---@param itemInfo number |string : ItemInfo
---@return number limitCategory 
---@return number limitMax 
function C_Item.GetItemUniqueness(itemInfo)
end

---
---@param itemInfo string 
---@return boolean isUnique 
---@return string limitCategoryName ?
---@return number limitCategoryCount ?
---@return number limitCategoryID ?
---@since Patch 9.2.0 (2022-02-22): Added.
function C_Item.GetItemUniquenessByID(itemInfo)
end

---
---@param itemInfo number |string : ItemInfo
---@return ItemUpgradeInfo itemUpgradeInfo ?
function C_Item.GetItemUpgradeInfo(itemInfo)
end

---
---@param itemInfo string 
---@return string name 
---@return number icon 
---@return number quantity 
---@return number maxQuantity 
---@return number totalEarned 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_Item.GetLimitedCurrencyItemInfo(itemInfo)
end

---
---@param specID number 
---@param itemID number 
---@return number itemSetSpellIDs []
function C_Item.GetSetBonusesForSpecializationByItemID(specID, itemID)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return number stackCount 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_Item.GetStackCount(itemLocation)
end

---
---@param itemInfo number |string : Item ID, Link or name
---@return boolean isAnimaItem 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Item.IsAnimaItemByID(itemInfo)
end

---
---@param itemInfo number |string : ItemInfo
---@return boolean result 
function C_Item.IsArtifactPowerItem(itemInfo)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return boolean isBound - Whether or not the item is soul- or accountbound.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.IsBound(itemLocation)
end

---
---@param itemLocation ItemLocation 🔗
---@return boolean isBoundToAccountUntilEquip 
function C_Item.IsBoundToAccountUntilEquip(itemLocation)
end

---
---@param itemInfo number |string : ItemInfo
---@return boolean result 
function C_Item.IsConsumableItem(itemInfo)
end

---
---@param itemInfo number |string : ItemInfo
---@return boolean result ?
function C_Item.IsCorruptedItem(itemInfo)
end

---
---@param itemInfo number |string : ItemInfo
---@return boolean result ?
function C_Item.IsCosmeticItem(itemInfo)
end

---Returns whether the item is a consumable curio that can be applied to a delves companion.
---@param itemInfo number |string : ItemInfo
---@return boolean result ?
function C_Item.IsCurioItem(itemInfo)
end

---
---@param itemInfo number |string : ItemInfo
---@return boolean result 
function C_Item.IsCurrentItem(itemInfo)
end

---Returns true if the item is an Armor or Weapon type and false for all other items (Necklace, Trinkets, Rings, Consumables, etc.).
---@param itemInfo string 
---@return boolean isDressableItem 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_Item.IsDressableItemByID(itemInfo)
end

---
---@param itemInfo number |string : ItemInfo
---@return boolean result 
function C_Item.IsEquippableItem(itemInfo)
end

---
---@param itemInfo number |string : ItemInfo
---@return boolean result 
function C_Item.IsEquippedItem(itemInfo)
end

---
---@param type string 
---@return boolean result 
function C_Item.IsEquippedItemType(type)
end

---
---@param itemInfo number |string : ItemInfo
---@return boolean result 
function C_Item.IsHarmfulItem(itemInfo)
end

---
---@param itemInfo number |string : ItemInfo
---@return boolean result 
function C_Item.IsHelpfulItem(itemInfo)
end

---
---@param itemInfo number |string : ItemInfo
---@return boolean isItemBindToAccountUntilEquip 
function C_Item.IsItemBindToAccountUntilEquip(itemInfo)
end

---
---@param itemLoc ItemLocationMixin 🔗
---@return boolean isConduit 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Item.IsItemConduit(itemLoc)
end

---
---@param itemLoc ItemLocationMixin 🔗
---@return boolean isItemConvertibleAndValidForPlayer 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_Item.IsItemConvertibleAndValidForPlayer(itemLoc)
end

---
---@param itemLoc ItemLocationMixin 🔗
---@return boolean isCorrupted 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_Item.IsItemCorrupted(itemLoc)
end

---
---@param itemLoc ItemLocationMixin 🔗
---@return boolean isCorruptionRelated 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_Item.IsItemCorruptionRelated(itemLoc)
end

---
---@param itemLoc ItemLocationMixin 🔗
---@return boolean isCorruptionResistant 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_Item.IsItemCorruptionResistant(itemLoc)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return boolean isCached 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.IsItemDataCached(itemLocation)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return boolean isCached 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.IsItemDataCachedByID(itemLocation)
end

---
---@param itemGUID string 
---@return boolean valid 
function C_Item.IsItemGUIDInInventory(itemGUID)
end

---
---@param itemInfo number |string : ItemInfo
---@param targetToken string 
---@return boolean result ?
function C_Item.IsItemInRange(itemInfo, targetToken)
end

---
---@param itemInfo number |string : Item ID, Link or name
---@return boolean isKeystone 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Item.IsItemKeystoneByID(itemInfo)
end

---
---@param itemInfo string 
---@return boolean isItemSpecificToPlayerClass 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_Item.IsItemSpecificToPlayerClass(itemInfo)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return boolean isLocked 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.IsLocked(itemLocation)
end

---
---@param itemInfo number |string : ItemInfo
---@return boolean usable 
---@return boolean noMana 
function C_Item.IsUsableItem(itemInfo)
end

---
---@param itemInfo number |string : ItemInfo
---@return boolean result 
function C_Item.ItemHasRange(itemInfo)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.LockItem(itemLocation)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.LockItemByGUID(itemLocation)
end

---
---@param itemInfo number |string : ItemInfo
function C_Item.PickupItem(itemInfo)
end

---
function C_Item.ReplaceEnchant()
end

---
function C_Item.ReplaceTradeEnchant()
end

---
function C_Item.ReplaceTradeskillEnchant()
end

---Requests item data and fires ITEM_DATA_LOAD_RESULT.
---@param itemLocation ItemLocationMixin 🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.RequestLoadItemData(itemLocation)
end

---Requests item data and fires ITEM_DATA_LOAD_RESULT.
---@param itemLocation ItemLocationMixin 🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Item.RequestLoadItemDataByID(itemLocation)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@since Patch 8.3.0 (2020-01-14): Added C_Item.UnlockItemByGUID()
function C_Item.UnlockItem(itemLocation)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@since Patch 8.3.0 (2020-01-14): Added C_Item.UnlockItemByGUID()
function C_Item.UnlockItemByGUID(itemLocation)
end

---#protected - This can only be called from secure code.Use the "item" action type of SecureActionButtonTemplate or the /use slash command.
---@param itemInfo number |string : ItemInfo
---@param target string ?
function C_Item.UseItemByName(itemInfo, target)
end
