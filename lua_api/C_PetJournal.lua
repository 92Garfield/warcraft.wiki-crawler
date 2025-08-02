-- C_PetJournal API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_PetJournal
C_PetJournal = {}

---Puts the pet into a cage.
---@param petID string - Unique identifier for this specific pet
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.CagePetByID(petID)
end

---
function C_PetJournal.ClearHoveredBattlePet()
end

---Clears the search box in the pet journal.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.ClearSearchFilter()
end

---
---@param petID string WOWGUID
function C_PetJournal.DismissSummonedPet(petID)
end

---Returns pet species and GUID by pet name.
---@param petName string - Name of the pet to find species/GUID of.
---@return number speciesId - Species ID of the first battle pet (or species) with the specified name, nil if no such pet exists.
---@return string petGUID - GUID of the first battle pet collected by the player with the specified name, nil if the player has not collected any pets with the specified name.
---@since Patch 5.1.0 (2012-11-27): Added.
function C_PetJournal.FindPetIDByName(petName)
end

---Returns a battle pet link.
---@param petID string - GUID specifying a battle pet in your collection.
---@return string link - A chat link to the specified battle pet; nil if there is no pet with the specified petID in your collection.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.GetBattlePetLink(petID)
end

---
---@param speciesID number 
---@param index number 
---@return number displayID ?
---@since Patch 7.3.5 (2018-01-16): Added.
function C_PetJournal.GetDisplayIDByIndex(speciesID, index)
end

---
---@param speciesID number 
---@param index number 
---@return number displayProbability ?
---@since Patch 7.3.5 (2018-01-16): Added.
function C_PetJournal.GetDisplayProbabilityByIndex(speciesID, index)
end

---Returns the number of collected battle pets of a particular species.
---@param speciesId number - Battle pet species ID to query, e.g. 635 for Adder battle pets.
---@return number numCollected - Number of battle pets of the queried species the player has collected.
---@return number limit - Maximum number of battle pets of the queried species the player may collect.
---@since Patch 5.1.0 (2012-11-27): Added.
function C_PetJournal.GetNumCollectedInfo(speciesId)
end

---
---@param speciesID number 
---@return number numDisplays ?
---@since Patch 7.3.5 (2018-01-16): Added.
function C_PetJournal.GetNumDisplays(speciesID)
end

---Returns information about the number of pet sources.
---@return number numSources - Number of pet sources available
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.GetNumPetSources()
end

---Returns information about the number of pet types.
---@return number numTypes - Number of pet types available
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.GetNumPetTypes()
end

---Returns information about the number of battle pets.
---@return number numPets - Total number of pets available
---@return number numOwned - Number of pets currently owned
---@since Patch 5.2.0 (2013-03-05): Removed "isWild" argument.
function C_PetJournal.GetNumPets()
end

---
---@param creatureID number 
---@return number maxAllowed 
---@return number numPets 
function C_PetJournal.GetNumPetsInJournal(creatureID)
end

---Returns a formatted string how many of a battle pet species the player has collected.
---@param speciesId number - Battle pet species ID.
---@return string ownedString - a description of how many pets of this species you've collected, e.g. "|cFFFFD200Collected (1/3)", or nil if you haven't collected any.
---@since Patch 5.1.0 (2012-11-27): Added.
function C_PetJournal.GetOwnedBattlePetString(speciesId)
end

---
---@return string ownedPetIDs [] : WOWGUID
function C_PetJournal.GetOwnedPetIDs()
end

---Returns information about a battle pet ability.
---@param abilityID number - battle pet ability ID, as returned by C_PetJournal.GetPetAbilityList, e.g. 362 for   [Howl].
---@return string name - Ability name, e.g. "Howl"
---@return string icon - Ability icon texture path, e.g. "INTERFACE\ICONS\ABILITY_SHAMAN_FREEDOMWOLF.BLP"
---@return battlePetTypeID type 
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.GetPetAbilityInfo(abilityID)
end

