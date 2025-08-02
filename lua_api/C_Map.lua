-- C_Map API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Map
C_Map = {}

---
---@param uiMapID number 
---@return boolean canSet 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Map.CanSetUserWaypointOnMap(uiMapID)
end

---Clears the currently assigned user waypoint, if one exists.
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Map.ClearUserWaypoint()
end

---
---@since Patch 8.3.0 (2020-01-14): Added.
function C_Map.CloseWorldMapInteraction()
end

---Returns a map subzone name.
---@param areaID number AreaTable.db2
---@return string name 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetAreaInfo(areaID)
end

---Returns the current UI map for the given unit. Only works for the player and group members.
---@param unitToken string UnitId
---@return number uiMapID ? : UiMapID - Returns the "lowest" map the unit is on. For example, if a unit is in a microdungeon it will return that instead of the zone or continent map.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetBestMapForUnit(unitToken)
end

---Returns the maps for a bounty.
---@param bountySetID number - from BountySet.db2
---@return number mapIDs [] : UiMapID
---@since Patch 8.1.0 (2018-12-11): Added.
function C_Map.GetBountySetMaps(bountySetID)
end

---Returns the world map id.
---@return  uiMapID Returns 947 (Azeroth)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetFallbackWorldMapID()
end

---Returns the background atlas for a map.
---@param uiMapID number UiMapID
---@return string atlasName - AtlasID
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetMapArtBackgroundAtlas(uiMapID)
end

---Returns the position for the "Click to Zoom In" hint text on flight maps.
---@param uiMapID number UiMapID
---@return Enum.MapCanvasPosition position 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetMapArtHelpTextPosition(uiMapID)
end

---Returns the art for a (phased) map.
---@param uiMapID number UiMapID
---@return number uiMapArtID 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetMapArtID(uiMapID)
end

---Returns the art layer textures for a map.
---@param uiMapID number UiMapID
---@param layerIndex number 
---@return number textures []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetMapArtLayerTextures(uiMapID, layerIndex)
end

---Returns the art layers for a map.
---@param uiMapID number UiMapID
---@return UiMapLayerInfo layerInfo []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetMapArtLayers(uiMapID)
end

---
---@param uiMapID number 
---@return Enum.MapCanvasPosition position 
function C_Map.GetMapArtZoneTextPosition(uiMapID)
end

---Returns the poi banners for a map.
---@param uiMapID number UiMapID
---@return MapBannerInfo mapBanners []
---@since Patch 8.1.0 (2018-12-11): Added uiTextureKit field.
function C_Map.GetMapBannersForMap(uiMapID)
end

---Returns info for the children of a map.
---@param uiMapID number UiMapID
---@param mapType Enum.UIMapType ?  - Filters results by a specific map type.
---@param allDescendants boolean ?  - Whether to recurse on each child or not.
---@return UiMapDetails info []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetMapChildrenInfo(uiMapID, mapType, allDescendants)
end

---Returns whether group member pins should be hidden.
---@param uiMapID number UiMapID
---@return boolean hideIcons 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetMapDisplayInfo(uiMapID)
end

---Returns the map group for a map.
---@param uiMapID number UiMapID
---@return number uiMapGroupID 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetMapGroupID(uiMapID)
end

---Returns the floors for a map group.
---@param uiMapGroupID number 
---@return table info UiMapGroupMemberInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetMapGroupMembersInfo(uiMapGroupID)
end

---Returns a map highlight pin for a location.
---@param uiMapID number UiMapID
---@param x number 
---@param y number 
---@return number fileDataID - FileDataID
---@return string atlasID - AtlasID
---@return number texturePercentageX 
---@return number texturePercentageY 
---@return number textureX 
---@return number textureY 
---@return number scrollChildX 
---@return number scrollChildY 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetMapHighlightInfoAtPosition(uiMapID, x, y)
end

---
---@param uiMapID number 
---@return number fileDataID : fileID
---@return string atlasID : textureAtlas
---@return number texturePercentageX 
---@return number texturePercentageY 
---@return number textureX 
---@return number textureY 
---@return number scrollChildX 
---@return number scrollChildY 
function C_Map.GetMapHighlightPulseInfo(uiMapID)
end

---Returns map information.
---@param uiMapID number UiMapID
---@return UiMapDetails info 
---@since Patch 8.0.1 (2018-07-17): Added. Replaces GetMapInfo() and GetMapNameByID()
function C_Map.GetMapInfo(uiMapID)
end

