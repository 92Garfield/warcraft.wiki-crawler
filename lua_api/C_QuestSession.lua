-- C_QuestSession API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_QuestSession
C_QuestSession = {}

---Indicates the player may request starting Party Sync.
---@return boolean allowed - True if the player is in a party that has not yet begun to activate Party Sync.
---@since Patch 8.2.5 (2019-09-24): Added.[1]
function C_QuestSession.CanStart()
end

---Indicates the player may request stopping Party Sync.
---@return boolean allowed - True if the player is in a party with Party Sync but may end it.
---@since Patch 8.2.5 (2019-09-24): Added.[1]
function C_QuestSession.CanStop()
end

---Indiciates Party Sync is active or requested by a party member.
---@return boolean exists - True if Party Sync is active or there is a pending request to activate it; false otherwise.
---@since Patch 8.2.5 (2019-09-24): Added.[1]
function C_QuestSession.Exists()
end

---
---@return  command Enum.QuestSessionCommand
---@since Patch 8.2.5 (2019-09-24): Added.
function C_QuestSession.GetAvailableSessionCommand()
end

---
---@return Enum command 
---@since Patch 8.2.5 (2019-09-24): Added.[1]
function C_QuestSession.GetPendingCommand()
end

---
---@return number proposedMaxLevel 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_QuestSession.GetProposedMaxLevelForSession()
end

---Identifies the party member requesting Party Sync.
---@return  details QuestSessionPlayerDetails?Returns nil if there is no pending request from another party member.
---@since Patch 8.2.5 (2019-09-24): Added.[1]
function C_QuestSession.GetSessionBeginDetails()
end

---
---@return number questID ? - QuestID
---@since Patch 8.2.5 (2019-09-24): Added.[1]
function C_QuestSession.GetSuperTrackedQuest()
end

---Indiciates Party Sync is active.
---@return boolean hasJoined - True if Party Sync is active; false otherwise.
---@since Patch 8.2.5 (2019-09-24): Added.[1]
function C_QuestSession.HasJoined()
end

---
---@return boolean hasPendingCommand 
---@since Patch 8.2.5 (2019-09-24): Added.[1]
function C_QuestSession.HasPendingCommand()
end

---Requests party members to begin Party Sync if permissible.
---@since Patch 8.2.5 (2019-09-24): Added.[1]
function C_QuestSession.RequestSessionStart()
end

---Stops Party Sync if permissible.
---@since Patch 8.2.5 (2019-09-24): Added.[1]
function C_QuestSession.RequestSessionStop()
end

---Consents to activating Party Sync following a request by another party member.
---@param beginSession boolean - True to agree with starting Party Sync, or false to reject it.
---@since Patch 8.2.5 (2019-09-24): Added.[1]
function C_QuestSession.SendSessionBeginResponse(beginSession)
end

---
---@param questID number - QuestID
---@param superTrack boolean 
---@since Patch 8.2.5 (2019-09-24): Added.[1]
function C_QuestSession.SetQuestIsSuperTracked(questID, superTrack)
end
