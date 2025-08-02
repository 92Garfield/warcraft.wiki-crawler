-- C_Ping API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Ping
C_Ping = {}

---
---@param targetUnit string ? : WOWGUID
---@return Enum.PingSubjectType type 
function C_Ping.GetContextualPingTypeForUnit(targetUnit)
end

---
---@return PingCooldownInfo cooldownInfo []
---@since Patch 10.2.5 (2024-01-16): Moved to C_Ping namespace and no longer forbidden.
function C_Ping.GetCooldownInfo()
end

---
---@return PingTypeInfo pingTypes []
---@since Patch 10.2.5 (2024-01-16): Moved to C_Ping namespace and no longer forbidden.
function C_Ping.GetDefaultPingOptions()
end

---
---@param type Enum.PingSubjectType - The type of the Ping, e.g. 2 for "Assist" and 3 for "OnMyWay" Pings.
---@return string uiTextureKitID : textureKit - Name of a texture kit for the Ping.
---@since Patch 10.2.5 (2024-01-16): Moved to C_Ping namespace and no longer forbidden.
function C_Ping.GetTextureKitForType(type)
end

---#protected - This can only be called from secure code.
---@param type Enum.PingSubjectType ?
function C_Ping.SendMacroPing(type)
end

---#protected - This can only be called from secure code.
---@param down boolean 
function C_Ping.TogglePingListener(down)
end
