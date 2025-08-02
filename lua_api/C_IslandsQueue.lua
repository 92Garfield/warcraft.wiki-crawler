-- C_IslandsQueue API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_IslandsQueue
C_IslandsQueue = {}

---Closes the islands queue screen.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_IslandsQueue.CloseIslandsQueueScreen()
end

---Returns the island expedition modes.
---@return  islandDifficultyInfo structure - IslandsQueueDifficultyInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_IslandsQueue.GetIslandDifficultyInfo()
end

---Returns the max group size for expeditions.
---@return number maxGroupSize - Returns 3.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_IslandsQueue.GetIslandsMaxGroupSize()
end

---Returns the weekly island quest.
---@return number questID ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_IslandsQueue.GetIslandsWeeklyQuestID()
end

---Queues for an island expedition.
---@param difficultyID number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_IslandsQueue.QueueForIsland(difficultyID)
end

---Preloads reward data for a quest id.
---@param questId number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_IslandsQueue.RequestPreloadRewardData(questId)
end
