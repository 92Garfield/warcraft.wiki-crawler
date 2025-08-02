-- C_TaxiMap API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_TaxiMap
C_TaxiMap = {}

---Returns information on taxi nodes at the current flight master.
---@param uiMapID number UiMapID
---@return TaxiNodeInfo taxiNodes []
---@since Patch 9.2.0 (2022-02-22): Added useSpecialIcon, specialIconCostString fields.
function C_TaxiMap.GetAllTaxiNodes(uiMapID)
end

---Returns information on taxi nodes for a given map, without considering the current flight master.
---@param uiMapID number UiMapID
---@return MapTaxiNodeInfo mapTaxiNodes []
---@since Patch 9.0.1 (2020-10-13): Added textureKit field.
function C_TaxiMap.GetTaxiNodesForMap(uiMapID)
end

---Returns whether taxi nodes should be shown on a map.
---@param uiMapID number UiMapID
---@return boolean shouldShowNodes 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_TaxiMap.ShouldMapShowTaxiNodes(uiMapID)
end
