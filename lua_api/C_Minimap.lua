-- C_Minimap API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Minimap
C_Minimap = {}

---
---@return boolean CanTrackBattlePets 
function C_Minimap.CanTrackBattlePets()
end

---
function C_Minimap.ClearAllTracking()
end

---
function C_Minimap.ClearMinimapInsetInfo()
end

---
---@param filterType Enum.MinimapTrackingFilter 
---@return boolean defaultValue 
function C_Minimap.GetDefaultTrackingValue(filterType)
end

---
---@return boolean draw 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Minimap.GetDrawGroundTextures()
end

---
---@return number worldEffectCount 
function C_Minimap.GetNumQuestPOIWorldEffects()
end

---
---@return number numTrackingTypes 
function C_Minimap.GetNumTrackingTypes()
end

---
---@param index number ?
---@return number textureCoordsX 
---@return number textureCoordsY 
---@return number textureCoordsZ 
---@return number textureCoordsW 
function C_Minimap.GetObjectIconTextureCoords(index)
end

---
---@param index number ?
---@return number textureCoordsX 
---@return number textureCoordsY 
---@return number textureCoordsZ 
---@return number textureCoordsW 
function C_Minimap.GetPOITextureCoords(index)
end

---
---@param spellIndex number 
---@return MinimapScriptTrackingFilter trackingType 
function C_Minimap.GetTrackingFilter(spellIndex)
end

---
---@param spellIndex number 
---@return MinimapScriptTrackingInfo trackingInfo ?
---@since Patch 11.0.0 (2024-07-23): Returns a structured table.
The old signature was name, textureFileID, active, type, subType, spellID = C_Minimap.GetTrackingInfo(spellIndex)
function C_Minimap.GetTrackingInfo(spellIndex)
end

---
---@return number uiMapID ? : UiMapID
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Minimap.GetUiMapID()
end

---
---@return number yards 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Minimap.GetViewRadius()
end

---
---@param filterType Enum.MinimapTrackingFilter 
---@return boolean isFiltered 
function C_Minimap.IsFilteredOut(filterType)
end

---
---@param questID number 
---@return boolean isInside 
function C_Minimap.IsInsideQuestBlob(questID)
end

---
---@return boolean isIgnored 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Minimap.IsRotateMinimapIgnored()
end

---
---@return boolean IsTrackingAccountCompletedQuests 
function C_Minimap.IsTrackingAccountCompletedQuests()
end

---
---@return boolean isTrackingBattlePets 
function C_Minimap.IsTrackingBattlePets()
end

---
---@return boolean isTrackingHiddenQuests 
function C_Minimap.IsTrackingHiddenQuests()
end

---
---@param draw boolean 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Minimap.SetDrawGroundTextures(draw)
end

---
---@param ignore boolean 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Minimap.SetIgnoreRotateMinimap(ignore)
end

---
---@param minAngle number 
---@param maxAngle number 
---@param scalar number 
function C_Minimap.SetMinimapInsetInfo(minAngle, maxAngle, scalar)
end

---
---@param index number 
---@param on boolean 
function C_Minimap.SetTracking(index, on)
end

---
---@return boolean shouldUse 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Minimap.ShouldUseHybridMinimap()
end
