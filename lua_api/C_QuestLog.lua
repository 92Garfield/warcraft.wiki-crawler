-- C_QuestLog API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_QuestLog
C_QuestLog = {}

---Abandons the quest specified by C_QuestLog.SetAbandonQuest.
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.AbandonQuest()
function C_QuestLog.AbandonQuest()
end

---
---@param questID number 
---@return boolean wasWatched 
---@since Patch 11.0.0 (2024-07-23): Removed watchType argument.
function C_QuestLog.AddQuestWatch(questID)
end

---Tracks a world quest.
---@param questID number 
---@param watchType Enum.QuestWatchType ?
---@return boolean wasWatched 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.AddWorldQuestWatch(questID, watchType)
end

---Returns whether the player can abandon a specific quest.
---@param questID number 
---@return boolean canAbandon 
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.CanAbandonQuest()
function C_QuestLog.CanAbandonQuest(questID)
end

---
---@param questID number 
---@param targetFactionID number 
---@return boolean awardsReputation 
function C_QuestLog.DoesQuestAwardReputationWithFaction(questID, targetFactionID)
end

---Returns the quest specified by C_QuestLog.SetAbandonQuest.
---@return number questID 
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.GetAbandonQuest()
function C_QuestLog.GetAbandonQuest()
end

---
---@return number itemIDs []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.GetAbandonQuestItems()
end

---
---@return number uiMapIDs [] : UiMapID
---@since Patch 8.3.0 (2020-01-14): Added.
function C_QuestLog.GetActiveThreatMaps()
end

---Returns all completed quests for the character.
---@return number quests [] - The sorted quest IDs
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.GetAllCompletedQuestIDs() and returns quest IDs in a sorted array ({ QuestID1, QuestID2, ... })
function C_QuestLog.GetAllCompletedQuestIDs()
end

---
---@param uiMapID number 
---@return BountyInfo bounties []?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.GetBountiesForMapID(uiMapID)
end

---Returns the bounty set for a specified map ID.
---@param uiMapID number 
---@return Enum.MapOverlayDisplayLocation displayLocation 
---@since Patch 10.0.2 (2022-11-15): Addedto isActivitySet return.
function C_QuestLog.GetBountySetInfoForMapID(uiMapID)
end

---Returns the distance to a quest.
---@param questID number 
---@return number distanceSq 
---@return boolean onContinent 
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.GetDistanceSqToQuest()
function C_QuestLog.GetDistanceSqToQuest(questID)
end

---
---@param questID number 
---@return number index ?
function C_QuestLog.GetHeaderIndexForQuest(questID)
end

---Returns information about a quest in the player's quest log.
---@param questLogIndex number 
---@return QuestInfo info ?
---@since Patch 11.0.2 (2024-08-13): Removed isLegendarySort field.
function C_QuestLog.GetInfo(questLogIndex)
end

---Returns the quest log index for a quest ID.
---@param questID number 
---@return number questLogIndex ?
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.GetLogIndexForQuestID()
function C_QuestLog.GetLogIndexForQuestID(questID)
end

---
---@return number uiMapID : UiMapID
---@since Patch 8.0.1 (2018-07-17): Added.
function C_QuestLog.GetMapForQuestPOIs()
end

---This is the maximum number of quests a player can be on, including hidden quests, world quests, emissaries etc
---@return number maxNumQuests 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_QuestLog.GetMaxNumQuests()
end

---This is the maximum number of standard quests a player can accept. These are quests that are normally visible in the quest log.
---@return number maxNumQuestsCanAccept 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_QuestLog.GetMaxNumQuestsCanAccept()
end

---
---@param questID number 
---@return number mapID 
---@return number x 
---@return number y 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_QuestLog.GetNextWaypoint(questID)
end

---
---@param questID number 
---@param uiMapID number UiMapID
---@return number x 
---@return number y 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_QuestLog.GetNextWaypointForMap(questID, uiMapID)
end

---
---@param questID number 
---@return string waypointText 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_QuestLog.GetNextWaypointText(questID)
end

