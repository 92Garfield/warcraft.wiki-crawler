-- C_AreaPoiInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_AreaPoiInfo
C_AreaPoiInfo = {}

---Returns area points of interest for a map.
---@param uiMapID number UiMapID
---@return number areaPoiIDs [] : AreaPOI
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AreaPoiInfo.GetAreaPOIForMap(uiMapID)
end

---Returns info for an area point of interest (e.g. World PvP objectives).
---@param uiMapID number ? : UiMapID - When omitted this appears to default to the relevant ui map id, regardless of the player's current location or any ui map being viewed.
---@param areaPoiID number AreaPOI
---@return AreaPOIInfo poiInfo 
---@since Patch 11.1.0 (2025-02-25): uiMapID argument is optional.
function C_AreaPoiInfo.GetAreaPOIInfo(uiMapID, areaPoiID)
end

---Returns the time left in seconds for an area point of interest.
---@param areaPoiID number - area point of interest ID.
---@return number secondsLeft - time left in seconds.
---@since Patch 8.1.5 (2019-03-12): Replaces C_AreaPoiInfo.GetAreaPOITimeLeft()[1]
function C_AreaPoiInfo.GetAreaPOISecondsLeft(areaPoiID)
end

---Returns all area POIInfos flagged as delves for the given map.
---@param uiMapID number 
---@return number areaPoiIDs []
function C_AreaPoiInfo.GetDelvesForMap(uiMapID)
end

---Returns all area POIInfos flagged as dragonriding races for the given map.
---@param uiMapID number 
---@return number areaPoiIDs []
function C_AreaPoiInfo.GetDragonridingRacesForMap(uiMapID)
end

---Returns all area POIInfos flagged as events for the given map.
---@param uiMapID number 
---@return number areaPoiIDs []
function C_AreaPoiInfo.GetEventsForMap(uiMapID)
end

---Returns all area POIInfos flagged as quest hubs for the given map.
---@param uiMapID number 
---@return number areaPoiIDs []
function C_AreaPoiInfo.GetQuestHubsForMap(uiMapID)
end

---Returns whether an area poi is timed.
---@param areaPoiID number 
---@return boolean isTimed 
---@return boolean hideTimerInTooltip ?
---@since Patch 10.1.0 (2023-05-02): Added hideTimerInTooltip return.
function C_AreaPoiInfo.IsAreaPOITimed(areaPoiID)
end
