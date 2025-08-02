-- C_SuperTrack API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_SuperTrack
C_SuperTrack = {}

---
function C_SuperTrack.ClearAllSuperTracked()
end

---
function C_SuperTrack.ClearSuperTrackedContent()
end

---
function C_SuperTrack.ClearSuperTrackedMapPin()
end

---Returns the type of the location currently being tracked as the highest priority, if one exists.
---@return Enum.SuperTrackingType type ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SuperTrack.GetHighestPrioritySuperTrackingType()
end

---
---@param uiMapID number 
---@return number x 
---@return number y 
---@return string waypointDescription 
function C_SuperTrack.GetNextWaypointForMap(uiMapID)
end

---
---@return Enum.ContentTrackingType trackableType 
function C_SuperTrack.GetSuperTrackedContent()
end

---
---@return string name 
---@return string description 
function C_SuperTrack.GetSuperTrackedItemName()
end

---
---@return Enum.SuperTrackingMapPinType type 
function C_SuperTrack.GetSuperTrackedMapPin()
end

---Returns the quest ID currently being tracked, if set. Replaces `GetSuperTrackedQuestID`.
---@return number questID ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SuperTrack.GetSuperTrackedQuestID()
end

---
---@return string vignetteGUID ? : WOWGUID
function C_SuperTrack.GetSuperTrackedVignette()
end

---Returns true if the location of any point is actively being tracked.
---@return boolean isSuperTracking 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SuperTrack.IsSuperTrackingAnything()
end

---
---@return boolean isSuperTracking 
function C_SuperTrack.IsSuperTrackingContent()
end

---Returns true if the current location being tracked is your own corpse.
---@return boolean isSuperTracking 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SuperTrack.IsSuperTrackingCorpse()
end

---
---@return boolean isSuperTracking 
function C_SuperTrack.IsSuperTrackingMapPin()
end

---Returns true if the current location being tracked is a quest indicator.
---@return boolean isSuperTracking 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SuperTrack.IsSuperTrackingQuest()
end

---Returns true if the current location being tracked is a user-defined waypoint, as set via the `C_Map` API.
---@return boolean isSuperTracking 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SuperTrack.IsSuperTrackingUserWaypoint()
end

---
---@param trackableType Enum.ContentTrackingType 
function C_SuperTrack.SetSuperTrackedContent(trackableType)
end

---
---@param type Enum.SuperTrackingMapPinType 
function C_SuperTrack.SetSuperTrackedMapPin(type)
end

---Changes the quest ID actively being tracked. Replaces `SetSuperTrackedQuestID`.
---@param questID number 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SuperTrack.SetSuperTrackedQuestID(questID)
end

---Controls whether or not a user waypoint should be tracked. Set to true if the user waypoint should be tracked, or false if not.
---@param superTracked boolean 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SuperTrack.SetSuperTrackedUserWaypoint(superTracked)
end

---
---@param vignetteGUID string WOWGUID
function C_SuperTrack.SetSuperTrackedVignette(vignetteGUID)
end
