-- C_EventUtils API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_EventUtils
C_EventUtils = {}

---Checks if a named event exists and can be registered for.
---@param eventName string - The name of the event to query.
---@return boolean valid - true if the named event exists and can be registered for, false if not.
---@since Patch 10.0.0 (2022-10-25): Added.
function C_EventUtils.IsEventValid(eventName)
end

---Notifies the user interface that settings are loaded and are ready to be queried.
---@since Patch 10.0.0 (2022-10-25): Added.
function C_EventUtils.NotifySettingsLoaded()
end
