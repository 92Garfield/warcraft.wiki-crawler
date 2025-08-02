-- C_CVar API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_CVar
C_CVar = {}

---Returns the current value of a console variable.
---@param name string CVar - name of the CVar to query the value of.
---@return string value ? - current value of the CVar.
---@since Patch 8.1.5 (2019-03-12): Namespaced to C_CVar.GetCVar().
function C_CVar.GetCVar(name)
end

---Returns the bitfield of a console variable.
---@param name string CVar - name of the CVar.
---@param index number - Bitfield index.
---@return boolean value ? - Value of the bitfield.
---@since Patch 8.1.5 (2019-03-12): Namespaced to C_CVar.GetCVarBitfield().
function C_CVar.GetCVarBitfield(name, index)
end

---Returns the boolean value of a console variable.
---@param name string - Name of the CVar to query the value of.
---@return boolean value ? - Compared to GetCVar, "1" would return as true, "0" would return as false
---@since Patch 8.1.5 (2019-03-12): Namespaced to C_CVar.GetCVarBool().
function C_CVar.GetCVarBool(name)
end

---Returns the default value of a console variable.
---@param name string - Name of the console variable to query.
---@return string defaultValue ? - Default value of the console variable.
---@since Patch 8.1.5 (2019-03-12): Namespaced to C_CVar.GetCVarDefault().
function C_CVar.GetCVarDefault(name)
end

---Returns information on a console variable.
---@param name string - Name of the CVar to query the value of. Only accepts console variables (i.e. not console commands).
---@return string value - Current value of the CVar.
---@return string defaultValue - Default value of the CVar.
---@return boolean isStoredServerAccount - If the CVar scope is set WoW account-wide. Stored on the server per CVar synchronizeConfig
---@return boolean isStoredServerCharacter - If the CVar scope is character-specific. Stored on the server per CVar synchronizeConfig
---@return boolean isLockedFromUser 
---@return boolean isSecure - If the CVar cannot be set with SetCVar while in combat, which would fire ADDON_ACTION_BLOCKED. It's also not possible to set these via /console. Most nameplate cvars are secure.
---@return boolean isReadOnly - Returns true for portal, serverAlert, timingTestError. These CVars cannot be changed.
---@since Patch 10.2.0 (2023-11-07): Moved to the C_CVar namespace. An alias from the old function name still exists but will be removed in a future patch.
function C_CVar.GetCVarInfo(name)
end

---Temporarily registers a custom console variable.
---@param name string - Name of the custom CVar to set.
---@param value string |number? = "0" - Initial value of the CVar.
---@since Patch 10.0.7 (2023-03-21): Registered CVars were written to disk, which conflicted with another issue, this was fixed in build 10.0.7.48838.[1]
function C_CVar.RegisterCVar(name, value)
end

---Resets the ActionCam cvars.
---@since Patch 8.1.5 (2019-03-12): Namespaced to C_CVar.ResetTestCVars().
function C_CVar.ResetTestCVars()
end

---Sets a console variable.
---@param name string CVar - Name of the CVar.
---@param value string |number? = "0" - The new value of the CVar.
---@return boolean success - Whether the CVar was successfully set. Returns nil if attempting to set a secure cvar in combat.
---@since Patch 10.0.0 (2022-10-25): Removed scriptCVar argument.
function C_CVar.SetCVar(name, value)
end

---Sets the bitfield of a console variable.
---@param name string - Name of the CVar to set the bitfield of.
---@param index number - Bitfield index.
---@param value boolean - The new value of the bitfield.
---@return boolean success - Whether the CVar was successfully set.
---@since Patch 10.0.0 (2022-10-25): Removed scriptCVar argument.
function C_CVar.SetCVarBitfield(name, index, value)
end
