-- C_PvP API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_PvP
C_PvP = {}

---
---@return boolean arePvpTalentsUnlocked 
function C_PvP.ArePvpTalentsUnlocked()
end

---
---@return boolean canDisplay 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_PvP.CanDisplayDamage()
end

---
---@return boolean canDisplay 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.CanDisplayDeaths()
end

---
---@return boolean canDisplay 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_PvP.CanDisplayHealing()
end

---
---@return boolean canDisplay 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.CanDisplayHonorableKills()
end

---
---@return boolean canDisplay 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_PvP.CanDisplayKillingBlows()
end

---Returns true if the player is allowed to use the Rated PvP UI, or false and a reason string if not.
---@return boolean canUse 
---@return string failureReason 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PvP.CanPlayerUseRatedPVPUI()
end

---
---@param toggle boolean 
---@return boolean canTogglePvP 
---@since Patch 8.1.0 (2018-12-11): Added toggle argument.
function C_PvP.CanToggleWarMode(toggle)
end

---
---@return boolean canTogglePvPInArea 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_PvP.CanToggleWarModeInArea()
end

---
---@return boolean doesAffect 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.DoesMatchOutcomeAffectRating()
end

---Returns active brawl information.
---@return PvpBrawlInfo brawlInfo ?
---@since Patch 8.1.5 (2019-03-12): Added.
function C_PvP.GetActiveBrawlInfo()
end

---
---@return number bracket 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.GetActiveMatchBracket()
end

---
---@return number seconds 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.GetActiveMatchDuration()
end

---
---@return Enum.PvPMatchState state 
---@since Patch 10.1.5 (2023-07-11): Removed Active enum.
function C_PvP.GetActiveMatchState()
end

---
---@return number winner 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.GetActiveMatchWinner()
end

---
---@param playerToken string 
---@return number spellID 
---@return number itemID - Only exists in cata/vanilla
---@return number startTime 
---@return number duration 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_PvP.GetArenaCrowdControlInfo(playerToken)
end

---
---@param teamSize number 
---@return number honor 
---@return number experience 
---@return BattlefieldItemReward itemRewards []?
---@since Patch 7.2.0 (2017-03-28): Moved to C_PvP.GetArenaRewards()
function C_PvP.GetArenaRewards(teamSize)
end

---
---@return number honor 
---@return number experience 
---@return BattlefieldItemReward itemRewards []?
---@since Patch 7.2.0 (2017-03-28): Moved to C_PvP.GetArenaSkirmishRewards()
function C_PvP.GetArenaSkirmishRewards()
end

---
---@param queueID number 
---@return number specializationID ?
function C_PvP.GetAssignedSpecForBattlefieldQueue(queueID)
end

---
---@return PvpBrawlInfo brawlInfo ?
---@since Patch 8.1.5 (2019-03-12): Moved to C_PvP.GetAvailableBrawlInfo()[1]
function C_PvP.GetAvailableBrawlInfo()
end

---
---@param flagIndex number 
---@param uiMapId number 
---@return number uiPosx ?
---@return number uiPosy ?
---@return number flagTexture 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_PvP.GetBattlefieldFlagPosition(flagIndex, uiMapId)
end

---Returns battleground vehicle info.
---@param vehicleIndex number 
---@param uiMapID number UiMapID
---@return BattlefieldVehicleInfo info 
---@since Patch 9.0.1 (2020-10-13): Moved to C_PvP.GetBattlefieldVehicleInfo()
function C_PvP.GetBattlefieldVehicleInfo(vehicleIndex, uiMapID)
end

---
---@param uiMapID number 
---@return BattlefieldVehicleInfo vehicles []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PvP.GetBattlefieldVehicles(uiMapID)
end

---
---@param brawlType Enum.BrawlType 
---@return number honor 
---@return number experience 
---@return BattlefieldItemReward itemRewards []?
---@since Patch 7.2.0 (2017-03-28): Added.
function C_PvP.GetBrawlRewards(brawlType)
end

---
---@return number minItemLevel 
function C_PvP.GetBrawlSoloRBGMinItemLevel()
end

---
---@return number statID 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_PvP.GetCustomVictoryStatID()
end

---
---@param specializationID number 
---@return  pvpScalingData structure - PvpScalingData[]
---@since Patch 7.2.0 (2017-03-28): Added.
function C_PvP.GetGlobalPvpScalingInfoForSpecID(specializationID)
end

