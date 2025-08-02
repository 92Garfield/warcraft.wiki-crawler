-- C_TransmogSets API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_TransmogSets
C_TransmogSets = {}

---
---@since Patch 7.2.5 (2017-06-13): Added.
function C_TransmogSets.ClearLatestSource()
end

---
---@param sourceID number 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_TransmogSets.ClearNewSource(sourceID)
end

---
---@param transmogSetID number 
---@param slot number 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_TransmogSets.ClearSetNewSourcesForSlot(transmogSetID, slot)
end

---Returns all transmog sets
---@return TransmogSetInfo sets []
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogSets.GetAllSets()
end

---
---@param transmogSetID number 
---@return number sources []
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogSets.GetAllSourceIDs(transmogSetID)
end

---
---@param transmogSetID number 
---@return number baseTransmogSetID 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogSets.GetBaseSetID(transmogSetID)
end

---
---@return TransmogSetInfo sets []
function C_TransmogSets.GetBaseSets()
end

---
---@param index number 
---@return boolean isChecked 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogSets.GetBaseSetsFilter(index)
end

---
---@return number detailsCameraID ?
---@return number vendorCameraID ?
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogSets.GetCameraIDs()
end

---
---@return number numCollected 
---@return number numTotal 
function C_TransmogSets.GetFilteredBaseSetsCounts()
end

---
---@return number numCollected 
---@return number numTotal 
function C_TransmogSets.GetFullBaseSetsCounts()
end

---
---@param transmogSetID number 
---@return boolean isFavorite 
---@return boolean isGroupFavorite 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogSets.GetIsFavorite(transmogSetID)
end

---
---@return number sourceID 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_TransmogSets.GetLatestSource()
end

---
---@param transmogSetID number TransmogSetID
---@return TransmogSetInfo set 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogSets.GetSetInfo(transmogSetID)
end

---
---@param transmogSetID number 
---@return number sourceIDs []
---@since Patch 7.2.5 (2017-06-13): Added.
function C_TransmogSets.GetSetNewSources(transmogSetID)
end

---
---@param transmogSetID number TransmogSetID
---@return TransmogSetPrimaryAppearanceInfo apppearances []
---@since Patch 9.1.0 (2021-06-29): Added. Replaces C_TransmogSets.GetSetSources()
function C_TransmogSets.GetSetPrimaryAppearances(transmogSetID)
end

---
---@param sourceID number 
---@return number setIDs []
---@since Patch 7.2.5 (2017-06-13): Added.
function C_TransmogSets.GetSetsContainingSourceID(sourceID)
end

---
---@param transmogSetID number 
---@param slot number 
---@return number sources []
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogSets.GetSourceIDsForSlot(transmogSetID, slot)
end

---Returns sources for a transmog set's slot. Only returns valid data for the current class (proficiency).
---@param transmogSetID number 
---@param slot number - InventorySlotId
---@return  sources structure - AppearanceSourceInfo[]
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogSets.GetSourcesForSlot(transmogSetID, slot)
end

---
---@return number classID 
function C_TransmogSets.GetTransmogSetsClassFilter()
end

---
---@return TransmogSetInfo sets []
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogSets.GetUsableSets()
end

---
---@return number numCollected 
---@return number numTotal 
function C_TransmogSets.GetValidBaseSetsCountsForCharacter()
end

---
---@param transmogSetID number 
---@return number classID ?
function C_TransmogSets.GetValidClassForSet(transmogSetID)
end

---
---@param transmogSetID number 
---@return TransmogSetInfo sets []
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogSets.GetVariantSets(transmogSetID)
end

---
---@return boolean hasUsableSets 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_TransmogSets.HasUsableSets()
end

---
---@param transmogSetID number 
---@return boolean isCollected 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogSets.IsBaseSetCollected(transmogSetID)
end

---
---@param sourceID number 
---@return boolean isNew 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_TransmogSets.IsNewSource(sourceID)
end

---
---@param transmogSetID number 
---@return boolean isVisible 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TransmogSets.IsSetVisible(transmogSetID)
end

---
---@return boolean isUsingDefaultBaseSetsFilters 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_TransmogSets.IsUsingDefaultBaseSetsFilters()
end

---
---@param index number 
---@param isChecked boolean 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogSets.SetBaseSetsFilter(index, isChecked)
end

---
---@since Patch 9.2.5 (2022-05-31): Added.
function C_TransmogSets.SetDefaultBaseSetsFilters()
end

---
---@param transmogSetID number 
---@return boolean hasNewSources 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_TransmogSets.SetHasNewSources(transmogSetID)
end

---
---@param transmogSetID number 
---@return boolean hasNewSources 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_TransmogSets.SetHasNewSourcesForSlot(transmogSetID)
end

---
---@param transmogSetID number 
---@param isFavorite boolean 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogSets.SetIsFavorite(transmogSetID, isFavorite)
end

---
---@param classID number 
function C_TransmogSets.SetTransmogSetsClassFilter(classID)
end
