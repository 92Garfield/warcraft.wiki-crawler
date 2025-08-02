-- C_InvasionInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_InvasionInfo
C_InvasionInfo = {}

---Returns true if invasions are active in the same physical area as the player.
---@return boolean areInvasionsAvailable 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_InvasionInfo.AreInvasionsAvailable()
end

---Returns any invasion for a map.
---@param uiMapID number 
---@return  invasionID number (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_InvasionInfo.GetInvasionForUiMapID(uiMapID)
end

---Returns invasion info.
---@param invasionID  number
---@return  invasionInfo structure - InvasionMapInfo
---@since Patch 8.0.1 (2018-07-17): Added.
function C_InvasionInfo.GetInvasionInfo(invasionID)
end

---Returns the time left for an invasion.
---@param invasionID  number
---@return number timeLeftMinutes ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_InvasionInfo.GetInvasionTimeLeft(invasionID)
end
