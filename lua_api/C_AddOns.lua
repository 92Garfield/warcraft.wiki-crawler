-- C_AddOns API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_AddOns
C_AddOns = {}

---Sets an addon to be disabled.
---@param name number |string : uiAddon - The name of the addon to be disabled, or an index from 1 to C_AddOns.GetNumAddOns. Blizzard addons cannot be disabled.
---@param character string ? - The name or GUID of the character, excluding the realm name. If omitted, disables the addon for all characters.
---@since Hotfix (2024-05-16): This function can no longer be used to disable secure Blizzard addons.  (Build: 10.2.7.54736)
function C_AddOns.DisableAddOn(name, character)
end

---Sets all addons to be disabled.
---@param character string ? - The name or GUID of the character, excluding the realm name. If omitted, disables all addons for all characters.
function C_AddOns.DisableAllAddOns(character)
end

---
---@param name number |string : uiAddon
---@return boolean exists 
function C_AddOns.DoesAddOnExist(name)
end

---
---@param name number |string : uiAddon
---@return boolean hadError 
function C_AddOns.DoesAddOnHaveLoadError(name)
end

---Sets an addon to be enabled.
---@param name number |string : uiAddon - The name of the addon to be enabled, or an index from 1 to C_AddOns.GetNumAddOns. Blizzard addons can only be enabled by name.
---@param character string ? - The name or GUID of the character, excluding the realm name. If omitted, enables the addon for all characters.
---@since Patch 10.2.0 (2023-11-07): Namespaced to C_AddOns. This now defaults to all characters instead of the current character if the character param is omitted.
function C_AddOns.EnableAddOn(name, character)
end

---Sets all addons to be enabled.
---@param character string ? - The name or GUID of the character, excluding the realm name. If omitted, enables all addons for all characters.
function C_AddOns.EnableAllAddOns(character)
end

---Returns a list of TOC dependencies.
---@param name number |string : uiAddon - The name of the addon to be queried, or an index from 1 to C_AddOns.GetNumAddOns. Blizzard addons can only be queried by name.
---@return string dep1, ... ? - A list of addon names that are a dependency.
function C_AddOns.GetAddOnDependencies(name)
end

---Queries the enabled state of an addon, optionally for a specific character.
---@param name number |string : uiAddon - The name of the addon to be queried, or an index from 1 to C_AddOns.GetNumAddOns. The state of Blizzard addons can only be queried by name.
---@param character string ? - The name or GUID of the character to check against, or omitted/nil for all characters
---@return Enum.AddOnEnableState state - The enabled state of the addon.
---@since Patch 10.2.0 (2023-11-07): Added.
function C_AddOns.GetAddOnEnableState(name, character)
end

---
---@param name number |string : uiAddon - The name of the addon to be queried, or an index from 1 to C_AddOns.GetNumAddOns. The state of Blizzard addons can only be queried by name.
---@return string name - The name of the AddOn (the folder name).
---@return string title - The localized title of the AddOn as listed in the .toc file.
---@return string notes - The localized notes about the AddOn from its .toc file.
---@return boolean loadable - Indicates if the AddOn is loaded or eligible to be loaded on this or another character, true if it is, false if it is not.
---@return string reason - The reason why the AddOn cannot be loaded. This is nil if the addon is loadable, otherwise it contains a string token indicating the reason that can be localized by prepending "ADDON_".
---@return string security - Indicates the security status of the AddOn. This is currently "INSECURE" for all user provided addons, "SECURE_PROTECTED" for guarded Blizzard addons, and "SECURE" for all other Blizzard AddOns.
---@return boolean updateAvailable - Not currently used.
function C_AddOns.GetAddOnInfo(name)
end

---Returns the value of the Interface directive in an addon TOC file.
---@param name number |string : uiAddon
---@return number interfaceVersion 
function C_AddOns.GetAddOnInterfaceVersion(name)
end

---Returns the addon table (passed as the second argument of ... to files) for any addon that opts in through setting AllowAddOnTableAccess: 1 in the toc file. Insecure code cannot query addon tables from Blizzard addons.
---@param name number |string : uiAddon
---@return table table : LuaValueVariant
function C_AddOns.GetAddOnLocalTable(name)
end

---Returns the TOC metadata of an addon.
---@param name number |string : uiAddon - The name or index of the addon, case insensitive.
---@param variable string - Variable name, case insensitive. May be Title, Notes, Author, Version, or anything starting with X-
---@return string value ? - The value of the variable, nil if not defined.
function C_AddOns.GetAddOnMetadata(name, variable)
end

---Returns a list of optional TOC dependencies.
---@param name number |string : uiAddon - The name of the addon to be queried, or an index from 1 to C_AddOns.GetNumAddOns. The state of Blizzard addons can only be queried by name.
---@return string dep1, ... ? - A list of addon names that are an optional dependency.
function C_AddOns.GetAddOnOptionalDependencies(name)
end

---Returns the number of AddOns.
---@return number numAddOns - The number of user installed addons. Blizzard addons are not counted.
function C_AddOns.GetNumAddOns()
end

---
---@return boolean disallowed 
function C_AddOns.GetScriptsDisallowedForBeta()
end

---
---@param name number |string : uiAddon
---@return boolean defaultEnabled 
function C_AddOns.IsAddOnDefaultEnabled(name)
end

---
---@param name number |string : uiAddon - The name of the addon to be queried, or an index from 1 to C_AddOns.GetNumAddOns. The state of Blizzard addons can only be queried by name.
---@return boolean loadOnDemand 
function C_AddOns.IsAddOnLoadOnDemand(name)
end

---
---@param name number |string : uiAddon - The name of the addon to be queried, or an index from 1 to C_AddOns.GetNumAddOns. The state of Blizzard addons can only be queried by name.
---@param character string ? - The name or GUID of the character to check against, or omitted/nil for all characters
---@param demandLoaded boolean ? = false
---@return boolean loadable 
---@return string reason 
function C_AddOns.IsAddOnLoadable(name, character, demandLoaded)
end

---
---@param name number |string : uiAddon - The name of the addon to be queried, or an index from 1 to C_AddOns.GetNumAddOns. The state of Blizzard addons can only be queried by name.
---@return boolean loadedOrLoading 
---@return boolean loaded 
function C_AddOns.IsAddOnLoaded(name)
end

---
---@return boolean isEnabled 
function C_AddOns.IsAddonVersionCheckEnabled()
end

---
---@param name number |string : uiAddon - The name of the addon to be queried, or an index from 1 to C_AddOns.GetNumAddOns. The state of Blizzard addons can only be queried by name.
---@return boolean loaded ? - true if the addon was loaded successfully, or if it has already been loaded.
---@return string value ? - Locale-independent reason why the addon could not be loaded e.g. "DISABLED", otherwise returns nil if the addon was loaded.
function C_AddOns.LoadAddOn(name)
end

---
function C_AddOns.ResetAddOns()
end

---
function C_AddOns.ResetDisabledAddOns()
end

---
function C_AddOns.SaveAddOns()
end

---
---@param enabled boolean 
function C_AddOns.SetAddonVersionCheck(enabled)
end
