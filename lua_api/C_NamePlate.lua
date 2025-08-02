-- C_NamePlate API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_NamePlate
C_NamePlate = {}

---Returns the nameplate for a unit.
---@param unit string UnitToken
---@param isSecure boolean ? - If protected nameplates for friendly units while in instanced areas should be returned.
---@return Nameplate nameplate ? : Frame|NamePlateBaseMixin
function C_NamePlate.GetNamePlateForUnit(unit, isSecure)
end

---Returns the currently visible nameplates.
---@param isSecure boolean ? - Whether protected nameplates for friendly units while in instanced areas should be returned.
---@return Nameplate nameplates [] : Frame|NamePlateBaseMixin
function C_NamePlate.GetNamePlates(isSecure)
end

---
---@param clickthrough boolean 
function C_NamePlate.SetNamePlateEnemyClickThrough(clickthrough)
end

---
---@param left number 
---@param right number 
---@param top number 
---@param bottom number 
function C_NamePlate.SetNamePlateEnemyPreferredClickInsets(left, right, top, bottom)
end

---
---@param width number 
---@param height number 
function C_NamePlate.SetNamePlateEnemySize(width, height)
end

---
---@param clickthrough boolean 
function C_NamePlate.SetNamePlateFriendlyClickThrough(clickthrough)
end

---
---@param left number 
---@param right number 
---@param top number 
---@param bottom number 
function C_NamePlate.SetNamePlateFriendlyPreferredClickInsets(left, right, top, bottom)
end

---
---@param width number 
---@param height number 
function C_NamePlate.SetNamePlateFriendlySize(width, height)
end

---
---@param clickthrough boolean 
function C_NamePlate.SetNamePlateSelfClickThrough(clickthrough)
end

---
---@param left number 
---@param right number 
---@param top number 
---@param bottom number 
function C_NamePlate.SetNamePlateSelfPreferredClickInsets(left, right, top, bottom)
end

---
---@param width number 
---@param height number 
function C_NamePlate.SetNamePlateSelfSize(width, height)
end

---
---@param verticalInset number - The clamping inset from the top and bottom of the screen.
---@param unk number - Unknown
function C_NamePlate.SetTargetClampingInsets(verticalInset, unk)
end
