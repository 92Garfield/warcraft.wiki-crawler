-- C_SocialQueue API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_SocialQueue
C_SocialQueue = {}

---
---@param allowNonJoinable boolean ? = false
---@param allowNonQueuedGroups boolean ? = false
---@return string groupGUIDs []
---@since Patch 7.1.0 (2016-10-25): Added.
function C_SocialQueue.GetAllGroups(allowNonJoinable, allowNonQueuedGroups)
end

---
---@return  config structure - SocialQueueConfig
---@since Patch 7.1.0 (2016-10-25): Added.
function C_SocialQueue.GetConfig()
end

---
---@param playerGUID string 
---@return string groupGUID 
---@return boolean isSoloQueueParty 
---@since Patch 7.1.0 (2016-10-25): Added.
function C_SocialQueue.GetGroupForPlayer(playerGUID)
end

---Retrieves information about a group in social queue.
---@param groupGUID string - a string containing the hexadecimal representation of the player's GUID
---@return boolean canJoin 
---@return number numQueues 
---@return boolean needTank 
---@return boolean needHealer 
---@return boolean needDamage 
---@return boolean isSoloQueueParty 
---@return boolean questSessionActive 
---@return string leaderGUID 
---@since Patch 8.2.5 (2019-09-24): Added questSessionActive return.
function C_SocialQueue.GetGroupInfo(groupGUID)
end

---
---@param groupGUID string 
---@return  groupMembers structure - SocialQueuePlayerInfo[]
---@since Patch 7.1.0 (2016-10-25): Added.
function C_SocialQueue.GetGroupMembers(groupGUID)
end

---
---@param groupGUID string 
---@return  queues structure - SocialQueueGroupQueueInfo[]
---@since Patch 7.1.0 (2016-10-25): Added.
function C_SocialQueue.GetGroupQueues(groupGUID)
end

---
---@param groupGUID string 
---@param applyAsTank boolean ? = false
---@param applyAsHealer boolean ? = false
---@param applyAsDamage boolean ? = false
---@return boolean requestSuccessful 
---@since Patch 7.1.0 (2016-10-25): Added.
function C_SocialQueue.RequestToJoin(groupGUID, applyAsTank, applyAsHealer, applyAsDamage)
end

---
---@param groupGUID string 
---@param priority number 
---@since Patch 7.1.0 (2016-10-25): Added.
function C_SocialQueue.SignalToastDisplayed(groupGUID, priority)
end
