-- C_PerksProgram API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_PerksProgram
C_PerksProgram = {}

---
function C_PerksProgram.ClearFrozenPerksVendorItem()
end

---
function C_PerksProgram.CloseInteraction()
end

---
---@return number categoryIDs []
function C_PerksProgram.GetAvailableCategoryIDs()
end

---
---@return number vendorItemIDs []
function C_PerksProgram.GetAvailableVendorItemIDs()
end

---
---@param categoryID number 
---@return PerksVendorCategoryInfo categoryInfo 
function C_PerksProgram.GetCategoryInfo(categoryID)
end

---
---@return number currencyAmount 
function C_PerksProgram.GetCurrencyAmount()
end

---
---@return number perksVendorItemID 
function C_PerksProgram.GetDraggedPerksVendorItem()
end

---
---@return PerksVendorItemInfo vendorItemInfo 
function C_PerksProgram.GetFrozenPerksVendorItemInfo()
end

---
---@return PerksProgramPendingChestRewards pendingRewards []
function C_PerksProgram.GetPendingChestRewards()
end

---
---@param id number 
---@return PerksProgramItemDisplayInfo item 
function C_PerksProgram.GetPerksProgramItemDisplayInfo(id)
end

---
---@param vendorItemID number 
---@return number timeRemaining 
function C_PerksProgram.GetTimeRemaining(vendorItemID)
end

---
---@param vendorItemID number 
---@return PerksVendorItemInfo vendorItemInfo 
function C_PerksProgram.GetVendorItemInfo(vendorItemID)
end

---
---@param vendorItemID number 
---@return number refundTimeRemaining 
function C_PerksProgram.GetVendorItemInfoRefundTimeLeft(vendorItemID)
end

---
---@return boolean isAttackAnimToggleEnabled 
function C_PerksProgram.IsAttackAnimToggleEnabled()
end

---
---@param perksVendorItemID number 
---@return boolean isFrozen 
function C_PerksProgram.IsFrozenPerksVendorItem(perksVendorItemID)
end

---
---@return boolean isMountSpecialAnimToggleEnabled 
function C_PerksProgram.IsMountSpecialAnimToggleEnabled()
end

---
---@param perksVendorItemID number 
function C_PerksProgram.ItemSelectedTelemetry(perksVendorItemID)
end

---
---@param perksVendorItemID number 
function C_PerksProgram.PickupPerksVendorItem(perksVendorItemID)
end

---
---@param perksVendorItemIDs number []
function C_PerksProgram.RequestCartCheckout(perksVendorItemIDs)
end

---
function C_PerksProgram.RequestPendingChestRewards()
end

---
---@param perksVendorItemID number 
function C_PerksProgram.RequestPurchase(perksVendorItemID)
end

---
---@param perksVendorItemID number 
function C_PerksProgram.RequestRefund(perksVendorItemID)
end

---
function C_PerksProgram.ResetHeldItemDragAndDrop()
end

---
function C_PerksProgram.SetFrozenPerksVendorItem()
end
