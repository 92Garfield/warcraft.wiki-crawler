-- C_WarbandScene API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_WarbandScene
C_WarbandScene = {}

---
---@return number warbandSceneID 
function C_WarbandScene.GetRandomEntryID()
end

---
---@param warbandSceneID number 
---@return WarbandSceneEntry warbandSceneEntry 
---@since Patch 11.1.5 (2025-04-22): Removed qualityColor field.
function C_WarbandScene.GetWarbandSceneEntry(warbandSceneID)
end

---
---@param warbandSceneID number 
---@return boolean owned 
function C_WarbandScene.HasWarbandScene(warbandSceneID)
end

---
---@param warbandSceneID number 
---@return boolean favorite 
function C_WarbandScene.IsFavorite(warbandSceneID)
end

---
---@param searchParams WarbandSceneSearchInfo 
---@return number matchingEntryIDs []
function C_WarbandScene.SearchWarbandSceneEntries(searchParams)
end

---
---@param warbandSceneID number 
---@param favorite boolean 
function C_WarbandScene.SetFavorite(warbandSceneID, favorite)
end
