-- C_Commentator API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Commentator
C_Commentator = {}

---
---@param playerName string 
---@param overrideName string 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.AddPlayerOverrideName(playerName, overrideName)
end

---
---@param spellIDs table 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.AddTrackedDefensiveAuras(spellIDs)
end

---
---@param spellIDs table 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.AddTrackedOffensiveAuras(spellIDs)
end

---
---@return boolean teamsAreSwapped 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.AreTeamsSwapped()
end

---
---@param playerName string 
---@param teamName string 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.AssignPlayerToTeam(playerName, teamName)
end

---
---@param playerName string []
---@param teamName string 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.AssignPlayersToTeam(playerName, teamName)
end

---
---@param teamIndex number 
---@param teamName string 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.AssignPlayersToTeamInCurrentInstance(teamIndex, teamName)
end

---
---@return boolean canUseCommentatorCheats 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.CanUseCommentatorCheats()
end

---
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.ClearCameraTarget()
end

---
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.ClearFollowTarget()
end

---
---@param lookAtIndex number ?
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.ClearLookAtTarget(lookAtIndex)
end

---
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.EnterInstance()
end

---
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.ExitInstance()
end

---
---@param unitToken string UnitId
---@return number playerIndex 
---@return number teamIndex 
---@return boolean isPet 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.FindSpectatedUnit(unitToken)
end

---
---@param teamIndex number 
---@return string teamName ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.FindTeamNameInCurrentInstance(teamIndex)
end

---
---@param playerNames string []
---@return string teamName ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.FindTeamNameInDirectory(playerNames)
end

---
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.FlushCommentatorHistory()
end

---
---@param factionIndex number 
---@param playerIndex number 
---@param forceInstantTransition boolean ?
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.FollowPlayer(factionIndex, playerIndex, forceInstantTransition)
end

---
---@param token string 
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.FollowUnit(token)
end

---
---@since Patch 7.1.0 (2016-10-25): Added.
function C_Commentator.ForceFollowTransition()
end

---
---@return number teamIndex 
---@return number playerIndex 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.GetAdditionalCameraWeight()
end

---
---@param unitToken string UnitId
---@return number weight 
---@since Patch 9.0.1 (2020-10-13): Added unitToken argument.
function C_Commentator.GetAdditionalCameraWeightByToken(unitToken)
end

---
---@return  nameEntries structure - NameOverrideEntry[]
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.GetAllPlayerOverrideNames()
end

---
---@return number xPos 
---@return number yPos 
---@return number zPos 
---@return number yaw 
---@return number pitch 
---@return number roll 
---@return number fov 
---@since Patch 8.3.0 (2020-01-14): Added roll return.
function C_Commentator.GetCamera()
end

---
---@return boolean isColliding 
---@since Patch 7.1.0 (2016-10-25): Added.
function C_Commentator.GetCameraCollision()
end

---
---@return number xPos 
---@return number yPos 
---@return number zPos 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.GetCameraPosition()
end

---
---@return CommentatorHistory history 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.GetCommentatorHistory()
end

---
---@return number mapID ?
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.GetCurrentMapID()
end

---
---@return number percentage 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.GetDampeningPercent()
end

---
---@return number distance 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.GetDistanceBeforeForcedHorizontalConvergence()
end

---
---@return number ms 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.GetDurationToForceHorizontalConvergence()
end

---
---@return number excludeDistance 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.GetExcludeDistance()
end

---
---@return number weight 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.GetHardlockWeight()
end

---
---@return number angle 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.GetHorizontalAngleThresholdToSmooth()
end

---
---@param trackedSpellID number 
---@return number indirectSpellID 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_Commentator.GetIndirectSpellID(trackedSpellID)
end

---
---@param mapIndex number 
---@param instanceIndex number 
---@return number mapID 
---@return string mapName ?
---@return number status 
---@return number instanceIDLow 
---@return number instanceIDHigh 
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.GetInstanceInfo(mapIndex, instanceIndex)
end

---
---@return number amount 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.GetLookAtLerpAmount()
end

---
---@param mapIndex number 
---@return number teamSize 
---@return number minLevel 
---@return number maxLevel 
---@return number numInstances 
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.GetMapInfo(mapIndex)
end

---
---@return number seconds 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_Commentator.GetMatchDuration()
end

---
---@return number maxNumPlayersPerTeam 
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.GetMaxNumPlayersPerTeam()
end

