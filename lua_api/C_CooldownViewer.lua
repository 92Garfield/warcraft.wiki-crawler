-- C_CooldownViewer API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_CooldownViewer
C_CooldownViewer = {}

---
---@param category Enum.CooldownViewerCategory 
---@return number cooldownIDs []
function C_CooldownViewer.GetCooldownViewerCategorySet(category)
end

---
---@param cooldownID number 
---@return CooldownViewerCooldown cooldownInfo 
function C_CooldownViewer.GetCooldownViewerCooldownInfo(cooldownID)
end

---
---@return boolean isAvailable 
---@return string failureReason 
---@since Patch 11.1.7 (2025-06-17): Added failureReason return value.
function C_CooldownViewer.IsCooldownViewerAvailable()
end
