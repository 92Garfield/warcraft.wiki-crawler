-- C_AchievementInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_AchievementInfo
C_AchievementInfo = {}

---
---@return boolean enabled 
function C_AchievementInfo.AreGuildAchievementsEnabled()
end

---Returns any reward item for an achievement.
---@param achievementID number - AchievementID
---@return number rewardItemID ?
---@since Patch 8.1.0 (2018-12-11): Added.
function C_AchievementInfo.GetRewardItemID(achievementID)
end

---Returns the next achievement in a series.
---@param achievementID number AchievementID
---@return number supercedingAchievements [] - Only returns the next ID in a series even though it's in a table.
---@since Patch 8.1.0 (2018-12-11): Added.
function C_AchievementInfo.GetSupercedingAchievements(achievementID)
end

---
---@param achievementId number 
---@return boolean isGuild 
function C_AchievementInfo.IsGuildAchievement(achievementId)
end

---
---@param achievementId number 
---@return boolean isValidAchievement 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_AchievementInfo.IsValidAchievement(achievementId)
end

---Sets a portrait texture for the unit being achievement compared.
---@param textureObject Texture🔗 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AchievementInfo.SetPortraitTexture(textureObject)
end
