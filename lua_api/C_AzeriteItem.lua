-- C_AzeriteItem API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_AzeriteItem
C_AzeriteItem = {}

---Returns an ItemLocationMixin🔗 describing the location of the  [Heart of Azeroth].
---@return ItemLocationMixin activeAzeriteItemLocation 🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteItem.FindActiveAzeriteItem()
end

---
---@param azeriteItemLocation ItemLocationMixin 🔗
---@return number xp 
---@return number totalLevelXP 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteItem.GetAzeriteItemXPInfo(azeriteItemLocation)
end

---
---@param azeriteItemLocation ItemLocationMixin 🔗
---@return number powerLevel 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteItem.GetPowerLevel(azeriteItemLocation)
end

---
---@param azeriteItemLocation ItemLocationMixin 🔗
---@return number powerLevel 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AzeriteItem.GetUnlimitedPowerLevel(azeriteItemLocation)
end

---Returns true if the  [Heart of Azeroth] is either equipped or in the player's (non-bank) bags.
---@return boolean hasActiveAzeriteItem 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteItem.HasActiveAzeriteItem()
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return boolean isAzeriteItem 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteItem.IsAzeriteItem(itemLocation)
end

---
---@return boolean isAtMax 
---@since Patch 8.2.0 (2019-06-25): Added isAtMax return.
function C_AzeriteItem.IsAzeriteItemAtMaxLevel()
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return boolean isAzeriteItem 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteItem.IsAzeriteItemByID(itemLocation)
end

---
---@param azeriteItemLocation ItemLocationMixin 🔗
---@return boolean isEnabled 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_AzeriteItem.IsAzeriteItemEnabled(azeriteItemLocation)
end

---
---@return boolean isUnlimitedLevelingUnlocked 
function C_AzeriteItem.IsUnlimitedLevelingUnlocked()
end
