-- C_RaidLocks API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_RaidLocks
C_RaidLocks = {}

---
---@param mapID number 
---@param difficultyID number 
---@return number redirectedDifficultyID 
function C_RaidLocks.GetRedirectedDifficultyID(mapID, difficultyID)
end

---
---@param mapID number UiMapID
---@param encounterID number JournalEncounterID
---@param difficultyID number ? : DifficultyID
---@return boolean encounterIsComplete 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_RaidLocks.IsEncounterComplete(mapID, encounterID, difficultyID)
end