---
---@return number maxNumTeams 
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.GetMaxNumTeams()
end

---
---@return number commentatorMode 
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.GetMode()
end

---
---@return number ms 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.GetMsToHoldForHorizontalMovement()
end

---
---@return number ms 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.GetMsToHoldForVerticalMovement()
end

---
---@return number ms 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.GetMsToSmoothHorizontalChange()
end

---
---@return number ms 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.GetMsToSmoothVerticalChange()
end

---
---@return number numMaps 
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.GetNumMaps()
end

---
---@param factionIndex number 
---@return number numPlayers 
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.GetNumPlayers(factionIndex)
end

---
---@param teamName1 string 
---@param teamName2 string 
---@return CommentatorSeries data 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.GetOrCreateSeries(teamName1, teamName2)
end

---
---@param teamIndex number 
---@param playerIndex number 
---@param spellID number 
---@return number startTime 
---@return number duration 
---@return boolean enable 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_Commentator.GetPlayerAuraInfo(teamIndex, playerIndex, spellID)
end

---
---@param token string 
---@param spellID number 
---@return number startTime 
---@return number duration 
---@return boolean enable 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.GetPlayerAuraInfoByUnit(token, spellID)
end

---
---@param teamIndex number 
---@param playerIndex number 
---@param spellID number 
---@return number startTime 
---@return number duration 
---@return boolean enable 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.GetPlayerCooldownInfo(teamIndex, playerIndex, spellID)
end

---
---@param unitToken string UnitId
---@param spellID number 
---@return number startTime 
---@return number duration 
---@return boolean enable 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.GetPlayerCooldownInfoByUnit(unitToken, spellID)
end

---
---@param teamIndex number 
---@param playerIndex number 
---@return number spellID 
---@return number expiration 
---@return number duration 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.GetPlayerCrowdControlInfo(teamIndex, playerIndex)
end

---
---@param token string 
---@return number spellID 
---@return number expiration 
---@return number duration 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.GetPlayerCrowdControlInfoByUnit(token)
end

---
---@param teamIndex number 
---@param playerIndex number 
---@return CommentatorPlayerData info ?
---@since Patch 9.2.0 (2022-02-22): Added soloShuffleRoundLosses, soloShuffleRoundWins returns.
function C_Commentator.GetPlayerData(teamIndex, playerIndex)
end

---
---@param teamIndex number 
---@param playerIndex number 
---@return boolean hasFlag 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.GetPlayerFlagInfo(teamIndex, playerIndex)
end

---
---@param unitToken string UnitId
---@return boolean hasFlag 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.GetPlayerFlagInfoByUnit(unitToken)
end

---
---@param teamIndex number 
---@param playerIndex number 
---@param itemID number 
---@return number startTime 
---@return number duration 
---@return boolean enable 
function C_Commentator.GetPlayerItemCooldownInfo(teamIndex, playerIndex, itemID)
end

---
---@param unitToken string UnitToken
---@param itemID number 
---@return number startTime 
---@return number duration 
---@return boolean enable 
function C_Commentator.GetPlayerItemCooldownInfoByUnit(unitToken, itemID)
end

---
---@param originalName string 
---@return string overrideName 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.GetPlayerOverrideName(originalName)
end

---
---@param teamIndex number 
---@param playerIndex number 
---@param spellID number 
---@return number charges 
---@return number maxCharges 
---@return number startTime 
---@return number duration 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.GetPlayerSpellCharges(teamIndex, playerIndex, spellID)
end

---
---@param unitToken string UnitId
---@param spellID number 
---@return number charges 
---@return number maxCharges 
---@return number startTime 
---@return number duration 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.GetPlayerSpellChargesByUnit(unitToken, spellID)
end

---
---@return number amount 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.GetPositionLerpAmount()
end

---
---@return boolean enabled 
---@since Patch 7.1.0 (2016-10-25): Added.
function C_Commentator.GetSmoothFollowTransitioning()
end

---
---@return number weight 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.GetSoftlockWeight()
end

---
---@return number factor 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.GetSpeedFactor()
end

---
---@param instanceID number 
---@return Vector3DMixin pos 🔗
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.GetStartLocation(instanceID)
end

---
---@param teamIndex number 
---@return ColorMixin color 🔗
---@since Patch 9.0.1 (2020-10-13): Changed to C_Commentator.GetTeamColor() and returns a mixin.
function C_Commentator.GetTeamColor(teamIndex)
end

