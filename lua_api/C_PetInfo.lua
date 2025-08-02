-- C_PetInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_PetInfo
C_PetInfo = {}

---Returns the pet tamers on a map.
---@param uiMapID number UiMapID
---@return PetTamerMapInfo petTamers []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PetInfo.GetPetTamersForMap(uiMapID)
end

---
---@param actionID number 
---@return number spellID ?
function C_PetInfo.GetSpellForPetAction(actionID)
end

---
---@param actionID number 
---@return boolean isPassive 
function C_PetInfo.IsPetActionPassive(actionID)
end

---
---@param petNumber number ?
function C_PetInfo.PetAbandon(petNumber)
end

---
---@param name string 
---@param petNumber number ?
---@param declensions string []?
function C_PetInfo.PetRename(name, petNumber, declensions)
end
