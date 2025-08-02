-- C_Container API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Container
C_Container = {}

---
---@param containerID number Enum.BagIndex
---@return number inventoryID : inventorySlotID
function C_Container.ContainerIDToInventoryID(containerID)
end

---
---@param containerIndex number 
---@param slotIndex number 
---@param isEquipped boolean ? = false
function C_Container.ContainerRefundItemPurchase(containerIndex, slotIndex, isEquipped)
end

---
---@return boolean isDisabled 
function C_Container.GetBackpackAutosortDisabled()
end

---
---@return boolean isDisabled 
function C_Container.GetBackpackSellJunkDisabled()
end

---
---@param bagIndex number 
---@return string name 
function C_Container.GetBagName(bagIndex)
end

---
---@param bagIndex number 
---@param flag Enum.BagSlotFlags 
---@return boolean isSet 
function C_Container.GetBagSlotFlag(bagIndex, flag)
end

---
---@return boolean isDisabled 
function C_Container.GetBankAutosortDisabled()
end

---
---@param containerIndex number 
---@return number freeSlots []
function C_Container.GetContainerFreeSlots(containerIndex)
end

---
---@param containerIndex number 
---@param slotIndex number 
---@return number startTime 
---@return number duration 
---@return number enable 
function C_Container.GetContainerItemCooldown(containerIndex, slotIndex)
end

---
---@param containerIndex number 
---@param slotIndex number 
---@return number durability 
---@return number maxDurability 
function C_Container.GetContainerItemDurability(containerIndex, slotIndex)
end

---
---@param containerIndex number 
---@param slotIndex number 
---@return boolean inSet 
---@return string setList 
function C_Container.GetContainerItemEquipmentSetInfo(containerIndex, slotIndex)
end

---
---@param containerIndex number 
---@param slotIndex number 
---@return number itemID ?
function C_Container.GetContainerItemID(containerIndex, slotIndex)
end

---
---@param containerIndex number 
---@param slotIndex number 
---@return ContainerItemInfo containerInfo ? - Returns nil if the container slot is empty.
---@since Patch 10.0.2 (2022-11-15): Namespaced to C_Container and returns a structured table.
function C_Container.GetContainerItemInfo(containerIndex, slotIndex)
end

---
---@param containerIndex number 
---@param slotIndex number 
---@return string itemLink 
function C_Container.GetContainerItemLink(containerIndex, slotIndex)
end

---
---@param containerIndex number 
---@param slotIndex number 
---@param itemIndex number 
---@param isEquipped boolean 
---@return ItemPurchaseCurrency currencyInfo 
function C_Container.GetContainerItemPurchaseCurrency(containerIndex, slotIndex, itemIndex, isEquipped)
end

---
---@param containerIndex number 
---@param slotIndex number 
---@param isEquipped boolean 
---@return ItemPurchaseInfo info 
function C_Container.GetContainerItemPurchaseInfo(containerIndex, slotIndex, isEquipped)
end

---
---@param containerIndex number 
---@param slotIndex number 
---@param itemIndex number 
---@param isEquipped boolean 
---@return ItemPurchaseItem itemInfo 
function C_Container.GetContainerItemPurchaseItem(containerIndex, slotIndex, itemIndex, isEquipped)
end

---
---@param containerIndex number (BagID) - Index of the bag to query.
---@param slotIndex number - Index of the slot within the bag (ascending from 1) to query.
---@return ItemQuestInfo questInfo 
function C_Container.GetContainerItemQuestInfo(containerIndex, slotIndex)
end

---Returns the number of free slots & the bagType that an equipped bag or backpack belongs to.
---@param bagIndex number 
---@return number numFreeSlots 
---@return number bagType : ItemFamily
function C_Container.GetContainerNumFreeSlots(bagIndex)
end

---
---@param containerIndex number 
---@return number numSlots 
function C_Container.GetContainerNumSlots(containerIndex)
end

---
---@return boolean isEnabled 
function C_Container.GetInsertItemsLeftToRight()
end

---
---@param itemID number - Will not accept an itemlink or name.
---@return number startTime 
---@return number duration 
---@return number enable 
function C_Container.GetItemCooldown(itemID)
end

---
---@return number maxCurrency 
function C_Container.GetMaxArenaCurrency()
end

---
---@return boolean isEnabled 
function C_Container.GetSortBagsRightToLeft()
end

---
---@param containerIndex Enum.BagIndex 
---@return boolean hasItem 
function C_Container.HasContainerItem(containerIndex)
end

---
---@param containerIndex number 
---@param slotIndex number 
---@return boolean isBattlePayItem 
function C_Container.IsBattlePayItem(containerIndex, slotIndex)
end

---
---@param containerIndex number 
---@return boolean isFiltered 
function C_Container.IsContainerFiltered(containerIndex)
end

---
---@param containerIndex number 
---@param slotIndex number 
function C_Container.PickupContainerItem(containerIndex, slotIndex)
end

---
---@return number itemID ?
function C_Container.PlayerHasHearthstone()
end

---
---@param disable boolean 
function C_Container.SetBackpackAutosortDisabled(disable)
end

---
---@param disable boolean 
function C_Container.SetBackpackSellJunkDisabled(disable)
end

---
---@param texture Texture 🔗
---@param bagIndex number BagIndex
function C_Container.SetBagPortraitTexture(texture, bagIndex)
end

---
---@param bagIndex number 
---@param flag Enum.BagSlotFlags 
function C_Container.SetBagSlotFlag(bagIndex, flag)
end

---
---@param disable boolean 
function C_Container.SetBankAutosortDisabled(disable)
end

---
---@param enable boolean 
function C_Container.SetInsertItemsLeftToRight(enable)
end

---
---@param searchString string 
function C_Container.SetItemSearch(searchString)
end

---
---@param enable boolean 
function C_Container.SetSortBagsRightToLeft(enable)
end

---
---@param containerIndex number 
---@param slotIndex number 
function C_Container.ShowContainerSellCursor(containerIndex, slotIndex)
end

---
---@param containerIndex number 
---@param slotIndex number 
---@return boolean success 
function C_Container.SocketContainerItem(containerIndex, slotIndex)
end

---
function C_Container.SortAccountBankBags()
end

---
function C_Container.SortBags()
end

---
---@param bankType Enum.BankType 
function C_Container.SortBank(bankType)
end

---
function C_Container.SortBankBags()
end

---
---@param containerIndex number 
---@param slotIndex number 
---@param amount number 
function C_Container.SplitContainerItem(containerIndex, slotIndex, amount)
end

---#protected - This can only be called from secure code.Use the "item" action type of SecureActionButtonTemplate or the /use slash command.
---@param containerIndex Enum.BagIndex 
---@since Patch 11.0.0 (2024-07-23): Added bankType return value.
function C_Container.UseContainerItem(containerIndex)
end

---#protected - This can only be called from secure code.
---@return boolean used 
function C_Container.UseHearthstone()
end
