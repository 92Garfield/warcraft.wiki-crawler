-- C_ZoneAbility API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ZoneAbility
C_ZoneAbility = {}

---Returns an array of abilities active within the current zone.
---@return ZoneAbilityInfo zoneAbilities []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ZoneAbility.GetActiveAbilities()
end

---
---@param zoneAbilitySpellID number 
---@return number zoneAbilityIconID ?
function C_ZoneAbility.GetZoneAbilityIcon(zoneAbilitySpellID)
end
