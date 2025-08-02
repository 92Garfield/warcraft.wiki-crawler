-- C_ContentTracking API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ContentTracking
C_ContentTracking = {}

---
---@param trackableType Enum.ContentTrackingType 
---@return Enum.ContentTrackingResult result 
function C_ContentTracking.GetBestMapForTrackable(trackableType)
end

---
---@return boolean isEnabled 
function C_ContentTracking.GetCollectableSourceTrackingEnabled()
end

---
---@return Enum.ContentTrackingType collectableSourceTypes []
function C_ContentTracking.GetCollectableSourceTypes()
end

---
---@param type Enum.ContentTrackingType 
---@return Enum.ContentTrackingTargetType targetType 
function C_ContentTracking.GetCurrentTrackingTarget(type)
end

---
---@param journalEncounterID number 
---@return EncounterTrackingInfo trackingInfo 
function C_ContentTracking.GetEncounterTrackingInfo(journalEncounterID)
end

---
---@param trackableType Enum.ContentTrackingType 
---@return Enum.ContentTrackingResult result 
function C_ContentTracking.GetNextWaypointForTrackable(trackableType)
end

---
---@param targetType Enum.ContentTrackingTargetType 
---@return string objectiveText 
function C_ContentTracking.GetObjectiveText(targetType)
end

---
---@param trackableType Enum.ContentTrackingType 
---@return string title 
function C_ContentTracking.GetTitle(trackableType)
end

---
---@param trackableType Enum.ContentTrackingType 
---@return Enum.ContentTrackingResult result 
function C_ContentTracking.GetTrackablesOnMap(trackableType)
end

---
---@param trackableType Enum.ContentTrackingType 
---@return number entryIDs []
function C_ContentTracking.GetTrackedIDs(trackableType)
end

---
---@param collectableEntryID number 
---@return VendorTrackingInfo vendorTrackingInfo 
function C_ContentTracking.GetVendorTrackingInfo(collectableEntryID)
end

---
---@param trackableType Enum.ContentTrackingType 
---@return string waypointText 
function C_ContentTracking.GetWaypointText(trackableType)
end

---If successful, returns if the trackable is either on your current map, or if we're able to determine a route to that map from your location via waypoints.
---@param trackableType Enum.ContentTrackingType 
---@return Enum.ContentTrackingResult result 
function C_ContentTracking.IsNavigable(trackableType)
end

---
---@param type Enum.ContentTrackingType 
---@return boolean isTrackable 
function C_ContentTracking.IsTrackable(type)
end

---
---@param type Enum.ContentTrackingType 
---@return boolean isTracking 
function C_ContentTracking.IsTracking(type)
end

---
---@param type Enum.ContentTrackingType 
---@return Enum.ContentTrackingError error ?
function C_ContentTracking.StartTracking(type)
end

---
---@param type Enum.ContentTrackingType 
function C_ContentTracking.StopTracking(type)
end

---
---@param type Enum.ContentTrackingType 
---@return Enum.ContentTrackingError error ?
function C_ContentTracking.ToggleTracking(type)
end
