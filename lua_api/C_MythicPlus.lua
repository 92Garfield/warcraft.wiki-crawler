-- C_MythicPlus API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_MythicPlus
C_MythicPlus = {}

---Returns a table listing the current AffixIDs that are available this week.
---@return MythicPlusKeystoneAffix affixIDs []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_MythicPlus.GetCurrentAffixes()
end

---Returns the current Mythic Plus season.
---@return number seasonID 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_MythicPlus.GetCurrentSeason()
end

---
---@return number displaySeasonID 
---@return number milestoneSeasonID 
---@return number rewardSeasonID 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_MythicPlus.GetCurrentSeasonValues()
end

---
---@return number seasonID ?
function C_MythicPlus.GetCurrentUIDisplaySeason()
end

---
---@param keystoneLevel number 
---@return number sequenceLevel ?
function C_MythicPlus.GetEndOfRunGearSequenceLevel(keystoneLevel)
end

---
---@return number challengeMapId 
---@return number level 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_MythicPlus.GetLastWeeklyBestInformation()
end

---
---@return number challengeMapID 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_MythicPlus.GetOwnedKeystoneChallengeMapID()
end

---
---@return number keyStoneLevel 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_MythicPlus.GetOwnedKeystoneLevel()
end

---
---@return number mapID 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_MythicPlus.GetOwnedKeystoneMapID()
end

---
---@param difficultyLevel number 
---@return number weeklyRewardLevel 
---@return number endOfRunRewardLevel 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_MythicPlus.GetRewardLevelForDifficultyLevel(difficultyLevel)
end

---
---@param keystoneLevel number 
---@return number rewardLevel ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_MythicPlus.GetRewardLevelFromKeystoneLevel(keystoneLevel)
end

---
---@param includePreviousWeeks boolean ? = false
---@param includeIncompleteRuns boolean ? = false
---@return MythicPlusRunInfo runs []
---@since Patch 9.1.0 (2021-06-29): Added runScore field.
function C_MythicPlus.GetRunHistory(includePreviousWeeks, includeIncompleteRuns)
end

---Gets the active players best runs by the seasonal tracked affixes as well as their overall score for the current season.
---@param mapChallengeModeID number MapChallengeMode.ID
---@return MythicPlusAffixScoreInfo affixScores []
---@since Patch 9.1.0 (2021-06-29): Added.
function C_MythicPlus.GetSeasonBestAffixScoreInfoForMap(mapChallengeModeID)
end

---Returns your best intime and overtime runs of the season, irrespective of the run's affix, or the current week's affix.
---@param mapChallengeModeID number MapChallengeMode.ID
---@return MapSeasonBestInfo intimeInfo ? - your highest rating run, that was completed in time. Nil if you've not completed any run in time this season.
---@return MapSeasonBestInfo overtimeInfo ? - your highest rating run, that was not completed in time. Nil if you've only ever completed runs in time this season.
---@since Patch 9.1.0 (2021-06-29): Added dungeonScore field.
function C_MythicPlus.GetSeasonBestForMap(mapChallengeModeID)
end

---
---@return number bestSeasonScore 
---@return number bestSeason 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_MythicPlus.GetSeasonBestMythicRatingFromThisExpansion()
end

---
---@param mapChallengeModeID number MapChallengeMode.ID
---@return number durationSec 
---@return number level 
---@return MythicPlusDate completionDate 
---@since Patch 9.1.0 (2021-06-29): Added dungeonScore return.
function C_MythicPlus.GetWeeklyBestForMap(mapChallengeModeID)
end

---
---@return number currentWeekBestLevel 
---@return number weeklyRewardLevel 
---@return number nextDifficultyWeeklyRewardLevel 
---@return number nextBestLevel 
---@since Patch 8.1.0 (2018-12-11): Added nextBestLevel return.
function C_MythicPlus.GetWeeklyChestRewardLevel()
end

---
---@return boolean isMythicPlusActive 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_MythicPlus.IsMythicPlusActive()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_MythicPlus.RequestCurrentAffixes()
end

---Loads various information to allow corresponding C_MythicPlus functions to return valid values.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_MythicPlus.RequestMapInfo()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_MythicPlus.RequestRewards()
end
