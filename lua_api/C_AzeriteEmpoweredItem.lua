-- C_AzeriteEmpoweredItem API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_AzeriteEmpoweredItem
C_AzeriteEmpoweredItem = {}

---
---@param azeriteEmpoweredItemLocation ItemLocationMixin 🔗
---@param powerID number 
---@return boolean canSelect 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.CanSelectPower(azeriteEmpoweredItemLocation, powerID)
end

---
---@param azeriteEmpoweredItemLocation ItemLocationMixin 🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.ConfirmAzeriteEmpoweredItemRespec(azeriteEmpoweredItemLocation)
end

---
---@param azeriteEmpoweredItemLocation ItemLocationMixin 🔗
---@return  tierInfo structure - AzeriteEmpoweredItemTierInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.GetAllTierInfo(azeriteEmpoweredItemLocation)
end

---
---@param azeriteEmpoweredItemLocation ItemLocationMixin 🔗
---@return  tierInfo structure - AzeriteEmpoweredItemTierInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.GetAllTierInfoByItemID(azeriteEmpoweredItemLocation)
end

---
---@return number cost 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.GetAzeriteEmpoweredItemRespecCost()
end

---
---@param powerID number 
---@return  powerInfo structure - AzeriteEmpoweredItemPowerInfo
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.GetPowerInfo(powerID)
end

---
---@param azeriteEmpoweredItemLocation ItemLocationMixin 🔗
---@param powerID number 
---@param level  Enum.AzeritePowerLevel
---@return  powerText structure - AzeriteEmpoweredItemPowerText
---@since Patch 8.1.0 (2018-12-11): Added.
function C_AzeriteEmpoweredItem.GetPowerText(azeriteEmpoweredItemLocation, powerID, level)
end

---
---@param powerID number 
---@return  specInfo structure - AzeriteSpecInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.GetSpecsForPower(powerID)
end

---
---@param azeriteEmpoweredItemLocation ItemLocationMixin 🔗
---@return boolean hasAnyUnselectedPowers 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.HasAnyUnselectedPowers(azeriteEmpoweredItemLocation)
end

---
---@param azeriteEmpoweredItemLocation ItemLocationMixin 🔗
---@return boolean hasBeenViewed 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.HasBeenViewed(azeriteEmpoweredItemLocation)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return boolean isAzeriteEmpoweredItem 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItem(itemLocation)
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return boolean isAzeriteEmpoweredItem 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID(itemLocation)
end

---
---@param itemInfo string 
---@param classID number ? - Specify a class ID to determine if its displayable for that class, otherwise uses the player's class if left nil
---@return boolean isAzeritePreviewSourceDisplayable 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.IsAzeritePreviewSourceDisplayable(itemInfo, classID)
end

---
---@return boolean isHeartOfAzerothEquipped 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_AzeriteEmpoweredItem.IsHeartOfAzerothEquipped()
end

---
---@param powerID number 
---@param specID number 
---@return boolean isPowerAvailableForSpec 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.IsPowerAvailableForSpec(powerID, specID)
end

---
---@param azeriteEmpoweredItemLocation ItemLocationMixin 🔗
---@param powerID number 
---@return boolean isSelected 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.IsPowerSelected(azeriteEmpoweredItemLocation, powerID)
end

---
---@param azeriteEmpoweredItemLocation ItemLocationMixin 🔗
---@param powerID number 
---@return boolean success 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.SelectPower(azeriteEmpoweredItemLocation, powerID)
end

---
---@param azeriteEmpoweredItemLocation ItemLocationMixin 🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AzeriteEmpoweredItem.SetHasBeenViewed(azeriteEmpoweredItemLocation)
end
