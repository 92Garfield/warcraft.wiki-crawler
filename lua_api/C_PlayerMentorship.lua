-- C_PlayerMentorship API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_PlayerMentorship
C_PlayerMentorship = {}

---
---@return number level ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PlayerMentorship.GetMentorLevelRequirement()
end

---
---@return number achievementIDs []
---@return number optionalAchievementIDs []
---@return number optionalCompleteAtLeastCount 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_PlayerMentorship.GetMentorRequirements()
end

---
---@param playerLocation PlayerLocationMixin 🔗
---@return Enum.PlayerMentorshipStatus status 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PlayerMentorship.GetMentorshipStatus(playerLocation)
end

---
---@return boolean isConsideredNewcomer 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PlayerMentorship.IsActivePlayerConsideredNewcomer()
end

---
---@return boolean isRestricted 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PlayerMentorship.IsMentorRestricted()
end
