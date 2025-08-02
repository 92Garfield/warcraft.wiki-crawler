-- C_Heirloom API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Heirloom
C_Heirloom = {}

---Returns true if an heirloom can be upgraded by using an upgrade item
---@param itemID number - a heirloom itemID
---@return boolean canUpgrade 
function C_Heirloom.CanHeirloomUpgradeFromPending(itemID)
end

---Returns information about a heirloom by itemID
---@param itemID number - a heirloom itemID
---@return string name - false if not a heirloom item
---@return string itemEquipLoc 
---@return boolean isPvP 
---@return string itemTexture 
---@return number upgradeLevel 
---@return number source - heirloom source index
---@return boolean searchFiltered 
---@return number effectiveLevel 
---@return number minLevel 
---@return number maxLevel 
function C_Heirloom.GetHeirloomInfo(itemID)
end

---Returns the heirloom item IDs for all classes.
---@return number itemIDs []
function C_Heirloom.GetHeirloomItemIDs()
end
