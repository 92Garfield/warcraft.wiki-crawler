-- C_ActionBar API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ActionBar
C_ActionBar = {}

---Used in conjunction with ACTION_RANGE_CHECK_UPDATE to inform the UI when an action goes in or out of range with its current target.
---@param actionID number 
---@param enable boolean - True if changes in range for the action should dispatch ActionRangeCheckUpdate. False if the action no longer needs the event.
function C_ActionBar.EnableActionRangeCheck(actionID, enable)
end

---Returns the list of action bar slots that contain the Assisted Combat action spell.
---@return number slots []
function C_ActionBar.FindAssistedCombatActionButtons()
end

---
---@param flyoutID number 
---@return number slots []
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ActionBar.FindFlyoutActionButtons(flyoutID)
end

---
---@param petActionID number 
---@return number slots []
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ActionBar.FindPetActionButtons(petActionID)
end

---
---@param spellID number 
---@return number slots []
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ActionBar.FindSpellActionButtons(spellID)
end

---Force updates some internals for an action button slot.
---@param slotID number 
function C_ActionBar.ForceUpdateAction(slotID)
end

---
---@param slotID number 
---@return number bonusBarIndex ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ActionBar.GetBonusBarIndexForSlot(slotID)
end

---
---@param actionID number 
---@return number onEquipSpellID ?
function C_ActionBar.GetItemActionOnEquipSpellID(actionID)
end

---
---@param petActionID number 
---@return number slots []
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ActionBar.GetPetActionPetBarIndices(petActionID)
end

---
---@param actionID number 
---@return number quality ?
function C_ActionBar.GetProfessionQuality(actionID)
end

---
---@param actionID number 
---@return number spellID 
function C_ActionBar.GetSpell(actionID)
end

---
---@return boolean hasButtons 
function C_ActionBar.HasAssistedCombatActionButtons()
end

---
---@param flyoutID number 
---@return boolean hasFlyoutActionButtons 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ActionBar.HasFlyoutActionButtons(flyoutID)
end

---True if the pet action is currently on your action bars.
---@param petActionID number 
---@return boolean hasPetActionButtons 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ActionBar.HasPetActionButtons(petActionID)
end

---
---@param petActionID number 
---@return boolean hasPetActionPetBarIndices 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ActionBar.HasPetActionPetBarIndices(petActionID)
end

---
---@param spellID number 
---@return boolean hasSpellActionButtons 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ActionBar.HasSpellActionButtons(spellID)
end

---Returns whether the given action button contains the Assisted Combat action spell.
---@param slotID number 
---@return boolean isAssistedCombatAction 
function C_ActionBar.IsAssistedCombatAction(slotID)
end

---
---@param slotID number 
---@return boolean isAutoCastPetAction 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ActionBar.IsAutoCastPetAction(slotID)
end

---
---@param slotID number 
---@return boolean isEnabledAutoCastPetAction 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ActionBar.IsEnabledAutoCastPetAction(slotID)
end

---Returns true if the specified action is a harmful one.
---@param actionID number 
---@param useNeutral boolean 
---@return boolean isHarmful 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ActionBar.IsHarmfulAction(actionID, useNeutral)
end

---Returns true if the specified action is a helpful one.
---@param actionID number 
---@param useNeutral boolean 
---@return boolean isHelpful 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ActionBar.IsHelpfulAction(actionID, useNeutral)
end

---
---@param spellID number 
---@return boolean isOnBarOrSpecialBar 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_ActionBar.IsOnBarOrSpecialBar(spellID)
end

---
---@param slotID number 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ActionBar.PutActionInSlot(slotID)
end

---
---@return boolean showHealthBar 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ActionBar.ShouldOverrideBarShowHealthBar()
end

---
---@return boolean showManaBar 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ActionBar.ShouldOverrideBarShowManaBar()
end

---
---@param slotID number 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ActionBar.ToggleAutoCastPetAction(slotID)
end
