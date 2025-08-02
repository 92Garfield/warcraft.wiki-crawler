-- C_LFGInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_LFGInfo
C_LFGInfo = {}

---
---@param lfgDungeonID number 
---@return boolean areCrossFactionGroupQueuesAllowed 
function C_LFGInfo.AreCrossFactionGroupQueuesAllowed(lfgDungeonID)
end

---Returns true if the player is allowed to use group finder tools, or false and a reason string if not.
---@return boolean canUse 
---@return string failureReason 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LFGInfo.CanPlayerUseGroupFinder()
end

---Returns true if the player is allowed to queue for instanced dungeon content, or false and a reason string if not.
---@return boolean canUse 
---@return string failureReason 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LFGInfo.CanPlayerUseLFD()
end

---Returns true if the player is allowed to queue for instanced raid content, or false and a reason string if not.
---@return boolean canUse 
---@return string failureReason 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LFGInfo.CanPlayerUseLFR()
end

---Returns true if the player is allowed to queue for instanced PvP content, or false and a reason string if not.
---@return boolean canUse 
---@return string failureReason 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LFGInfo.CanPlayerUsePVP()
end

---Returns true if the player is allowed to use the premade group finder, or false and a reason string if not.
---@return boolean canUse 
---@return string failureReason 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LFGInfo.CanPlayerUsePremadeGroup()
end

---
---@return boolean canUse 
---@return string failureReason 
function C_LFGInfo.CanPlayerUseScenarioFinder()
end

---
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LFGInfo.ConfirmLfgExpandSearch()
end

---
---@param lfgDungeonID number 
---@return boolean doesActivePartyMeetPremadeLaunchCount 
function C_LFGInfo.DoesActivePartyMeetPremadeLaunchCount(lfgDungeonID)
end

---
---@param lfgDungeonID number 
---@return boolean doesCrossFactionQueueRequireFullPremade 
function C_LFGInfo.DoesCrossFactionQueueRequireFullPremade(lfgDungeonID)
end

---Returns any dungeons for a LFG category you're queued up for.
---@param category number 
---@return number lfgDungeonIDs []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_LFGInfo.GetAllEntriesForCategory(category)
end

---
---@param lfgDungeonID number 
---@return LFGDungeonInfo dungeonInfo 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_LFGInfo.GetDungeonInfo(lfgDungeonID)
end

---
---@return LFGLockInfo lockInfo []
---@since Patch 9.0.1 (2020-10-13): Moved to C_LFGInfo.GetLFDLockStates()
function C_LFGInfo.GetLFDLockStates()
end

---
---@param currPlayerLevel number 
---@param isRaid boolean 
---@return number instances []
function C_LFGInfo.GetLevelUpInstances(currPlayerLevel, isRaid)
end

---
---@return number maxLevel ?
---@return boolean isLevelReduced 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_LFGInfo.GetRoleCheckDifficultyDetails()
end

---Returns true if a dungeon name has to be hidden in the UI.
---@param dungeonID number 
---@return boolean shouldHide 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_LFGInfo.HideNameFromUI(dungeonID)
end

---
---@return boolean enabled 
function C_LFGInfo.IsGroupFinderEnabled()
end

---
---@return boolean result 
function C_LFGInfo.IsInLFGFollowerDungeon()
end

---
---@return boolean enabled 
function C_LFGInfo.IsLFDEnabled()
end

---
---@param dungeonID number 
---@return boolean result 
function C_LFGInfo.IsLFGFollowerDungeon(dungeonID)
end

---
---@return boolean enabled 
function C_LFGInfo.IsLFREnabled()
end