---Returns info for any child or adjacent maps at a position on the map.
---@param uiMapID number UiMapID
---@param x number [0.0 - 1.0]
---@param y number [0.0 - 1.0]
---@param ignoreZoneMapPositionData boolean ?
---@return UiMapDetails info 
---@since Patch 10.1.0 (2023-05-02): Added ignoreZoneMapPositionData argument.
function C_Map.GetMapInfoAtPosition(uiMapID, x, y, ignoreZoneMapPositionData)
end

---Returns the suggested player and battle pet levels for a map.
---@param uiMapID number UiMapID
---@return number playerMinLevel 
---@return number playerMaxLevel 
---@return number petMinLevel ? = 0
---@return number petMaxLevel ? = 0
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetMapLevels(uiMapID)
end

---Returns the map pins that link to another map.
---@param uiMapID number UiMapID
---@return MapLinkInfo mapLinks []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetMapLinksForMap(uiMapID)
end

---Translates a world map position to a map position.
---@param continentID number - InstanceID of the continent
---@param worldPosition Vector2DMixin 🔗
---@param overrideUiMapID number ? - If you don't set this to the map that you want a relative position in, it defaults to the mapID for the player's continent, essentially normalizing world coordinates (i.e. 478.1,598.2) into continent map coordinates (i.e. 0.44,0.61)
---@return number uiMapID : UiMapID
---@return Vector2DMixin mapPosition 🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetMapPosFromWorldPos(continentID, worldPosition, overrideUiMapID)
end

---
---@param uiMapID number UiMapID
---@param topUiMapID number 
---@return number minX 
---@return number maxX 
---@return number minY 
---@return number maxY 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetMapRectOnMap(uiMapID, topUiMapID)
end

---Returns the size in yards of the area represented by the map.
---@param uiMapID number 
---@return number width 
---@return number height 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Map.GetMapWorldSize(uiMapID)
end

---#noinstance - This only works outdoors and not in instanced content (dungeons/raids/battlegrounds/arena).
---@param uiMapID number UiMapID
---@param unitToken string UnitToken
---@return table position ? : vector2
---@since Patch 8.0.1 (2018-07-17): Changed to C_Map.GetPlayerMapPosition() and returns a vector2d.
function C_Map.GetPlayerMapPosition(uiMapID, unitToken)
end

---Returns the UiMapPoint structure for the currently assigned user waypoint, if one exists.
---@param hyperlink string ? : worldmapLink
---@return  point UiMapPoint
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Map.GetUserWaypoint(hyperlink)
end

---Returns the UiMapPoint structure for the currently assigned user waypoint, if one exists.
---@param hyperlink string ? : worldmapLink
---@return  point UiMapPoint
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Map.GetUserWaypointFromHyperlink(hyperlink)
end

---Returns a worldmap hyperlink for the currently assigned user waypoint, if one exists.
---@return string hyperlink : worldmapLink
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Map.GetUserWaypointHyperlink()
end

---Returns the map position for a user waypoint that is placed on a specified map ID.
---@param uiMapID number UiMapID
---@return Vector2DMixin mapPosition 🔗
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Map.GetUserWaypointPositionForMap(uiMapID)
end

---Translates a map position to a world map position.
---@param uiMapID number UiMapID
---@param mapPosition Vector2DMixin 🔗 - as returned from C_Map.GetPlayerMapPosition()
---@return number continentID : InstanceID
---@return Vector2DMixin worldPosition 🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.GetWorldPosFromMapPos(uiMapID, mapPosition)
end

---Returns true if a user waypoint has been assigned.
---@return boolean hasUserWaypoint 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Map.HasUserWaypoint()
end

---
---@param uiMapID number 
---@return boolean isCityMap 
function C_Map.IsCityMap(uiMapID)
end

---
---@param uiMapID number 
---@return boolean isValid 
function C_Map.IsMapValidForNavBarDropdown(uiMapID)
end

---Returns true if the map has art and can be displayed by the FrameXML.
---@param uiMapID number UiMapID
---@return boolean hasArt 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.MapHasArt(uiMapID)
end

---#nocombat - This cannot be called while in combat.
---@param uiMapID number ?
function C_Map.OpenWorldMap(uiMapID)
end

---Preloads textures for a map.
---@param uiMapID number UiMapID
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Map.RequestPreloadMap(uiMapID)
end

---Changes the user-assigned waypoint to the specified location, encoded as a UiMapPoint structure.
---@param point  UiMapPoint
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Map.SetUserWaypoint(point)
end
