-- C_TaskQuest API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_TaskQuest
C_TaskQuest = {}

---
---@param uiMapID number UiMapID
---@return boolean showsTaskQuestObjectives 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_TaskQuest.DoesMapShowTaskQuestObjectives(uiMapID)
end

---
---@param questID number 
---@return number widgetSet 
function C_TaskQuest.GetQuestIconUIWidgetSet(questID)
end

---
---@param questID number 
---@return string questTitle 
---@return number factionID ? : FactionID
---@return boolean capped ?
---@return boolean displayAsObjective ?
---@since Patch 8.3.0 (2020-01-14): Added displayAsObjective return.
function C_TaskQuest.GetQuestInfoByQuestID(questID)
end

---
---@param questID number 
---@param uiMapID number UiMapID
---@return number locationX 
---@return number locationY 
---@since Patch 8.0.1 (2018-07-17): Replaced mapID, parentMapID arguments with questID, uiMapID
function C_TaskQuest.GetQuestLocation(questID, uiMapID)
end

---
---@param questID number 
---@return number progress 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_TaskQuest.GetQuestProgressBarInfo(questID)
end

---Returns the time left for a quest.
---@param questID number 
---@return number secondsLeft - time left in seconds.
function C_TaskQuest.GetQuestTimeLeftMinutes(questID)
end

---Returns the time left for a quest.
---@param questID number 
---@return number secondsLeft - time left in seconds.
function C_TaskQuest.GetQuestTimeLeftSeconds(questID)
end

---
---@param questID number 
---@return number widgetSet 
function C_TaskQuest.GetQuestTooltipUIWidgetSet(questID)
end

---
---@param questID number 
---@return number uiMapID : UiMapID
---@since Patch 8.0.1 (2018-07-17): Replaced mapID, zoneMapID return values with uiMapID
function C_TaskQuest.GetQuestZoneID(questID)
end

---Locates world quests, follower quests and bonus objectives on a map.
---@param uiMapID number UiMapID
---@return QuestPOIMapInfo taskPOIs []
---@since Patch 11.0.5 (2024-10-22): Replaced TaskPOIData return struct with QuestPOIMapInfo, Added questTagType, isMeta, isMapIndicatorQuest fields, Replaced questId with questID
function C_TaskQuest.GetQuestsOnMap(uiMapID)
end

---
---@return number quests []
---@since Patch 8.3.0 (2020-01-14): Added.
function C_TaskQuest.GetThreatQuests()
end

---
---@param questID number 
---@return boolean active 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TaskQuest.IsActive(questID)
end

---
---@param questID number 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TaskQuest.RequestPreloadRewardData(questID)
end
