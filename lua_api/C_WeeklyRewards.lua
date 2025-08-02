-- C_WeeklyRewards API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_WeeklyRewards
C_WeeklyRewards = {}

---
---@return boolean isCurrentPeriod 
---@since Patch 9.0.5 (2021-03-09): Added.
function C_WeeklyRewards.AreRewardsForCurrentRewardPeriod()
end

---
---@return boolean canClaimRewards 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_WeeklyRewards.CanClaimRewards()
end

---
---@param id number 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_WeeklyRewards.ClaimReward(id)
end

---
---@since Patch 9.0.1 (2020-10-13): Added.
function C_WeeklyRewards.CloseInteraction()
end

---
---@param type Enum.WeeklyRewardChestThresholdType ?
---@return WeeklyRewardActivityInfo activities []
---@since Patch 9.2.0 (2022-02-22): Added raidString field.
function C_WeeklyRewards.GetActivities(type)
end

---
---@param type Enum.WeeklyRewardChestThresholdType 
---@return WeeklyRewardActivityEncounterInfo info []
---@since Patch 9.0.5 (2021-03-09): Added.
function C_WeeklyRewards.GetActivityEncounterInfo(type)
end

---
---@return ConquestWeeklyProgress weeklyProgress 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_WeeklyRewards.GetConquestWeeklyProgress()
end

---
---@param activityTierID number 
---@return number difficultyID 
function C_WeeklyRewards.GetDifficultyIDForActivityTier(activityTierID)
end

---
---@param id number 
---@return string hyperlink 
---@return string upgradeHyperlink 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_WeeklyRewards.GetExampleRewardItemHyperlinks(id)
end

---
---@param itemDBID string 
---@return string hyperlink 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_WeeklyRewards.GetItemHyperlink(itemDBID)
end

---
---@param activityTierID number 
---@param level number 
---@return boolean hasSeasonData 
---@return number nextActivityTierID ?
---@return number nextLevel ?
---@return number itemLevel ?
function C_WeeklyRewards.GetNextActivitiesIncrease(activityTierID, level)
end

---
---@param mythicPlusLevel number 
---@return boolean hasSeasonData 
---@return number nextMythicPlusLevel ?
---@return number itemLevel ?
---@since Patch 9.0.5 (2021-03-09): Added.
function C_WeeklyRewards.GetNextMythicPlusIncrease(mythicPlusLevel)
end

---
---@return number numHeroic 
---@return number numMythic 
---@return number numMythicPlus 
function C_WeeklyRewards.GetNumCompletedDungeonRuns()
end

---
---@return boolean hasAvailableRewards 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_WeeklyRewards.HasAvailableRewards()
end

---
---@return boolean hasGeneratedRewards 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_WeeklyRewards.HasGeneratedRewards()
end

---
---@return boolean isInteracting 
---@since Patch 9.0.5 (2021-03-09): Added.
function C_WeeklyRewards.HasInteraction()
end

---
---@return boolean isRetired 
function C_WeeklyRewards.IsWeeklyChestRetired()
end

---
---@since Patch 9.2.5 (2022-05-31): Added.
function C_WeeklyRewards.OnUIInteract()
end

---
---@return boolean showRetirementMessage 
function C_WeeklyRewards.ShouldShowFinalRetirementMessage()
end

---
---@return boolean showRetirementMessage 
function C_WeeklyRewards.ShouldShowRetirementMessage()
end
