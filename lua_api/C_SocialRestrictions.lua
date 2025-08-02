-- C_SocialRestrictions API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_SocialRestrictions
C_SocialRestrictions = {}

---
---@since Patch 9.1.5 (2021-11-02): Added.
function C_SocialRestrictions.AcknowledgeRegionalChatDisabled()
end

---Returns true if the player meets all conditions that allow them to receive chat messages.
---@return boolean canReceiveChat 
function C_SocialRestrictions.CanReceiveChat()
end

---Returns true if the player meets all conditions that allow them to send chat messages.
---@return boolean canSendChat 
function C_SocialRestrictions.CanSendChat()
end

---
---@return boolean disabled 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_SocialRestrictions.IsChatDisabled()
end

---
---@return boolean isMuted 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_SocialRestrictions.IsMuted()
end

---
---@return boolean isSilenced 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_SocialRestrictions.IsSilenced()
end

---
---@return boolean isSquelched 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_SocialRestrictions.IsSquelched()
end

---
---@param disabled boolean 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_SocialRestrictions.SetChatDisabled(disabled)
end
