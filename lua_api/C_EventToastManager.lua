-- C_EventToastManager API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_EventToastManager
C_EventToastManager = {}

---
---@param level number 
---@return EventToastInfo toastInfo []
---@since Patch 9.1.0 (2021-06-29): Added.
function C_EventToastManager.GetLevelUpDisplayToastsFromLevel(level)
end

---
---@return EventToastInfo toastInfo 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_EventToastManager.GetNextToastToDisplay()
end

---
---@since Patch 9.1.0 (2021-06-29): Added.
function C_EventToastManager.RemoveCurrentToast()
end
