--[=[
-- C_EventUtils API Documentation
-- Generated from warcraft.wiki.gg
-- Generated on: 2025-08-02 23:23:19
-- Functions: 2
--]=]

--- @class C_EventUtils
--- C_EventUtils namespace contains 2 functions
local C_EventUtils = {}

--[=[
-- C_EventUtils Functions:
-- - C_EventUtils.IsEventValid
-- - C_EventUtils.NotifySettingsLoaded
--]=]

---======================================================================
--- C_EventUtils.IsEventValid
---======================================================================
--- Checks if a named event exists and can be registered for.
---
--- Arguments:
--- @param eventName string - The name of the event to query.
---
--- Returns:
--- @return boolean valid - true if the named event exists and can be registered for, false if not.
---
--- @since Patch 10.0.0 (2022-10-25): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_EventUtils.IsEventValid
---
--- Usage: valid = C_EventUtils.IsEventValid(eventName)
---
-- function C_EventUtils.IsEventValid()
-- end

---======================================================================
--- C_EventUtils.NotifySettingsLoaded
---======================================================================
--- Notifies the user interface that settings are loaded and are ready to be queried.
---
--- @since Patch 10.0.0 (2022-10-25): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_EventUtils.NotifySettingsLoaded
---
--- Usage: C_EventUtils.NotifySettingsLoaded()
---
-- function C_EventUtils.NotifySettingsLoaded()
-- end
