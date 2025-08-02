-- C_GameRules API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_GameRules
C_GameRules = {}

---
---@param gameModeRecordID number 
function C_GameRules.AutoConnectToGameModeRealm(gameModeRecordID)
end

---
---@param gameModeRecordID number 
---@return boolean hasPromo 
function C_GameRules.DoesGameModeHavePromo(gameModeRecordID)
end

---
---@return Enum.GameMode gameMode 
function C_GameRules.GetActiveGameMode()
end

---
---@return Enum.EventRealmQueues eventRealmQueues 
function C_GameRules.GetCurrentEventRealmQueues()
end

---
---@return GameModeDisplayInfo info ?
function C_GameRules.GetCurrentGameModeDisplayInfo()
end

---
---@return number gameModeRecordID 
function C_GameRules.GetCurrentGameModeRecordID()
end

---
---@param displayIndex number 
---@return number gameModeRecordID 
function C_GameRules.GetDisplayedGameModeRecordIDAtIndex(displayIndex)
end

---
---@param gameModeRecordID number 
---@return GameModeDisplayInfo info ?
function C_GameRules.GetGameModeDisplayInfoByRecordID(gameModeRecordID)
end

---
---@return string screenName 
function C_GameRules.GetGameModeGlueScreenName()
end

---
---@param gameModeRecordID number 
---@return string promoGlobalString 
function C_GameRules.GetGameModePromoGlobalString(gameModeRecordID)
end

---Returns the numeric value specified in the Game Rule, multiplied by 0.1 for every decimal place requested
---@param gameRule Enum.GameRule 
---@param decimalPlaces number ? = 0
---@return number value 
function C_GameRules.GetGameRuleAsFloat(gameRule, decimalPlaces)
end

---Returns the value specified in the Game Rule converted to a frame strata
---@param gameRule Enum.GameRule 
---@return string frameStrata 
function C_GameRules.GetGameRuleAsFrameStrata(gameRule)
end

---
---@return number numDisplayedGameModes 
function C_GameRules.GetNumDisplayedGameModes()
end

---
---@return boolean active 
function C_GameRules.IsCharacterlessLoginActive()
end

---
---@param gameRule Enum.GameRule 
---@return boolean isActive 
function C_GameRules.IsGameRuleActive(gameRule)
end
