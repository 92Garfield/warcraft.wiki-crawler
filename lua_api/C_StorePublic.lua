-- C_StorePublic API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_StorePublic
C_StorePublic = {}

---
---@param groupID number 
---@return boolean hasPurchaseableProducts 
---@since Patch 7.3.5 (2018-01-16): Added.
function C_StorePublic.DoesGroupHavePurchaseableProducts(groupID)
end

---
---@param newShown boolean 
---@param contextKey string ?
function C_StorePublic.EventStoreUISetShown(newShown, contextKey)
end

---Returns whether access to the in-game shop is disabled by parental controls.
---@return boolean isDisabled - true if the player cannot access the in-game shop due to parental controls, false otherwise.
---@since Patch 5.4.2 (2013-12-10): No longer protected.
function C_StorePublic.IsDisabledByParentalControls()
end

---Returns whether the In-Game Store is available for the player.
---@return boolean isEnabled - true if the store is available, false otherwise.
---@since Patch 5.4.0 (2013-09-10): Added.
function C_StorePublic.IsEnabled()
end
