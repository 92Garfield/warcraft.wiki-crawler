-- C_PlayerInteractionManager API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_PlayerInteractionManager
C_PlayerInteractionManager = {}

---
---@param type Enum.PlayerInteractionType ?
function C_PlayerInteractionManager.ClearInteraction(type)
end

---
---@param type Enum.PlayerInteractionType ?
function C_PlayerInteractionManager.ConfirmationInteraction(type)
end

---#protected - This can only be called from secure code.
---@param unit string 
---@param exactMatch boolean ? = false
---@param looseTargeting boolean ? = true
---@return boolean success 
---@since Patch 10.0.7 (2023-03-21): Added looseTargeting argument.
function C_PlayerInteractionManager.InteractUnit(unit, exactMatch, looseTargeting)
end

---
---@param type Enum.PlayerInteractionType 
---@return boolean interacting 
function C_PlayerInteractionManager.IsInteractingWithNpcOfType(type)
end

---
---@return boolean replacing 
function C_PlayerInteractionManager.IsReplacingUnit()
end

---
---@param type Enum.PlayerInteractionType 
---@return boolean isValidInteraction 
function C_PlayerInteractionManager.IsValidNPCInteraction(type)
end

---
function C_PlayerInteractionManager.ReopenInteraction()
end