---Returns pet battle abilities available to a particular battle pet species.
---@param speciesID number BattlePetSpeciesID - Battle pet species ID to query the abilities of.
---@param idTable table ? - Table that will be used to return ability ID information; a new table will be created if this argument is omitted.
---@param levelTable table ?- Table that will be used to return ability level requirement information; a new table will be created if this argument is omitted.
---@return number idTable [] - An array of ability IDs available to the battle pet species.
---@return number levelTable [] - An array of levels at which the corresponding ability in the idTable becomes available to the species.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.GetPetAbilityList(speciesID, idTable, levelTable)
end

---
---@param speciesID number 
---@return PetAbilityLevelInfo info []
---@since Patch 9.1.0 (2021-06-29): Added.
function C_PetJournal.GetPetAbilityListTable(speciesID)
end

---Returns the cooldown associated with summoning a battle pet companion.
---@param GUID string - GUID of a battle pet in your collection to query the cooldown of.
---@return number start - the time the cooldown period began, based on GetTime().
---@return number duration - the duration of the cooldown period.
---@return number isEnabled - 1 if the cooldown is not paused.
---@since Patch 5.2.0 (2013-03-05): Added.
function C_PetJournal.GetPetCooldownByGUID(GUID)
end

---Returns information about a battle pet.
---@param index number - Numeric index of the pet in the Pet Journal, ascending from 1.
---@since Patch 5.2.0 (2013-03-05): Added 18th return value, "obtainable". Removed "isWild" argument.
function C_PetJournal.GetPetInfoByIndex(index)
end

---Retrieves information about the battle pet species taught by the specified item.
---@param itemID number - an item ID
---@since Patch 8.1.0 (2018-12-11): Added.
function C_PetJournal.GetPetInfoByItemID(itemID)
end

---Returns information about a battle pet.
---@param petID string GUID
---@since Patch 5.2.0 (2013-03-05): Added 18th return value, "obtainable".
function C_PetJournal.GetPetInfoByPetID(petID)
end

---Returns information about a pet species.
---@param speciesID number BattlePetSpeciesID
---@since Patch 6.0.2 (2014-10-14): Added 12th return value, "creatureDisplayID".
function C_PetJournal.GetPetInfoBySpeciesID(speciesID)
end

---
---@param petID string 
---@return PetJournalPetInfo info 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_PetJournal.GetPetInfoTableByPetID(petID)
end

---Returns information about a slot in your battle pet team.
---@param slotIndex number - battle pet slot index, an integer between 1 and 3. Values outside this range throw an error.
---@return string petGUID - GUID of the battle pet currently in this slot.
---@return number ability1 - Ability ID of the first (level 1/10) ability selected for the battle pet in this slot.
---@return number ability2 - Ability ID of the second (level 2/15) ability selected for the battle pet in this slot.
---@return number ability3 - Ability ID of the third (level 4/20) ability selected for the battle pet in this slot.
---@return boolean locked - false if the player can place a battle pet in this slot, true otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.GetPetLoadOutInfo(slotIndex)
end

---Returns the index of the currently active sort parameter.
---@return number sortParameter - currently active ordering for C_PetJournal.GetPetInfoByIndex, e.g. 1 for sorting by name.
---@since Patch 5.1.0 (2012-11-27): Added.
function C_PetJournal.GetPetSortParameter()
end

---Returns the stats of a collected battle pet.
---@param petID string - GUID of pet in Pet Journal (different than speciesID and displayID)
---@return number health - Current health of the pet. Zero or negative if the pet is dead.
---@return number maxHealth - Maximum health of the pet
---@return number power 
---@return number speed 
---@return number rarity - 1: "Poor", 2: "Common", 3: "Uncommon", 4: "Rare", 5: "Epic", 6: "Legendary"
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.GetPetStats(petID)
end

---
---@param battlePetGUID string WOWGUID
---@return boolean isSummonable 
---@return Enum.PetJournalError error 
---@since Patch 11.0.0 (2024-07-23): Removed InvalidCovenant field.
function C_PetJournal.GetPetSummonInfo(battlePetGUID)
end

---Returns the average level of pets in your battle pet team.
---@return number avgLevel - Average level of pets in your current battle pet team.
---@since Patch 5.1.0 (2012-11-27): Added.
function C_PetJournal.GetPetTeamAverageLevel()
end

