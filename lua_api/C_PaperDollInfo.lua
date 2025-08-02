-- C_PaperDollInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_PaperDollInfo
C_PaperDollInfo = {}

---
---@return boolean canAutoEquip 
function C_PaperDollInfo.CanAutoEquipCursorItem()
end

---
---@param slotIndex number 
---@return boolean canOccupySlot 
function C_PaperDollInfo.CanCursorCanGoInSlot(slotIndex)
end

---
---@param armor number 
---@param attackerLevel number 
---@return number effectiveness 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PaperDollInfo.GetArmorEffectiveness(armor, attackerLevel)
end

---
---@param armor number 
---@return number effectiveness ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PaperDollInfo.GetArmorEffectivenessAgainstTarget(armor)
end

---
---@param unit string UnitId
---@param equipmentSlotIndex number 
---@return number azeritePowerIDs []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PaperDollInfo.GetInspectAzeriteItemEmpoweredChoices(unit, equipmentSlotIndex)
end

---
---@param unitString string 
---@return number achievementPoints 
---@return number numMembers 
---@return string guildName 
---@return string realmName 
function C_PaperDollInfo.GetInspectGuildInfo(unitString)
end

---Returns the average item level for the unit being inspected.
---@param unit string UnitId
---@return number equippedItemLevel 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PaperDollInfo.GetInspectItemLevel(unit)
end

---
---@return InspectPVPData ratedBGBlitzData 
function C_PaperDollInfo.GetInspectRatedBGBlitzData()
end

---
---@return InspectRatedBGData ratedBGData 
function C_PaperDollInfo.GetInspectRatedBGData()
end

---
---@return InspectPVPData ratedSoloShuffleData 
function C_PaperDollInfo.GetInspectRatedSoloShuffleData()
end

---
---@return number minItemLevel ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PaperDollInfo.GetMinItemLevel()
end

---
---@param unit string UnitId
---@return number stagger 
---@return number staggerAgainstTarget ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PaperDollInfo.GetStaggerPercentage(unit)
end

---
---@param slotName stringView 
---@return boolean isEnabled 
function C_PaperDollInfo.IsInventorySlotEnabled(slotName)
end

---
---@return boolean offhandHasShield 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PaperDollInfo.OffhandHasShield()
end

---
---@return boolean offhandHasWeapon 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PaperDollInfo.OffhandHasWeapon()
end