---Returns the number of entries in the quest log.
---@return number numShownEntries - Number of entries, including headers and invisible content.
---@return number numQuests - Number of actual quests.
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.GetNumQuestLogEntries()
function C_QuestLog.GetNumQuestLogEntries()
end

---
---@param questID number 
---@return number leaderboardCount 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_QuestLog.GetNumQuestObjectives(questID)
end

---Returns the number of tracked quests.
---@return number numQuestWatches 
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.
function C_QuestLog.GetNumQuestWatches()
end

---Replaces `GetNumWorldQuestWatches`.
---@return number numQuestWatches 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.GetNumWorldQuestWatches()
end

---
---@param questID number 
---@return number uiMapID 
---@return boolean worldQuests 
---@return boolean worldQuestsElite 
---@return boolean dungeons 
---@return boolean treasures 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.GetQuestAdditionalHighlights(questID)
end

---Returns the visual QuestTheme associated with a given quest.
---@param questID number 
---@return QuestTheme theme ?
---@since Patch 9.1.0 (2021-06-29): Added poiIcon field.
function C_QuestLog.GetQuestDetailsTheme(questID)
end

---
---@param questID number 
---@return number level 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_QuestLog.GetQuestDifficultyLevel(questID)
end

---Only returns a questID for actual quests, not headers
---@param questLogIndex number 
---@return number questID ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.GetQuestIDForLogIndex(questLogIndex)
end

---Returns the quest ID represented by the given quest watch index.
---@param questWatchIndex number 
---@return number questID ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.GetQuestIDForQuestWatchIndex(questWatchIndex)
end

---Returns the quest ID represented by the given quest watch index.
---@param questWatchIndex number 
---@return number questID ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.GetQuestIDForWorldQuestWatchIndex(questWatchIndex)
end

---
---@param questID number 
---@return QuestRewardReputationInfo reputationRewards []
function C_QuestLog.GetQuestLogMajorFactionReputationRewards(questID)
end

---
---@param questLogIndex number ?
---@return number portraitGiver 
---@return string portraitGiverText 
---@return string portraitGiverName 
---@return number portraitGiverMount 
---@return number portraitGiverModelSceneID ?
---@since Patch 9.1.0 (2021-06-29): Added.
function C_QuestLog.GetQuestLogPortraitGiver(questLogIndex)
end

---Returns info for the objectives of a quest.
---@param questID number - Unique QuestID for the quest to be queried. Requires the quest to be in your quest log.
---@return QuestObjectiveInfo objectives [] - can be an empty table for quests without objectives
---@since Patch 8.0.1 (2018-07-17): Added.
function C_QuestLog.GetQuestObjectives(questID)
end

---
---@param questID number 
---@return QuestRewardCurrencyInfo questRewardCurrencies []
function C_QuestLog.GetQuestRewardCurrencies(questID)
end

---
---@param questID number 
---@param currencyIndex number 
---@param isChoice boolean 
---@return QuestRewardCurrencyInfo questRewardCurrencyInfo ?
function C_QuestLog.GetQuestRewardCurrencyInfo(questID, currencyIndex, isChoice)
end

---Returns metadata for a quest.
---@param questID number 
---@return QuestTagInfo info ?
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.GetQuestTagInfo() and returns structured data.
function C_QuestLog.GetQuestTagInfo(questID)
end

---
---@param questID number 
---@return number questType 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_QuestLog.GetQuestType(questID)
end

---Returns the watchType associated with a given quest.
---@param questID number 
---@return Enum.QuestWatchType watchType ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.GetQuestWatchType(questID)
end

---
---@param uiMapID number UiMapID
---@return QuestPOIMapInfo quests []
---@since Patch 11.0.5 (2024-10-22): Replaced QuestOnMapInfo return struct  with QuestPOIMapInfo, added inProgress, numObjectives, mapID, isQuestStart, isDaily, isCombatAllyQuest, childDepth, questTagType, isMeta fields, removed type field.
function C_QuestLog.GetQuestsOnMap(uiMapID)
end

---Returns the amount of money required for quest completion.
---@param questID number ? - Uses the selected quest if no questID is provided.
---@return number requiredMoney 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.GetRequiredMoney(questID)
end

