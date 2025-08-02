-- C_AssistedCombat API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_AssistedCombat
C_AssistedCombat = {}

---
---@return number spellID ?
function C_AssistedCombat.GetActionSpell()
end

---
---@param checkForVisibleButton boolean ? = false
---@return number spellID ?
function C_AssistedCombat.GetNextCastSpell(checkForVisibleButton)
end

---
---@return number spellIDs []
function C_AssistedCombat.GetRotationSpells()
end

---
---@return boolean isAvailable 
---@return string failureReason 
function C_AssistedCombat.IsAvailable()
end