---
---@return string filterText 
function C_PetJournal.GetSearchFilter()
end

---Returns information about a battle pet.
---@return string summonedPetGUID - GUID identifying the currently-summoned battle pet, or nil if no battle pet is summoned.
---@since Patch 5.1.0 (2012-11-27): Changed to C_PetJournal.GetSummonedPetGUID(), the first argument is now a GUID string.
The GUID can be derived from the old (numeric) unique pet IDs using petGUID = ("0x%016x"):format(petID).
function C_PetJournal.GetSummonedPetGUID()
end

---
---@return boolean hasFavorites 
function C_PetJournal.HasFavoritePets()
end

---
---@param petID string WOWGUID
---@return boolean isSummoned 
function C_PetJournal.IsCurrentlySummoned(petID)
end

---Returns true if the selected filter is checked.
---@param filter  LE_PET_JOURNAL_FILTER_NOT_COLLECTED: Pets you have not collected
---@return boolean isFiltered - True if the filter is checked, false if the filter is unchecked
---@since Patch 7.0.3 (2016-07-19): Added.
function C_PetJournal.IsFilterChecked(filter)
end

---Returns whether the player can queue for PvP pet battles.
---@return boolean isEnabled - true if you can queue for a PvP pet battle, false otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.IsFindBattleEnabled()
end

---Returns true if the pet source is checked.
---@param index number - Index (from 1 to GetNumPetSources()) of all available pet sources
---@return boolean isChecked - True if the source is checked, false if the source is unchecked
---@since Patch 7.0.3 (2016-07-19): Added.
function C_PetJournal.IsPetSourceChecked(index)
end

---Returns true if the pet type is checked.
---@param index number - Index (from 1 to GetNumPetTypes()) of all available pet types
---@return boolean isChecked - True if the filter is checked, false if the filter is unchecked
---@since Patch 7.0.3 (2016-07-19): Added.
function C_PetJournal.IsPetTypeChecked(index)
end

---
---@return boolean isUsingDefaultFilters 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_PetJournal.IsUsingDefaultFilters()
end

---Returns true if you can release the pet.
---@param petID string - Unique identifier for this specific pet
---@return boolean canRelease - True if you can release the pet
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.PetCanBeReleased(petID)
end

---Returns whether a battle pet in your collection is capturable (i.e. a wild pet).
---@param petID string - GUID of a battle pet in your collection, e.g. "0x0000000000067932"
---@return boolean isCapturable - true if the pet can be captured through wild pet battles, false otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.PetIsCapturable(petID)
end

---Returns true if the collected battle pet is favorited.
---@param petGUID string - GUID of a battle pet in your collection.
---@return boolean isFavorite - true if this pet is marked as a favorite, false otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.PetIsFavorite(petGUID)
end

---Returns whether the specified battle pet is injured and unable to participate in battles.
---@param petID string - Battle pet GUID of a pet in your collection.
---@return boolean isHurt - true if the specified pet is injured and cannot fight, false otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.PetIsHurt(petID)
end

---Returns whether or not the pet is revoked.
---@param petID string - Unique identifier for this specific pet
---@return boolean isRevoked - true if the pet is revoked.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.PetIsRevoked(petID)
end

---Returns whether a battle pet in your collection is part of your current battle pet team.
---@param petID string - GUID of a battle pet in your collection.
---@return boolean isSlotted - true if the battle pet is part of your current team (loadout), false otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.PetIsSlotted(petID)
end

---Returns true if you can summon this pet.
---@param battlePetGUID string - Unique identifier for this specific pet.
---@return boolean isSummonable 
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.PetIsSummonable(battlePetGUID)
end

---Returns whether or not a pet from the Pet Journal is tradable.
---@param petID string - GUID of pet in Pet Journal (different than speciesID and displayID)
---@return boolean isTradable 
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.PetIsTradable(petID)
end

---
---@param speciesID number 
---@return boolean usesRandomDisplay ?
---@since Patch 7.3.5 (2018-01-16): Added.
function C_PetJournal.PetUsesRandomDisplay(speciesID)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 5.0.4
---@param petID string - GUID of a battle pet in your collection.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.PickupPet(petID)
end

