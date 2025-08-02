-- C_QuestLine API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_QuestLine
C_QuestLine = {}

---Returns available quest lines on a map.
---@param uiMapID number UiMapID
---@return QuestLineInfo questLines []
---@since Patch 8.0.1 (2018-07-17): Added.[1]
function C_QuestLine.GetAvailableQuestLines(uiMapID)
end

---
---@param uiMapID number 
---@return number questIDs []
function C_QuestLine.GetForceVisibleQuests(uiMapID)
end

---
---@param questID number 
---@param uiMapID number ? : UiMapID
---@param displayableOnly boolean ? = false
---@return QuestLineInfo questLineInfo ?
---@since Patch 11.0.0 (2024-07-23): Added displayableOnly argument.
function C_QuestLine.GetQuestLineInfo(questID, uiMapID, displayableOnly)
end

---
---@param questLineID number 
---@return number questIDs []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_QuestLine.GetQuestLineQuests(questLineID)
end

---
---@param questLineID number 
---@return boolean isComplete 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestLine.IsComplete(questLineID)
end

---
---@param uiMapID number 
---@param questLineID number 
---@return boolean questLineIgnoresAccountCompletedFiltering 
function C_QuestLine.QuestLineIgnoresAccountCompletedFiltering(uiMapID, questLineID)
end

---Downloads updated information about quest lines ("chains" or "hubs") that might appear as map pins.
---@param uiMapID number 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_QuestLine.RequestQuestLinesForMap(uiMapID)
end
