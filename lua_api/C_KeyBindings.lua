-- C_KeyBindings API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_KeyBindings
C_KeyBindings = {}

---
---@param action string 
---@return number bindingIndex ?
function C_KeyBindings.GetBindingIndex(action)
end

---Returns the type of a custom binding.
---@param bindingIndex number 
---@return  customBindingType Enum.CustomBindingType (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_KeyBindings.GetCustomBindingType(bindingIndex)
end
