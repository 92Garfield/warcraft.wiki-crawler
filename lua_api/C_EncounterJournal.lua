-- C_EncounterJournal API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_EncounterJournal
C_EncounterJournal = {}

---Returns the instance entrances for a map. Contrary to what the name implies, this includes raid instances.
---@param uiMapID number 
---@return  dungeonEntrances structure - DungeonEntranceMapInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_EncounterJournal.GetDungeonEntrancesForMap(uiMapID)
end

---
---@param linkType Enum.JournalLinkTypes 
---@return string link 
function C_EncounterJournal.GetEncounterJournalLink(linkType)
end

---Returns boss pin locations for an instance map.
---@param uiMapID number 
---@return  encounters structure - EncounterJournalMapEncounterInfo[]
---@since Patch 8.0.1 (2018-07-17): Added. Replaces C_EncounterJournal.GetCurrentMapEncounters.
function C_EncounterJournal.GetEncountersOnMap(uiMapID)
end

---GameMap as opposed to UIMap since we use a mapID not a uiMapID.
---@param mapID number 
---@return number journalInstanceID ?
function C_EncounterJournal.GetInstanceForGameMap(mapID)
end

---Returns info for loot items available from an encounter.
---@param id number 
---@return EncounterJournalItemInfo itemInfo 
---@since Patch 9.0.1 (2020-10-13): Moved to C_EncounterJournal.GetLootInfo()
function C_EncounterJournal.GetLootInfo(id)
end

---Returns info for loot items available from an encounter.
---@param id number 
---@return EncounterJournalItemInfo itemInfo 
---@since Patch 9.0.1 (2020-10-13): Moved to C_EncounterJournal.GetLootInfo()
function C_EncounterJournal.GetLootInfoByIndex(id)
end

---Returns the icon flags for a section, such as Magic Effect and Heroic Difficulty
---@param sectionID number JournalEncounterSection.ID
---@return  iconFlags For convenience there is EncounterJournal_SetFlagIcon() which sets the texture coords for interface/encounterjournal/ui-ej-icons.blp
---@since Patch 7.3.5 (2018-01-16): Added, this functionality was separated from C_EncounterJournal.GetSectionInfo.
function C_EncounterJournal.GetSectionIconFlags(sectionID)
end

---Returns information about an entry in the Abilities section of the Encounter Journal.
---@param sectionID number JournalEncounterSection.ID
---@return EncounterJournalSectionInfo info 
---@since Patch 8.0.1 (2018-07-17): Added spellID field.
function C_EncounterJournal.GetSectionInfo(sectionID)
end

---Returns the current item slot filter for loot items.
---@return Enum.ItemSlotFilterType filter 
---@since Patch 9.0.1 (2020-10-13): Moved to C_EncounterJournal.GetSlotFilter()
function C_EncounterJournal.GetSlotFilter()
end

---
function C_EncounterJournal.InitalizeSelectedTier()
end

---Returns whether an instance has a loot table in the journal.
---@param journalInstanceID number ? : JournalInstance.ID - If omitted, defaults to the currently selected instance from EJ_SelectInstance()
---@return boolean hasLoot 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_EncounterJournal.InstanceHasLoot(journalInstanceID)
end

---Returns if a boss encounter has been completed.
---@param journalEncounterID number 
---@return boolean isEncounterComplete 
---@since Patch 8.1.5 (2019-03-12): Added.
function C_EncounterJournal.IsEncounterComplete(journalEncounterID)
end

---
function C_EncounterJournal.OnClose()
end

---
function C_EncounterJournal.OnOpen()
end

---Resets the item slot filter for loot items.
---@since Patch 9.0.1 (2020-10-13): Moved to C_EncounterJournal.ResetSlotFilter()
function C_EncounterJournal.ResetSlotFilter()
end

---
---@param level number 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_EncounterJournal.SetPreviewMythicPlusLevel(level)
end

---
---@param tier number 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_EncounterJournal.SetPreviewPvpTier(tier)
end

---Sets the item slot filter for loot items.
---@param filterSlot Enum.ItemSlotFilterType 
---@since Patch 9.0.1 (2020-10-13): Moved to C_EncounterJournal.SetSlotFilter()
function C_EncounterJournal.SetSlotFilter(filterSlot)
end

---
---@param tabIdx number 
function C_EncounterJournal.SetTab(tabIdx)
end
