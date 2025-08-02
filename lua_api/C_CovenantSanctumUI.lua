-- C_CovenantSanctumUI API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_CovenantSanctumUI
C_CovenantSanctumUI = {}

---
---@return boolean canAccess 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_CovenantSanctumUI.CanAccessReservoir()
end

---
---@return boolean canDeposit 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_CovenantSanctumUI.CanDepositAnima()
end

---#protected - This can only be called from secure code.Silently fails when not at the Sanctum Reservoir NPC.
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CovenantSanctumUI.DepositAnima()
end

---
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CovenantSanctumUI.EndInteraction()
end

---
---@return number currencyID : CurrencyID - Seems to return 1813
---@return number maxDisplayableValue 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CovenantSanctumUI.GetAnimaInfo()
end

---
---@return number currentTalentTreeID ?
---@since Patch 9.0.2 (2020-11-17): Added.
function C_CovenantSanctumUI.GetCurrentTalentTreeID()
end

---
---@return CovenantSanctumFeatureInfo features []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CovenantSanctumUI.GetFeatures()
end

---Get Renown level for currently active covenant.
---@return number level 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CovenantSanctumUI.GetRenownLevel()
end

---
---@param covenantID Enum.CovenantType 
---@return CovenantSanctumRenownLevelInfo levels []
---@since Patch 9.0.2 (2020-11-17): Added.
function C_CovenantSanctumUI.GetRenownLevels(covenantID)
end

---
---@param covenantID Enum.CovenantType 
---@return CovenantSanctumRenownRewardInfo rewards []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CovenantSanctumUI.GetRenownRewardsForLevel(covenantID)
end

---
---@return Enum.GarrTalentFeatureSubtype sanctumType ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CovenantSanctumUI.GetSanctumType()
end

---
---@return number currencyIDs []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CovenantSanctumUI.GetSoulCurrencies()
end

---
---@return boolean hasMaxRenown 
---@since Patch 9.0.5 (2021-03-09): Added.
function C_CovenantSanctumUI.HasMaximumRenown()
end

---
---@return boolean isInCatchUpMode 
---@since Patch 9.0.5 (2021-03-09): Added.
function C_CovenantSanctumUI.IsPlayerInRenownCatchUpMode()
end

---
---@return boolean isWeeklyCapped 
---@since Patch 9.0.5 (2021-03-09): Added.
function C_CovenantSanctumUI.IsWeeklyRenownCapped()
end

---
---@since Patch 9.0.5 (2021-03-09): Added.
function C_CovenantSanctumUI.RequestCatchUpState()
end