---
---@param teamIndex number 
---@return ColorMixin color 🔗
---@since Patch 9.0.1 (2020-10-13): Changed to C_Commentator.GetTeamColor() and returns a mixin.
function C_Commentator.GetTeamColorByUnit(teamIndex)
end

---
---@return number timeLeft ?
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.GetTimeLeftInMatch()
end

---
---@param indirectSpellID number 
---@return number trackedSpellID 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_Commentator.GetTrackedSpellID(indirectSpellID)
end

---
---@param teamIndex number 
---@param playerIndex number 
---@param category number - Enum.TrackedSpellCategory
---@return number spells []?
---@since Patch 8.2.5 (2019-09-24): Added.
function C_Commentator.GetTrackedSpells(teamIndex, playerIndex, category)
end

---
---@param unitToken string UnitId
---@param category Enum.TrackedSpellCategory 
---@return number spells []?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.GetTrackedSpellsByUnit(unitToken, category)
end

---
---@param unitToken string UnitId
---@return CommentatorUnitData data 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.GetUnitData(unitToken)
end

---
---@param listID number 
---@return string name 
---@return number minPlayers 
---@return number maxPlayers 
---@return boolean isArena 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.GetWargameInfo(listID)
end

---
---@param token string 
---@return boolean hasOffensiveAura 
---@return boolean hasDefensiveAura 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.HasTrackedAuras(token)
end

---
---@return boolean isSmartCameraLocked 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.IsSmartCameraLocked()
end

---
---@return boolean isSpectating 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.IsSpectating()
end

---
---@param spellID number 
---@return boolean isDefensiveTrigger 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.IsTrackedDefensiveAura(spellID)
end

---
---@param spellID number 
---@return boolean isOffensiveTrigger 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.IsTrackedOffensiveAura(spellID)
end

---
---@param teamIndex number 
---@param playerIndex number 
---@param spellID number 
---@param category number - Enum.TrackedSpellCategory
---@return boolean isTracked 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_Commentator.IsTrackedSpell(teamIndex, playerIndex, spellID, category)
end

---
---@param unitToken string UnitId
---@param spellID number 
---@param category Enum.TrackedSpellCategory 
---@return boolean isTracked 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.IsTrackedSpellByUnit(unitToken, spellID, category)
end

---
---@return boolean isUsingSmartCamera 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.IsUsingSmartCamera()
end

---
---@param factionIndex number 
---@param playerIndex number 
---@param lookAtIndex number ?
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.LookAtPlayer(factionIndex, playerIndex, lookAtIndex)
end

---
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.RemoveAllOverrideNames()
end

---
---@param originalPlayerName string 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.RemovePlayerOverrideName(originalPlayerName)
end

---
---@param teamIndex number 
---@param playerIndex number 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.RequestPlayerCooldownInfo(teamIndex, playerIndex)
end

---
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.ResetFoVTarget()
end

---
---@param teamName1 string 
---@param teamName2 string 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.ResetSeriesScores(teamName1, teamName2)
end

---
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.ResetSettings()
end

---
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.ResetTrackedAuras()
end

---
---@param teamIndex number 
---@param playerIndex number 
---@param weight number 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.SetAdditionalCameraWeight(teamIndex, playerIndex, weight)
end

---
---@param unitToken string UnitId
---@param weight number 
---@since Patch 9.0.1 (2020-10-13): Added unitToken argument.
function C_Commentator.SetAdditionalCameraWeightByToken(unitToken, weight)
end

---
---@param spellIDs number []
---@since Patch 9.1.5 (2021-11-02): Added.
function C_Commentator.SetBlocklistedAuras(spellIDs)
end

---
---@param specID number 
---@param spellIDs number []
---@since Patch 9.1.5 (2021-11-02): Added.
function C_Commentator.SetBlocklistedCooldowns(specID, spellIDs)
end

---
---@param itemIDs number []
function C_Commentator.SetBlocklistedItemCooldowns(itemIDs)
end

---
---@param xPos number 
---@param yPos number 
---@param zPos number 
---@param yaw number 
---@param pitch number 
---@param roll number 
---@param fov number 
---@since Patch 8.3.0 (2020-01-14): Added roll argument.
function C_Commentator.SetCamera(xPos, yPos, zPos, yaw, pitch, roll, fov)
end

---
---@param collide boolean 
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.SetCameraCollision(collide)
end

