-- C_LegendaryCrafting API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_LegendaryCrafting
C_LegendaryCrafting = {}

---
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.CloseRuneforgeInteraction()
end

---
---@param description RuneforgeLegendaryCraftDescription 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.CraftRuneforgeLegendary(description)
end

---
---@param baseItem ItemLocationMixin 🔗
---@param runeforgePowerID number ?
---@param modifiers number []?
---@return RuneforgeItemPreviewInfo info ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.GetRuneforgeItemPreviewInfo(baseItem, runeforgePowerID, modifiers)
end

---
---@param runeforgeLegendary ItemLocationMixin 🔗
---@return RuneforgeLegendaryComponentInfo componentInfo 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.GetRuneforgeLegendaryComponentInfo(runeforgeLegendary)
end

---
---@param baseItem ItemLocationMixin 🔗
---@return CurrencyCost cost []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.GetRuneforgeLegendaryCost(baseItem)
end

---
---@return number spellID 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.GetRuneforgeLegendaryCraftSpellID()
end

---
---@return number currencies []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.GetRuneforgeLegendaryCurrencies()
end

---
---@param runeforgeLegendary ItemLocationMixin 🔗
---@param upgradeItem ItemLocationMixin 🔗
---@return CurrencyCost cost []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.GetRuneforgeLegendaryUpgradeCost(runeforgeLegendary, upgradeItem)
end

---
---@param baseItem ItemLocationMixin 🔗
---@param powerID number ?
---@param addedModifierIndex number 
---@param modifiers number []
---@return string name 
---@return string description []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.GetRuneforgeModifierInfo(baseItem, powerID, addedModifierIndex, modifiers)
end

---
---@return number modifiedReagentItemIDs []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.GetRuneforgeModifiers()
end

---
---@param runeforgePowerID number 
---@return RuneforgePower power 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.GetRuneforgePowerInfo(runeforgePowerID)
end

---
---@param runeforgePowerID number 
---@return string slotNames []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.GetRuneforgePowerSlots(runeforgePowerID)
end

---
---@param baseItem ItemLocationMixin ?🔗
---@param filter Enum.RuneforgePowerFilter ?
---@return number primaryRuneforgePowerIDs []
---@return number otherRuneforgePowerIDs []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.GetRuneforgePowers(baseItem, filter)
end

---
---@param classID number ? : ClassId
---@param specID number ? : SpecializationID
---@param covenantID number ?
---@param filter Enum.RuneforgePowerFilter ?
---@return number runeforgePowerIDs []
---@since Patch 9.1.0 (2021-06-29): Added.
function C_LegendaryCrafting.GetRuneforgePowersByClassSpecAndCovenant(classID, specID, covenantID, filter)
end

---
---@param item ItemLocationMixin 🔗
---@return boolean isRuneforgeLegendary 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.IsRuneforgeLegendary(item)
end

---
---@param runeforgeLegendary ItemLocationMixin 🔗
---@return boolean isMaxLevel 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.IsRuneforgeLegendaryMaxLevel(runeforgeLegendary)
end

---
---@param runeforgeLegendary ItemLocationMixin 🔗
---@param upgradeItem ItemLocationMixin 🔗
---@return boolean isValid 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.IsUpgradeItemValidForRuneforgeLegendary(runeforgeLegendary, upgradeItem)
end

---
---@param baseItem ItemLocationMixin 🔗
---@return boolean isValid 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.IsValidRuneforgeBaseItem(baseItem)
end

---
---@param baseItem ItemLocationMixin 🔗
---@param runeforgePowerID number 
---@param modifiers number []
---@return RuneforgeLegendaryCraftDescription description 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.MakeRuneforgeCraftDescription(baseItem, runeforgePowerID, modifiers)
end

---
---@param runeforgeLegendary ItemLocationMixin 🔗
---@param upgradeItem ItemLocationMixin 🔗
---@since Patch 9.0.1 (2020-10-13): Added.
function C_LegendaryCrafting.UpgradeRuneforgeLegendary(runeforgeLegendary, upgradeItem)
end
