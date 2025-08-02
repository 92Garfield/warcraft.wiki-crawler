-- C_LootHistory API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_LootHistory
C_LootHistory = {}

---
---@return EncounterLootInfo infos []
function C_LootHistory.GetAllEncounterInfos()
end

---
---@param encounterID number 
---@return EncounterLootInfo info ?
function C_LootHistory.GetInfoForEncounter(encounterID)
end

---
---@return number time 
function C_LootHistory.GetLootHistoryTime()
end

---
---@param encounterID number 
---@return EncounterLootDropInfo drops []?
function C_LootHistory.GetSortedDropsForEncounter(encounterID)
end

---
---@param encounterID number 
---@param lootListID number 
---@return EncounterLootDropInfo info ?
function C_LootHistory.GetSortedInfoForDrop(encounterID, lootListID)
end
