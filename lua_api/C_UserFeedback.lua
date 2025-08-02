-- C_UserFeedback API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_UserFeedback
C_UserFeedback = {}

---Replaces `GMSubmitBug`.
---@param bugInfo string 
---@param suppressNotification boolean ? = false
---@return boolean success 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_UserFeedback.SubmitBug(bugInfo, suppressNotification)
end

---Replaces `GMSubmitSuggestion`.
---@param suggestion string 
---@return boolean success 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_UserFeedback.SubmitSuggestion(suggestion)
end
