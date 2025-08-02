-- C_Macro API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Macro
C_Macro = {}

---
---@param macroId number 
---@return string name ?
function C_Macro.GetMacroName(macroId)
end

---
---@param macroId number 
---@return number textureNum : fileID
function C_Macro.GetSelectedMacroIcon(macroId)
end

---#protected - This can only be called from secure code.Use the "macro" action type of SecureActionButtonTemplate.
---@param text string 
---@param button string 
function C_Macro.RunMacroText(text, button)
end
