-- C_ChallengeMode API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ChallengeMode
C_ChallengeMode = {}

---
---@param itemLocation ItemLocationMixin 🔗
---@return boolean canUse 
---@since Patch 9.0.5 (2021-03-09): Added.
function C_ChallengeMode.CanUseKeystoneInCurrentMap(itemLocation)
end

---
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.ClearKeystone()
end

---
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.CloseKeystoneFrame()
end

---
---@return number mapChallengeModeID ?
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ChallengeMode.GetActiveChallengeMapID()
end

---
---@return number activeKeystoneLevel 
---@return number activeAffixIDs []
---@return boolean wasActiveKeystoneCharged 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.GetActiveKeystoneInfo()
end

---
---@param affixID number 
---@return string name 
---@return string description 
---@return number filedataid 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.GetAffixInfo(affixID)
end

---
---@return ChallengeCompletionInfo info 
function C_ChallengeMode.GetChallengeCompletionInfo()
end

---
---@return number numDeaths 
---@return number timeLost 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_ChallengeMode.GetDeathCount()
end

---Returns a color value from the passed in overall season M+ rating.
---@param dungeonScore number 
---@return ColorMixin scoreColor 🔗
---@since Patch 9.1.0 (2021-06-29): Added.
function C_ChallengeMode.GetDungeonScoreRarityColor(dungeonScore)
end

---
---@return  topAttempt structure - ChallengeModeGuildTopAttempt[]
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.GetGuildLeaders()
end

---Returns a color value from the passed in keystone level.
---@param level number 
---@return ColorMixin levelScore 🔗
---@since Patch 9.1.0 (2021-06-29): Added.
function C_ChallengeMode.GetKeystoneLevelRarityColor(level)
end

---Returns how much time is left before player is automatically flagged as a leaver (and removed from the group) for exiting a restricted challenge mode instance
---@return number timeLeftSeconds ? = 0
function C_ChallengeMode.GetLeaverPenaltyWarningTimeLeft()
end

---Gets the player's best score information for the current weekly affix, for all maps active in the current season
---@return MythicPlusRatingLinkInfo displayScores []
---@since Patch 9.1.5 (2021-11-02): Added.
function C_ChallengeMode.GetMapScoreInfo()
end

---
---@return number mapChallengeModeIDs []
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.GetMapTable()
end

---
---@param mapChallengeModeID number MapChallengeMode.ID
---@return string name 
---@return number id : MapChallengeMode.ID
---@return number timeLimit - The time limit in seconds.
---@return number texture ? : FileID
---@return number backgroundTexture : FileID
---@return number mapID 
---@since Patch 11.2.0 (2025-08-05): Added mapID return value.
function C_ChallengeMode.GetMapUIInfo(mapChallengeModeID)
end

---Gets the overall season mythic+ rating for the player.
---@return number overallDungeonScore 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_ChallengeMode.GetOverallDungeonScore()
end

---
---@param powerLevel number 
---@return number damageMod 
---@return number healthMod 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.GetPowerLevelDamageHealthMod(powerLevel)
end

---
---@return number mapChallengeModeID 
---@return number affixIDs []
---@return number keystoneLevel 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.GetSlottedKeystoneInfo()
end

---Returns a color value from the passed in mythic+ rating from the combined affix scores for a specific dungeon
---@param specificDungeonOverallScore number 
---@return ColorMixin specificDungeonOverallScoreColor 🔗
---@since Patch 9.1.0 (2021-06-29): Added.
function C_ChallengeMode.GetSpecificDungeonOverallScoreRarityColor(specificDungeonOverallScore)
end

---Returns a color value from the passed in mythic+ rating for a specific dungeon.
---@param specificDungeonScore number 
---@return ColorMixin specificDungeonScoreColor 🔗
---@since Patch 9.1.0 (2021-06-29): Added.
function C_ChallengeMode.GetSpecificDungeonScoreRarityColor(specificDungeonScore)
end

---
---@return number startTime 
function C_ChallengeMode.GetStartTime()
end

---
---@return boolean hasSlottedKeystone 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.HasSlottedKeystone()
end

---
---@return boolean challengeModeActive 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.IsChallengeModeActive()
end

---
---@return boolean canReset 
function C_ChallengeMode.IsChallengeModeResettable()
end

---
---@return boolean removalSuccessful 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.RemoveKeystone()
end

---
---@param mapChallengeModeID number 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.RequestLeaders(mapChallengeModeID)
end

---
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.Reset()
end

---
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.SlotKeystone()
end

---
---@return boolean success 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ChallengeMode.StartChallengeMode()
end
