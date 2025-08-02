-- C_MerchantFrame API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_MerchantFrame
C_MerchantFrame = {}

---
---@param buybackSlotIndex number 
---@return number buybackItemID 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_MerchantFrame.GetBuybackItemID(buybackSlotIndex)
end

---Returns info for a merchant item.
---@param index number luaIndex - The index of the item in the merchant's inventory
---@return MerchantItemInfo info []
---@since Patch 7.2.0 (2017-03-28): Added isPurchasable.
function C_MerchantFrame.GetItemInfo(index)
end

---
---@return number numJunkItems 
function C_MerchantFrame.GetNumJunkItems()
end

---Returns if an item is refundable.
---@param index number - merchant item index, up to MERCHANT_ITEMS_PER_PAGE (10).
---@return boolean refundable 
---@since Patch 8.1.5 (2019-03-12): Added.
function C_MerchantFrame.IsMerchantItemRefundable(index)
end

---
---@return boolean enabled 
function C_MerchantFrame.IsSellAllJunkEnabled()
end

---
function C_MerchantFrame.SellAllJunkItems()
end
