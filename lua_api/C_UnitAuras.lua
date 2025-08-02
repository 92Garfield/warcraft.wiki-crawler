-- C_UnitAuras API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_UnitAuras
C_UnitAuras = {}

---
---@param args AddPrivateAuraAnchorArgs 
---@return number anchorID ?
function C_UnitAuras.AddPrivateAuraAnchor(args)
end

---
---@param sound UnitPrivateAuraAppliedSoundInfo 
---@return number privateAuraSoundID ?
function C_UnitAuras.AddPrivateAuraAppliedSound(sound)
end

---
---@param spellID number 
---@return boolean isPrivate 
function C_UnitAuras.AuraIsPrivate(spellID)
end

---Returns information about an aura on a unit by a given aura instance ID.
---@param unit string UnitId - The unit to query.
---@param auraInstanceID number - An aura instance ID.
---@return UnitAuraInfo aura ? - Structured information about the found aura, if any.
---@since Patch 10.0.0 (2022-10-25): Added.
function C_UnitAuras.GetAuraDataByAuraInstanceID(unit, auraInstanceID)
end

---HARMFUL: Certain debuffs that only show up on raid frames, e.g. most debuffs that are relevant in a raid context.
---@param unitToken string UnitToken
---@param index number 
---@param filter string ? - A list of filters, separated by pipe chars or spaces. Otherwise defaults to "HELPFUL".
---@return AuraData aura ?
function C_UnitAuras.GetAuraDataByIndex(unitToken, index, filter)
end

---Returns information about an aura on a unit by a given slot index.
---@param unit string UnitId - The unit to query.
---@param slot number - A slot index obtained from the variable returns of UnitAuraSlots.
---@return UnitAuraInfo aura ? - Structured information about the found aura, if any.
---@since Patch 10.0.0 (2022-10-25): Added.
function C_UnitAuras.GetAuraDataBySlot(unit, slot)
end

---HARMFUL: Certain debuffs that only show up on raid frames, e.g. most debuffs that are relevant in a raid context.
---@param unitToken string - UnitId
---@param spellName string 
---@param filter string ? - A list of filters, separated by pipe chars or spaces. Otherwise defaults to "HELPFUL".
---@return AuraData aura ?
function C_UnitAuras.GetAuraDataBySpellName(unitToken, spellName, filter)
end

---
---@param unitToken string UnitToken
---@param filter string ?
---@param maxSlots number ?
---@param continuationToken number ?
---@return number outContinuationToken ?
function C_UnitAuras.GetAuraSlots(unitToken, filter, maxSlots, continuationToken)
end

---HARMFUL: Certain debuffs that only show up on raid frames, e.g. most debuffs that are relevant in a raid context.
---@param unitToken string UnitToken
---@param index number 
---@param filter string ? - A list of filters, separated by pipe chars or spaces. Otherwise defaults to "HELPFUL".
---@return AuraData aura ?
function C_UnitAuras.GetBuffDataByIndex(unitToken, index, filter)
end

---Obtains the spell ID of a passive cooldown effect associated with a spell.
---@param spellID number - The spell ID to query.
---@return number passiveCooldownSpellID ? - The spell ID of an associated passive aura effect, if any.
---@since Patch 10.0.0 (2022-10-25): Added.
function C_UnitAuras.GetCooldownAuraBySpellID(spellID)
end

---HARMFUL: Certain debuffs that only show up on raid frames, e.g. most debuffs that are relevant in a raid context.
---@param unitToken string UnitToken
---@param index number 
---@param filter string ? - A list of filters, separated by pipe chars or spaces. Otherwise defaults to "HARMFUL".
---@return AuraData aura ?
function C_UnitAuras.GetDebuffDataByIndex(unitToken, index, filter)
end

---Returns information about an aura on the player by a given spell ID.
---@param spellID number - The spell ID to query.
---@return AuraData aura ? - Structured information about the found aura, if any.
---@since Patch 10.0.0 (2022-10-25): Added.
function C_UnitAuras.GetPlayerAuraBySpellID(spellID)
end

---Tests if an aura passes a specific filter.
---@param unit string UnitId - The unit to query.
---@param auraInstanceID number - The aura instance ID to test.
---@param filterString string - The aura filter string to test, eg. "HELPFUL" or "HARMFUL".
---@return boolean isFiltered - true if the aura passes the specified filter, or false if not.
---@since Patch 10.0.0 (2022-10-25): Added.
function C_UnitAuras.IsAuraFilteredOutByInstanceID(unit, auraInstanceID, filterString)
end

---
---@param anchorID number 
function C_UnitAuras.RemovePrivateAuraAnchor(anchorID)
end

---
---@param privateAuraSoundID number 
function C_UnitAuras.RemovePrivateAuraAppliedSound(privateAuraSoundID)
end

---
---@param parent Frame🔗 
---@param anchor AnchorBinding ?
function C_UnitAuras.SetPrivateWarningTextAnchor(parent, anchor)
end

---
---@param unitToken string 
---@return boolean wantsAlteredForm 
function C_UnitAuras.WantsAlteredForm(unitToken)
end