---
---@param petID string - Unique identifier for this specific pet
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.ReleasePetByID(petID)
end

---Selects a battle pet ability to make available in battle.
---@param slotIndex number - battle pet slot index, integer between 1 and 3.
---@param spellIndex number - ability slot index, integer between 1 and 3.
---@param petSpellID number - pet ability ID to select for the spellIndex slot of the pet in the slotIndex battle pet slot.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.SetAbility(slotIndex, spellIndex, petSpellID)
end

---Sets or clears all the pet sources in the filter menu.
---@param value boolean - True to set all the pet sources, false to clear all the pet sources
---@since Patch 7.0.3 (2016-07-19): Added.
function C_PetJournal.SetAllPetSourcesChecked(value)
end

---Sets or clears all the pet types in the filter menu.
---@param value boolean - True to set all the pet types, false to clear all the pet types
---@since Patch 7.0.3 (2016-07-19): Added.
function C_PetJournal.SetAllPetTypesChecked(value)
end

---Sets a custom name for the pet.
---@param petID string - Unique identifier for this specific pet
---@param customName string - Custom name for the pet
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.SetCustomName(petID, customName)
end

---
---@since Patch 9.2.5 (2022-05-31): Added.
function C_PetJournal.SetDefaultFilters()
end

---Sets (or clears) the pet as a favorite.
---@param petID string - Unique identifier for this specific pet
---@param value  1: Pet is a favorite
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.SetFavorite(petID, value)
end

---Sets the filters in the filter menu.
---@param filter  LE_PET_JOURNAL_FILTER_NOT_COLLECTED: Pets you have not collected
---@param value boolean - True to set the filter, false to clear the filter
---@since Patch 7.0.3 (2016-07-19): Added.
function C_PetJournal.SetFilterChecked(filter, value)
end

---
---@param battlePetGUID string WOWGUID
function C_PetJournal.SetHoveredBattlePet(battlePetGUID)
end

---Places the specified pet into a battle pet slot.
---@param slotIndex number - Battle pet slot index, integer between 1 and 3.
---@param petID string - Battle pet GUID of a pet in your collection to move into the battle pet slot.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.SetPetLoadOutInfo(slotIndex, petID)
end

---Changes the battle pet ordering in the pet journal.
---@param sortParameter number - Index of the ordering type that should be applied to C_PetJournal.GetPetInfoByIndex returns; one of the following global numeric values:
LE_SORT_BY_NAME
LE_SORT_BY_LEVEL
LE_SORT_BY_RARITY
LE_SORT_BY_PETTYPE
---@since Patch 5.1.0 (2012-11-27): Added.
function C_PetJournal.SetPetSortParameter(sortParameter)
end

---Sets the pet source in the filter menu.
---@param index number - Index (from 1 to GetNumPetSources()) of all available pet sources
---@param value boolean - True to set the pet source, false to clear the pet source
---@since Patch 7.0.3 (2016-07-19): Added.
function C_PetJournal.SetPetSourceChecked(index, value)
end

---Sets the pet type in the filter menu.
---@param index number - Index (from 1 to GetNumPetTypes()) of all available pet types
---@param value boolean - True to set the pet type, false to clear the pet type
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.SetPetTypeFilter(index, value)
end

---Sets the search filter in the pet journal.
---@param text string - Search text for the pet journal
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetJournal.SetSearchFilter(text)
end

---
---@param battlePetGUID string 
function C_PetJournal.SpellTargetBattlePet(battlePetGUID)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 5.1
---@param petID string - GUID of the battle pet to summon. If the pet is already summoned, it will be dismissed.
---@since Patch 5.1.0 (2012-11-27): Changed to C_PetJournal.SummonPetByGUID(), the first argument is now a GUID string.
The GUID can be derived from the old (numeric) unique pet IDs using petGUID = ("0x%016x"):format(petID).
function C_PetJournal.SummonPetByGUID(petID)
end

---Summons a random battle pet companion.
---@param favoritePets boolean - false to summon any pet, true to summon one of your favorite pets.
---@since Patch 5.1.0 (2012-11-27): Added.
function C_PetJournal.SummonRandomPet(favoritePets)
end
