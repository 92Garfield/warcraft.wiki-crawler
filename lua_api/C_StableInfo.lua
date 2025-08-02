-- C_StableInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_StableInfo
C_StableInfo = {}

---
function C_StableInfo.ClosePetStables()
end

---
---@return PetInfo activePets []
function C_StableInfo.GetActivePetList()
end

---
---@return PetSpecInfo petSpecInfos []
function C_StableInfo.GetAvailablePetSpecInfos()
end

---
---@return number numActivePets 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_StableInfo.GetNumActivePets()
end

---
---@return number numStablePets 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_StableInfo.GetNumStablePets()
end

---
---@param index number 
---@return string foodTypes []
function C_StableInfo.GetStablePetFoodTypes(index)
end

---
---@param index number 
---@return PetInfo petInfo ?
function C_StableInfo.GetStablePetInfo(index)
end

---
---@return PetInfo stabledPets []
function C_StableInfo.GetStabledPetList()
end

---
---@return boolean isAtStableMaster 
function C_StableInfo.IsAtStableMaster()
end

---
---@param slot number 
---@return boolean isFavorite 
function C_StableInfo.IsPetFavorite(slot)
end

---
---@param index number 
function C_StableInfo.PickupStablePet(index)
end

---
---@param slot number 
---@param isFavorite boolean 
function C_StableInfo.SetPetFavorite(slot, isFavorite)
end

---
---@param index number 
---@param slot number 
function C_StableInfo.SetPetSlot(index, slot)
end
