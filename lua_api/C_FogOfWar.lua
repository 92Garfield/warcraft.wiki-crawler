-- C_FogOfWar API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_FogOfWar
C_FogOfWar = {}

---Returns the fog of war for an Island Expedition map.
---@param uiMapID number UiMapID
---@return number fogOfWarID ?  : UiMapFogOfWar.db2
---@since Patch 8.0.1 (2018-07-17): Added.
function C_FogOfWar.GetFogOfWarForMap(uiMapID)
end

---Returns info for the fog of war for an Island Expedition map.
---@param fogOfWarID number UiMapFogOfWar.db2
---@return FogOfWarInfo fogOfWarInfo ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_FogOfWar.GetFogOfWarInfo(fogOfWarID)
end