---Returns the quest specified by C_QuestLog.SetSelectedQuest.
---@return number questID 
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.GetSelectedQuest(()
function C_QuestLog.GetSelectedQuest()
end

---Returns the suggested number of players for a quest.
---@param questID number 
---@return number suggestedGroupSize 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.GetSuggestedGroupSize(questID)
end

---Returns the time available to complete a quest.
---@param questID number 
---@return number totalTime 
---@return number elapsedTime 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.GetTimeAllowed(questID)
end

---Returns a valid title for anything that is in the quest log.
---@param questLogIndex number 
---@return string title ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.GetTitleForLogIndex(questLogIndex)
end

---Returns the name for a Quest ID.
---@param questID number 
---@return string title ?
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.GetTitleForQuestID()
function C_QuestLog.GetTitleForQuestID(questID)
end

---
---@param uiMapID number UiMapID
---@return number achievementID 
---@return number storyMapID 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_QuestLog.GetZoneStoryInfo(uiMapID)
end

---
---@return boolean hasActiveThreats 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_QuestLog.HasActiveThreats()
end

---Returns true if the specified quest is an account-wide quest.
---@param questID number 
---@return boolean isAccountQuest 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.IsAccountQuest(questID)
end

---Returns whether the supplied quest in the quest log is complete.
---@param questID number 
---@return boolean isComplete - Whether the quest is both in the quest log and is complete
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.IsComplete()
function C_QuestLog.IsComplete(questID)
end

---Returns true if the specified quest has been failed.
---@param questID number 
---@return boolean isFailed 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.IsFailed(questID)
end

---
---@param questID number 
---@return boolean isImportant 
function C_QuestLog.IsImportantQuest(questID)
end

---
---@param questID number 
---@return boolean isMeta 
function C_QuestLog.IsMetaQuest(questID)
end

---Returns true if the specified quest is on the map, and whether or not it has any local PoIs.
---@param questID number 
---@return boolean onMap 
---@return boolean hasLocalPOI 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.IsOnMap(questID)
end

---
---@param questID number 
---@return boolean isOnQuest 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_QuestLog.IsOnQuest(questID)
end

---Returns true if the quest can be shared with other players.
---@param questID number 
---@return boolean isPushable 
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.IsPushableQuest()
function C_QuestLog.IsPushableQuest(questID)
end

---Replaces `IsQuestBounty`.
---@param questID number 
---@return boolean isBounty 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.IsQuestBounty(questID)
end

---Returns true if the specified quest is a calling quest.
---@param questID number 
---@return boolean isCalling 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.IsQuestCalling(questID)
end

---Replaces `IsQuestCriteriaForBounty`.
---@param questID number 
---@param bountyQuestID number 
---@return boolean isCriteriaForBounty 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.IsQuestCriteriaForBounty(questID, bountyQuestID)
end

---
---@param questID number 
---@return boolean isDisabled 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_QuestLog.IsQuestDisabledForSession(questID)
end

---Returns if a quest has been completed.
---@param questID number 
---@return boolean isCompleted - Returns true if completed; returns false if not completed or if the questID is invalid.
---@since Patch 8.2.5 (2019-09-24): Moved to C_QuestLog.IsQuestFlaggedCompleted(). The previous alias is deprecated. [1]
function C_QuestLog.IsQuestFlaggedCompleted(questID)
end

---Returns if a quest has been completed by any character on an account.
---@param questID number 
---@return boolean isCompletedOnAccount - Returns true if completed; returns false if not completed or if the questID is invalid.
function C_QuestLog.IsQuestFlaggedCompletedOnAccount(questID)
end

---
---@param questID number 
---@return boolean isFromContentPush 
function C_QuestLog.IsQuestFromContentPush(questID)
end

---Replaces `IsQuestInvasion`.
---@param questID number 
---@return boolean isInvasion 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.IsQuestInvasion(questID)
end

---Identifies if a quest is eligible for replay with party members who have not yet completed it.
---@param questID number - Unique identifier for a quest, corresponding to the middle portion of a QuestString
---@return boolean isReplayable 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_QuestLog.IsQuestReplayable(questID)
end

---
---@param questID number 
---@return boolean recentlyReplayed 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_QuestLog.IsQuestReplayedRecently(questID)
end

---Returns whether a given quest is a task (also known as bonus objectives or world quest).
---@param questID number 
---@return boolean isTask 
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.IsQuestTask()
function C_QuestLog.IsQuestTask(questID)
end

---
---@param questID number 
---@return boolean isTrivial 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_QuestLog.IsQuestTrivial(questID)
end

---Returns true if the specified quest is a repeatable quest.
---@param questID number 
---@return boolean isRepeatable 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.IsRepeatableQuest(questID)
end

---
---@param questID number 
---@return boolean isThreat 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_QuestLog.IsThreatQuest(questID)
end

---Returns true if the unit is on the specified quest.
---@param unit string UnitId
---@param questID number 
---@return boolean isOnQuest 
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.IsUnitOnQuest()
function C_QuestLog.IsUnitOnQuest(unit, questID)
end

---Returns true if the specified quest is a world quest.
---@param questID number 
---@return boolean isWorldQuest 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.IsWorldQuest(questID)
end

---Tests whether a quest is eligible for warmode bonuses (e.g. many world quests).
---@param questID number - Unique identifier for a quest, corresponding to the middle portion of a QuestString
---@return boolean hasBonus - True if the quest offers increased rewards to players who maintained warmode during the entire period of completing the quest.
---@since Patch 8.3.0 (2020-01-14): Added. (Build 33369, Feb 13 2020)
function C_QuestLog.QuestCanHaveWarModeBonus(questID)
end

---
---@param questID number 
---@return boolean questContainsFirstTimeRepBonusForPlayer 
function C_QuestLog.QuestContainsFirstTimeRepBonusForPlayer(questID)
end

---
---@param questID number 
---@return boolean hasBonus 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_QuestLog.QuestHasQuestSessionBonus(questID)
end

---
---@param questID number 
---@return boolean hasBonus 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_QuestLog.QuestHasWarModeBonus(questID)
end

---
---@param questID number 
---@return boolean questIgnoresAccountCompletedFiltering 
function C_QuestLog.QuestIgnoresAccountCompletedFiltering(questID)
end

---Returns true if all criteria for a given quest are complete.
---@param questID number 
---@return boolean readyForTurnIn ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.ReadyForTurnIn(questID)
end

---
---@param questID number 
---@return boolean wasRemoved 
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.RemoveQuestWatch()
function C_QuestLog.RemoveQuestWatch(questID)
end

---Untracks a world quest.
---@param questID number 
---@return boolean wasRemoved 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLog.RemoveWorldQuestWatch(questID)
end

---Requests quest data from the server.
---@param questID number 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_QuestLog.RequestLoadQuestByID(questID)
end

---Sets the selected quest to be abandoned.
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.SetAbandonQuest()
function C_QuestLog.SetAbandonQuest()
end

---
---@param uiMapID number UiMapID
---@since Patch 8.0.1 (2018-07-17): Added.
function C_QuestLog.SetMapForQuestPOIs(uiMapID)
end

---Selects a quest in the quest log.
---@param questID number 
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.SetSelectedQuest()
function C_QuestLog.SetSelectedQuest(questID)
end

---
---@param questID number 
---@return boolean displayTimeRemaining 
---@since Patch 9.0.5 (2021-03-09): Added.
function C_QuestLog.ShouldDisplayTimeRemaining(questID)
end

---
---@param questID number 
---@return boolean shouldShow 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_QuestLog.ShouldShowQuestRewards(questID)
end

---Sorts watched quests by proximity to the player character.
---@since Patch 9.0.1 (2020-10-13): Moved to C_QuestLog.SortQuestWatches()
function C_QuestLog.SortQuestWatches()
end

---
---@param unit string 
---@return boolean isRelatedToActiveQuest 
function C_QuestLog.UnitIsRelatedToActiveQuest(unit)
end

---
function C_QuestLog.UpdateCampaignHeaders()
end