---
---@param xPos number 
---@param yPos number 
---@param zPos number 
---@param snapToLocation boolean 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.SetCameraPosition(xPos, yPos, zPos, snapToLocation)
end

---
---@param enableCheats boolean 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.SetCheatsEnabled(enableCheats)
end

---
---@param history CommentatorHistory 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.SetCommentatorHistory(history)
end

---
---@param distance number 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.SetDistanceBeforeForcedHorizontalConvergence(distance)
end

---
---@param ms number 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.SetDurationToForceHorizontalConvergence(ms)
end

---
---@param excludeDistance number 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.SetExcludeDistance(excludeDistance)
end

---
---@param elasticSpeed number 
---@param minSpeed number 
---@since Patch 7.1.0 (2016-10-25): Added.
function C_Commentator.SetFollowCameraSpeeds(elasticSpeed, minSpeed)
end

---
---@param weight number 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.SetHardlockWeight(weight)
end

---
---@param angle number 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.SetHorizontalAngleThresholdToSmooth(angle)
end

---
---@param amount number 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.SetLookAtLerpAmount(amount)
end

---
---@param mapIndex number 
---@param instanceIndex number 
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.SetMapAndInstanceIndex(mapIndex, instanceIndex)
end

---
---@param disabled boolean 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.SetMouseDisabled(disabled)
end

---
---@param newSpeed number 
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.SetMoveSpeed(newSpeed)
end

---
---@param ms number 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.SetMsToHoldForHorizontalMovement(ms)
end

---
---@param ms number 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.SetMsToHoldForVerticalMovement(ms)
end

---
---@param ms number 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.SetMsToSmoothHorizontalChange(ms)
end

---
---@param ms number 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.SetMsToSmoothVerticalChange(ms)
end

---
---@param amount number 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.SetPositionLerpAmount(amount)
end

---
---@param specID number 
---@param spellIDs table 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_Commentator.SetRequestedDebuffCooldowns(specID, spellIDs)
end

---
---@param specID number 
---@param spellIDs table 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.SetRequestedDefensiveCooldowns(specID, spellIDs)
end

---
---@param itemIDs number []
function C_Commentator.SetRequestedItemCooldowns(itemIDs)
end

---
---@param specID number 
---@param spellIDs table 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.SetRequestedOffensiveCooldowns(specID, spellIDs)
end

---
---@param teamName1 string 
---@param teamName2 string 
---@param scoringTeamName string 
---@param score number 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.SetSeriesScore(teamName1, teamName2, scoringTeamName, score)
end

---
---@param teamName1 string 
---@param teamName2 string 
---@param score1 number 
---@param score2 number 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Commentator.SetSeriesScores(teamName1, teamName2, score1, score2)
end

---
---@param locked boolean 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.SetSmartCameraLocked(locked)
end

---
---@param enabled boolean 
---@since Patch 7.1.0 (2016-10-25): Added.
function C_Commentator.SetSmoothFollowTransitioning(enabled)
end

---
---@param weight number 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.SetSoftlockWeight(weight)
end

---
---@param factor number 
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.SetSpeedFactor(factor)
end

---
---@param offset number 
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.SetTargetHeightOffset(offset)
end

---
---@param useSmartCamera boolean 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_Commentator.SetUseSmartCamera(useSmartCamera)
end

---
---@since Patch 6.2.2 (2015-09-01): Added.
function C_Commentator.SnapCameraLookAtPoint()
end

---
---@param spellID number 
---@return boolean spellUsesItemCharges 
function C_Commentator.SpellUsesItemCharges(spellID)
end

---
---@param listID number 
---@param teamSize number 
---@param tournamentRules boolean 
---@param teamOneCaptain string 
---@param teamTwoCaptain string 
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.StartWargame(listID, teamSize, tournamentRules, teamOneCaptain, teamTwoCaptain)
end

---
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.SwapTeamSides()
end

---
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Commentator.ToggleCheats()
end

---
---@param targetPlayer string ?
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.UpdateMapInfo(targetPlayer)
end

---
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.UpdatePlayerInfo()
end

---
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.ZoomIn()
end

---
---@param zoomAmount number ?
function C_Commentator.ZoomIn_Position(zoomAmount)
end

---
---@since Patch 6.1.0 (2015-02-24): Added.
function C_Commentator.ZoomOut()
end

---
---@param zoomAmount number ?
function C_Commentator.ZoomOut_Position(zoomAmount)
end