---
---@param honorLevel number 
---@return  info structure - HonorRewardInfo (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PvP.GetHonorRewardInfo(honorLevel)
end

---Returns info indicating the backgrounds available for leveling.
---@param level number 
---@return LevelUpBattlegroundInfo battlefields []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PvP.GetLevelUpBattlegrounds(level)
end

---
---@param pvpStatID number 
---@return  info structure - MatchPVPStatColumn (nilable)
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.GetMatchPVPStatColumn(pvpStatID)
end

---
---@return  columns structure - MatchPVPStatColumn[]
---@since Patch 8.2.5 (2019-09-24): Replaced with C_PvP.GetMatchPVPStatColumns(). The previous api is deprecated. [1]
function C_PvP.GetMatchPVPStatColumns()
end

---
---@param honorLevel number 
---@return number nextHonorLevelWithReward ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PvP.GetNextHonorLevelForReward(honorLevel)
end

---Returns the time until the next battle in a PvP zone like Wintergrasp and Tol Barad.
---@param uiMapID number UiMapID
---@return number pvpWaitTime - seconds until the battle starts.
---@since Patch 8.0.1 (2018-07-17): Moved to C_PvP.GetOutdoorPvPWaitTime.
function C_PvP.GetOutdoorPvPWaitTime(uiMapID)
end

---
---@return PVPPersonalRatedInfo info ?
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.GetPVPActiveMatchPersonalRatedInfo()
end

---
---@return RatedMatchDeserterPenalty deserterPenalty ?
function C_PvP.GetPVPActiveRatedMatchDeserterPenalty()
end

---
---@return number achievementID 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_PvP.GetPVPSeasonRewardAchievementID()
end

---
---@return RatedBGBlitzSpecStats specStats ?
function C_PvP.GetPersonalRatedBGBlitzSpecStats()
end

---
---@return RatedSoloShuffleSpecStats specStats ?
function C_PvP.GetPersonalRatedSoloShuffleSpecStats()
end

---
---@return  rewards structure - PVPPostMatchCurrencyReward[]
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.GetPostMatchCurrencyRewards()
end

---
---@return PVPPostMatchItemReward rewards []
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.GetPostMatchItemRewards()
end

---
---@return number unlockLevel 
function C_PvP.GetPvpTalentsUnlockedLevel()
end

---
---@param tierEnum number 
---@param bracketEnum number 
---@return number id ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PvP.GetPvpTierID(tierEnum, bracketEnum)
end

---
---@param tierID number 
---@return  pvpTierInfo structure - PvpTierInfo (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PvP.GetPvpTierInfo(tierID)
end

---
---@return  info structure - RandomBGInfo
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PvP.GetRandomBGInfo()
end

---
---@return number honor 
---@return number experience 
---@return BattlefieldItemReward itemRewards []?
---@since Patch 7.2.0 (2017-03-28): Moved to C_PvP.GetRandomBGRewards()
function C_PvP.GetRandomBGRewards()
end

---
---@return  info structure - RandomBGInfo
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PvP.GetRandomEpicBGInfo()
end

---
---@return number honor 
---@return number experience 
---@return BattlefieldItemReward itemRewards []?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PvP.GetRandomEpicBGRewards()
end

---
---@return number honor 
---@return number experience 
---@return BattlefieldItemReward itemRewards []?
---@since Patch 7.2.0 (2017-03-28): Moved to C_PvP.GetRatedBGRewards()
function C_PvP.GetRatedBGRewards()
end

---
---@return number minItemLevel 
function C_PvP.GetRatedSoloRBGMinItemLevel()
end

---
---@return number honor 
---@return number experience 
---@return BattlefieldItemReward itemRewards []?
function C_PvP.GetRatedSoloRBGRewards()
end

---
---@return number minItemLevel 
function C_PvP.GetRatedSoloShuffleMinItemLevel()
end

---
---@return number honor 
---@return number experience 
---@return BattlefieldItemReward itemRewards []?
function C_PvP.GetRatedSoloShuffleRewards()
end

---
---@param pvpTierEnum number 
---@return number activityItemLevel 
---@return number weeklyItemLevel 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_PvP.GetRewardItemLevelsByTierEnum(pvpTierEnum)
end

---Returns PvP score info.
---@param offsetIndex number 
---@return PVPScoreInfo info ?
---@since Patch 9.2.0 (2022-02-22): Added roleAssigned field.
function C_PvP.GetScoreInfo(offsetIndex)
end

---Returns PvP score info.
---@param offsetIndex number 
---@return PVPScoreInfo info ?
---@since Patch 9.2.0 (2022-02-22): Added roleAssigned field.
function C_PvP.GetScoreInfoByPlayerGuid(offsetIndex)
end

---
---@return number tierID 
---@return number nextTierID ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PvP.GetSeasonBestInfo()
end

---
---@param pvpBracket number 
---@return BattlemasterListInfo battlemasterListInfo 
---@since Patch 11.1.7 (2025-06-17): Changed instanceType (number) field to matchmakingType (enum).
function C_PvP.GetSkirmishInfo(pvpBracket)
end

---
---@return PvpBrawlInfo brawlInfo ?
---@since Patch 9.2.0 (2022-02-22): Added.
function C_PvP.GetSpecialEventBrawlInfo()
end

---
---@param factionIndex number 
---@return  info structure - PVPTeamInfo (nilable)
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.GetTeamInfo(factionIndex)
end

---
---@return number uiDisplaySeason 
function C_PvP.GetUIDisplaySeason()
end

---
---@return number rewardBonus 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_PvP.GetWarModeRewardBonus()
end

---
---@return number defaultBonus 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_PvP.GetWarModeRewardBonusDefault()
end

---
---@return boolean rewardAchieved 
---@return boolean lastWeekRewardAchieved 
---@return boolean lastWeekRewardClaimed 
---@return number pvpTierMaxFromWins 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_PvP.GetWeeklyChestInfo()
end

---
---@return string pvpType 
---@return boolean isSubZonePvP 
---@return string factionName ?
function C_PvP.GetZonePVPInfo()
end

---
---@return boolean hasArenaSkirmishWinToday 
---@since Patch 7.2.0 (2017-03-28): Added. Partially replaces GetArenaSkirmishRewards. [1]
function C_PvP.HasArenaSkirmishWinToday()
end

---Returns whether you are currently in a battleground/battlefield.
---@return boolean isActiveBattlefield - whether the player is in an active battlefield.
---@since Patch 8.1.5 (2019-03-12): Moved to C_PvP.IsActiveBattlefield. The previous alias is deprecated. [1]
function C_PvP.IsActiveBattlefield()
end

---
---@return boolean registered 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.IsActiveMatchRegistered()
end

---
---@return boolean isArena 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.IsArena()
end

---
---@return boolean isBattleground 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.IsBattleground()
end

---
---@return boolean battlegroundActive 
---@return boolean brawlActive 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_PvP.IsBattlegroundEnlistmentBonusActive()
end

---
---@return boolean isBrawlSoloRBG 
function C_PvP.IsBrawlSoloRBG()
end

---
---@return boolean isBrawlSoloShuffle 
function C_PvP.IsBrawlSoloShuffle()
end

---
---@return boolean isInBrawl 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_PvP.IsInBrawl()
end

---
---@return boolean isInRatedMatchWithDeserterPenalty 
function C_PvP.IsInRatedMatchWithDeserterPenalty()
end

---
---@return boolean isActive 
function C_PvP.IsMatchActive()
end

---
---@return boolean isComplete 
function C_PvP.IsMatchComplete()
end

---
---@return boolean asArena 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.IsMatchConsideredArena()
end

---
---@return boolean isFactional 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.IsMatchFactional()
end

---
---@return boolean isPVPMap 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PvP.IsPVPMap()
end

---
---@return boolean isRatedArena 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_PvP.IsRatedArena()
end

---
---@return boolean isRatedBattleground 
---@since Patch 8.2.0 (2019-06-25): Moved to C_PvP.IsRatedBattleground. The previous alias is deprecated. [1]
function C_PvP.IsRatedBattleground()
end

---Returns if the map is a rated battleground or arena.
---@return boolean isRatedMap 
---@since Patch 8.2.0 (2019-06-25): Moved to C_PvP.IsRatedMap. The previous alias is deprecated. [1]
function C_PvP.IsRatedMap()
end

---
---@return boolean isRatedSoloRBG 
function C_PvP.IsRatedSoloRBG()
end

---
---@return boolean isRatedSoloShuffle 
function C_PvP.IsRatedSoloShuffle()
end

---
---@return boolean isSoloRBG 
function C_PvP.IsSoloRBG()
end

---
---@return boolean isSoloShuffle 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_PvP.IsSoloShuffle()
end

---
---@return boolean result 
function C_PvP.IsSubZonePVPPOI()
end

---
---@return boolean warModeActive 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PvP.IsWarModeActive()
end

---Indicates whether the player has opted into War Mode beginning with Battle for Azeroth, regardless if the player is in an outdoor zone where such PvP is actually possible.
---@return boolean warModeDesired - True if the player has turned war mode on; false otherwise.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PvP.IsWarModeDesired()
end

---
---@return boolean warModeEnabled 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PvP.IsWarModeFeatureEnabled()
end

---
---@param isSpecialBrawl boolean ? = false
---@since Patch 9.2.0 (2022-02-22): Added isSpecialBrawl return.
function C_PvP.JoinBrawl(isSpecialBrawl)
end

---
function C_PvP.JoinRatedBGBlitz()
end

---
---@param playerToken string 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_PvP.RequestCrowdControlSpell(playerToken)
end

---
---@param enablePVP boolean ? = false
function C_PvP.SetPVP(enablePVP)
end

---
---@param warModeDesired boolean 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PvP.SetWarModeDesired(warModeDesired)
end

---
---@param args string 
---@return number success 
function C_PvP.StartSoloRBGWarGameByName(args)
end

---
---@param opaqueID1 number 
---@param opaqueID2 number 
---@param specifiedMap string 
---@param tournamentRules boolean 
---@return number success 
function C_PvP.StartSpectatorSoloRBGWarGame(opaqueID1, opaqueID2, specifiedMap, tournamentRules)
end

---
function C_PvP.TogglePVP()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PvP.ToggleWarMode()
end
