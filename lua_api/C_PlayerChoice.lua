-- C_PlayerChoice API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_PlayerChoice
C_PlayerChoice = {}

---
---@return PlayerChoiceInfo choiceInfo 
---@since Patch 11.1.5 (2025-04-22): Removed rarityColor field.
function C_PlayerChoice.GetCurrentPlayerChoiceInfo()
end

---
---@return number numRerolls 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_PlayerChoice.GetNumRerolls()
end

---
---@return number remainingTime ?
---@since Patch 9.2.0 (2022-02-22): Added.
function C_PlayerChoice.GetRemainingTime()
end

---Returns true if the player has an outstanding player choice that requires a response.
---@return boolean isWaitingForResponse 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PlayerChoice.IsWaitingForPlayerChoiceResponse()
end

---
---@since Patch 9.1.0 (2021-06-29): Added.
function C_PlayerChoice.OnUIClosed()
end

---
---@since Patch 9.1.0 (2021-06-29): Added.
function C_PlayerChoice.RequestRerollPlayerChoice()
end

---Selects a quest option to pursue.
---@param responseID number - Response ID of the option the player wishes to pursue from C_PlayerChoice.GetCurrentPlayerChoiceInfo()
---@since Patch 9.1.0 (2021-06-29): Added.
function C_PlayerChoice.SendPlayerChoiceResponse(responseID)
end
