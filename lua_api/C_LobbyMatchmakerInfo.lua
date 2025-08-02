-- C_LobbyMatchmakerInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_LobbyMatchmakerInfo
C_LobbyMatchmakerInfo = {}

---
function C_LobbyMatchmakerInfo.AbandonQueue()
end

---
---@param playlistEntry Enum.PartyPlaylistEntry 
function C_LobbyMatchmakerInfo.EnterQueue(playlistEntry)
end

---
---@return Enum.PartyPlaylistEntry playlistEntry 
function C_LobbyMatchmakerInfo.GetCurrQueuePlaylistEntry()
end

---
---@return Enum.PlunderstormQueueState queueState 
function C_LobbyMatchmakerInfo.GetCurrQueueState()
end

---
---@return boolean queueFromMainlineEnabled 
function C_LobbyMatchmakerInfo.GetQueueFromMainlineEnabled()
end

---
---@return number queueStartTime 
function C_LobbyMatchmakerInfo.GetQueueStartTime()
end

---
---@return boolean isInQueue 
function C_LobbyMatchmakerInfo.IsInQueue()
end

---
---@param acceptQueue boolean 
function C_LobbyMatchmakerInfo.RespondToQueuePop(acceptQueue)
end
