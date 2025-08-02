-- C_ClickBindings API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ClickBindings
C_ClickBindings = {}

---
---@param spellID number - Base spellID for spell, spellID for PetAction
---@return boolean canBeBound 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_ClickBindings.CanSpellBeClickBound(spellID)
end

---
---@param targetToken string 
---@param button string 
---@param modifiers number 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_ClickBindings.ExecuteBinding(targetToken, button, modifiers)
end

---
---@param button string 
---@param modifiers number 
---@return Enum.ClickBindingType type 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_ClickBindings.GetBindingType(button, modifiers)
end

---
---@param button string 
---@param modifiers number 
---@return string effectiveButton 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_ClickBindings.GetEffectiveInteractionButton(button, modifiers)
end

---
---@return ClickBindingInfo infoVec []
---@since Patch 9.2.0 (2022-02-22): Added.
function C_ClickBindings.GetProfileInfo()
end

---
---@param modifiers number 
---@return string modifierString 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_ClickBindings.GetStringFromModifiers(modifiers)
end

---
---@return boolean tutorialShown 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_ClickBindings.GetTutorialShown()
end

---
---@return number modifiers 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_ClickBindings.MakeModifiers()
end

---
---@since Patch 9.2.0 (2022-02-22): Added.
function C_ClickBindings.ResetCurrentProfile()
end

---
---@param infoVec ClickBindingInfo []
---@since Patch 9.2.0 (2022-02-22): Added.
function C_ClickBindings.SetProfileByInfo(infoVec)
end

---
---@since Patch 9.2.0 (2022-02-22): Added.
function C_ClickBindings.SetTutorialShown()
end
