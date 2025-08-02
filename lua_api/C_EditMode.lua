-- C_EditMode API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_EditMode
C_EditMode = {}

---
---@param layoutInfo EditModeLayoutInfo 
---@return string layoutInfoAsString 
function C_EditMode.ConvertLayoutInfoToString(layoutInfo)
end

---
---@param layoutInfoAsString string 
---@return EditModeLayoutInfo layoutInfo 
function C_EditMode.ConvertStringToLayoutInfo(layoutInfoAsString)
end

---These reflect the options checked within the Edit Mode dialog. See API_C_EditMode.SetAccountSetting for more details on what settings get returned.
---@return EditModeSettingInfo accountSettings []
function C_EditMode.GetAccountSettings()
end

---Returns the layouts of any custom layouts that exist. It does not return the layouts of the default layouts.
---@return EditModeLayouts layoutInfo 
function C_EditMode.GetLayouts()
end

---
---@param name string 
---@return boolean isApproved 
function C_EditMode.IsValidLayoutName(name)
end

---
function C_EditMode.OnEditModeExit()
end

---
---@param addedLayoutIndex number 
---@param activateNewLayout boolean 
---@param isLayoutImported boolean 
---@since Patch 10.0.5 (2023-01-24): Added activateNewLayout, isLayoutImported returns.
function C_EditMode.OnLayoutAdded(addedLayoutIndex, activateNewLayout, isLayoutImported)
end

---
---@param deletedLayoutIndex number 
function C_EditMode.OnLayoutDeleted(deletedLayoutIndex)
end

---
---@param saveInfo EditModeLayouts 
function C_EditMode.SaveLayouts(saveInfo)
end

---
---@param setting Enum.EditModeAccountSetting 
function C_EditMode.SetAccountSetting(setting)
end

---
---@param activeLayout number 
function C_EditMode.SetActiveLayout(activeLayout)
end
