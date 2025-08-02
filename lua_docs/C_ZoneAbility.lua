--[=[
-- C_ZoneAbility API Documentation
-- Generated from warcraft.wiki.gg
-- Generated on: 2025-08-02 23:23:19
-- Functions: 2
--]=]

--- @class C_ZoneAbility
--- C_ZoneAbility namespace contains 2 functions
local C_ZoneAbility = {}

--[=[
-- C_ZoneAbility Functions:
-- - C_ZoneAbility.GetActiveAbilities
-- - C_ZoneAbility.GetZoneAbilityIcon
--]=]

---======================================================================
--- C_ZoneAbility.GetActiveAbilities
---======================================================================
--- Returns an array of abilities active within the current zone.
---
--- Returns:
--- @return ZoneAbilityInfo zoneAbilities []
---
--- @since Patch 9.0.1 (2020-10-13): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_ZoneAbility.GetActiveAbilities
---
--- Usage: zoneAbilities = C_ZoneAbility.GetActiveAbilities()
---
-- function C_ZoneAbility.GetActiveAbilities()
-- end

---======================================================================
--- C_ZoneAbility.GetZoneAbilityIcon
---======================================================================
--- Arguments:
--- @param zoneAbilitySpellID number
---
--- Returns:
--- @return number zoneAbilityIconID ?
---
--- @see https://warcraft.wiki.gg/wiki/API_C_ZoneAbility.GetZoneAbilityIcon
---
--- Usage: zoneAbilityIconID = C_ZoneAbility.GetZoneAbilityIcon(zoneAbilitySpellID)
---
-- function C_ZoneAbility.GetZoneAbilityIcon()
-- end
