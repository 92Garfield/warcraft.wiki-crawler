-- C_MapExplorationInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_MapExplorationInfo
C_MapExplorationInfo = {}

---Returns the explored areas for the location on a map.
---@param uiMapID number UiMapID
---@param normalizedPosition Vector2DMixin 🔗
---@return number areaID []? - AreaTable.db2
---@since Patch 8.0.1 (2018-07-17): Added.
function C_MapExplorationInfo.GetExploredAreaIDsAtPosition(uiMapID, normalizedPosition)
end

---Returns explored map textures for a map.
---@param uiMapID number UiMapID
---@return UiMapExplorationInfo overlayInfo []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_MapExplorationInfo.GetExploredMapTextures(uiMapID)
end
