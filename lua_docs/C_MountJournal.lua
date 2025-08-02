--[=[
-- C_MountJournal API Documentation
-- Generated from warcraft.wiki.gg
-- Generated on: 2025-08-02 23:23:19
-- Functions: 48
--]=]

--- @class C_MountJournal
--- C_MountJournal namespace contains 48 functions
local C_MountJournal = {}

--[=[
-- C_MountJournal Functions:
-- - C_MountJournal.ApplyMountEquipment
-- - C_MountJournal.AreMountEquipmentEffectsSuppressed
-- - C_MountJournal.ClearFanfare
-- - C_MountJournal.ClearRecentFanfares
-- - C_MountJournal.Dismiss
-- - C_MountJournal.GetAllCreatureDisplayIDsForMountID
-- - C_MountJournal.GetAppliedMountEquipmentID
-- - C_MountJournal.GetCollectedDragonridingMounts
-- - C_MountJournal.GetCollectedFilterSetting
-- - C_MountJournal.GetDisplayedMountAllCreatureDisplayInfo
-- - C_MountJournal.GetDisplayedMountID
-- - C_MountJournal.GetDisplayedMountInfo
-- - C_MountJournal.GetDisplayedMountInfoExtra
-- - C_MountJournal.GetDynamicFlightModeSpellID
-- - C_MountJournal.GetIsFavorite
-- - C_MountJournal.GetMountAllCreatureDisplayInfoByID
-- - C_MountJournal.GetMountEquipmentUnlockLevel
-- - C_MountJournal.GetMountFromItem
-- - C_MountJournal.GetMountFromSpell
-- - C_MountJournal.GetMountIDs
-- - C_MountJournal.GetMountInfoByID
-- - C_MountJournal.GetMountInfoExtraByID
-- - C_MountJournal.GetMountLink
-- - C_MountJournal.GetMountUsabilityByID
-- - C_MountJournal.GetNumDisplayedMounts
-- - C_MountJournal.GetNumMounts
-- - C_MountJournal.GetNumMountsNeedingFanfare
-- - C_MountJournal.IsDragonridingUnlocked
-- - C_MountJournal.IsItemMountEquipment
-- - C_MountJournal.IsMountEquipmentApplied
-- - C_MountJournal.IsSourceChecked
-- - C_MountJournal.IsTypeChecked
-- - C_MountJournal.IsUsingDefaultFilters
-- - C_MountJournal.IsValidSourceFilter
-- - C_MountJournal.IsValidTypeFilter
-- - C_MountJournal.NeedsFanfare
-- - C_MountJournal.Pickup
-- - C_MountJournal.PickupDynamicFlightMode
-- - C_MountJournal.SetAllSourceFilters
-- - C_MountJournal.SetAllTypeFilters
-- - C_MountJournal.SetCollectedFilterSetting
-- - C_MountJournal.SetDefaultFilters
-- - C_MountJournal.SetIsFavorite
-- - C_MountJournal.SetSearch
-- - C_MountJournal.SetSourceFilter
-- - C_MountJournal.SetTypeFilter
-- - C_MountJournal.SummonByID
-- - C_MountJournal.SwapDynamicFlightMode
--]=]

---======================================================================
--- C_MountJournal.ClearFanfare
---======================================================================
--- Arguments:
--- @param mountID number
---
--- @since Patch 7.0.3 (2016-07-19): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.ClearFanfare
---
--- Usage: C_MountJournal.ClearFanfare(mountID)
---
-- function C_MountJournal.ClearFanfare()
-- end

---======================================================================
--- C_MountJournal.ClearRecentFanfares
---======================================================================
--- @since Patch 7.0.3 (2016-07-19): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.ClearRecentFanfares
---
--- Usage: C_MountJournal.ClearRecentFanfares()
---
-- function C_MountJournal.ClearRecentFanfares()
-- end

---======================================================================
--- C_MountJournal.Dismiss
---======================================================================
--- Dismisses the currently summoned mount.
---
--- @since Patch 6.0.2 (2014-10-14): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.Dismiss
---
--- Usage: C_MountJournal.Dismiss()
---
--- See also:
--- - C_MountJournal.SummonByID
---
-- function C_MountJournal.Dismiss()
-- end

---======================================================================
--- C_MountJournal.GetAllCreatureDisplayIDsForMountID
---======================================================================
--- Arguments:
--- @param mountID number
---
--- Returns:
--- @return number creatureDisplayIDs []
---
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetAllCreatureDisplayIDsForMountID
---
--- Usage: creatureDisplayIDs = C_MountJournal.GetAllCreatureDisplayIDsForMountID(mountID)
---
-- function C_MountJournal.GetAllCreatureDisplayIDsForMountID()
-- end

---======================================================================
--- C_MountJournal.GetCollectedDragonridingMounts
---======================================================================
--- Returns:
--- @return number mountIDs []
---
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetCollectedDragonridingMounts
---
--- Usage: mountIDs = C_MountJournal.GetCollectedDragonridingMounts()
---
-- function C_MountJournal.GetCollectedDragonridingMounts()
-- end

---======================================================================
--- C_MountJournal.GetCollectedFilterSetting
---======================================================================
--- Indicates whether the specified mount journal filter is enabled.
---
--- Arguments:
--- @param filterIndex number
---
--- Returns:
--- @return boolean isChecked - true if the filter is enabled (mounts matching the filter are displayed), or false if the filter is disabled (mounts matching the filter are hidden)
---
--- @since Patch 6.0.2 (2014-10-14): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetCollectedFilterSetting
---
--- Usage: isChecked = C_MountJournal.GetCollectedFilterSetting(filterIndex)
---
-- function C_MountJournal.GetCollectedFilterSetting()
-- end

---======================================================================
--- C_MountJournal.GetDisplayedMountAllCreatureDisplayInfo
---======================================================================
--- Returns the display IDs for a mount.
---
--- Arguments:
--- @param mountID number : MountID
---
--- Returns:
--- @return  allDisplayInfo structure - MountCreatureDisplayInfo[]
---
--- @since Patch 7.2.0 (2017-03-28): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetDisplayedMountAllCreatureDisplayInfo
---
--- Usage: allDisplayInfo = C_MountJournal.GetMountAllCreatureDisplayInfoByID(mountID)
               = C_MountJournal.GetDisplayedMountAllCreatureDisplayInfo(mountIndex)
---
-- function C_MountJournal.GetDisplayedMountAllCreatureDisplayInfo()
-- end

---======================================================================
--- C_MountJournal.GetDisplayedMountID
---======================================================================
--- Arguments:
--- @param displayIndex number
---
--- Returns:
--- @return number mountID
---
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetDisplayedMountID
---
--- Usage: mountID = C_MountJournal.GetDisplayedMountID(displayIndex)
---
-- function C_MountJournal.GetDisplayedMountID()
-- end

---======================================================================
--- C_MountJournal.GetDisplayedMountInfo
---======================================================================
--- Returns information about the specified mount.
---
--- Arguments:
--- @param mountID number : MountID - Returned from C_MountJournal.GetMountIDs()
---
--- Returns:
--- @return string 1. name - The name of the mount.
--- @return number 2. spellID - The ID of the spell that summons the mount.
--- @return number 3. icon : FileID - Icon texture used by the mount.
--- @return boolean 4. isActive - Indicates if the player is currently mounted on the mount.
--- @return boolean 5. isUsable - Indicates if the mount is usable based on the player's current location, riding skill, profession skill, class, etc.
--- @return number 6. sourceType - Indicates generally how the mount may be obtained; a localized string describing the acquisition method is returned by C_MountJournal.GetMountInfoExtraByID.
--- @return boolean 7. isFavorite - Indicates if the mount is currently marked as a favorite.
--- @return boolean 8. isFactionSpecific - true if the mount is only available to one faction, false otherwise.
--- @return Enum.PvPFaction 9. faction ? - 0 if the mount is available only to Horde players, 1 if the mount is available only to Alliance players, or nil if the mount is not faction-specific.
---
--- @since Patch 11.0.0 (2024-07-23): isForDragonriding replaced with isSteadyFlight return.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetDisplayedMountInfo
---
--- Usage: name, spellID, icon, isActive, isUsable, sourceType, isFavorite, isFactionSpecific, faction, shouldHideOnChar, isCollected, mountID, isSteadyFlight
    = C_MountJournal.GetMountInfoByID(mountID)
    = C_MountJournal.GetDisplayedMountInfo(displayIndex)
---
-- function C_MountJournal.GetDisplayedMountInfo()
-- end

---======================================================================
--- C_MountJournal.GetDisplayedMountInfoExtra
---======================================================================
--- Returns extra information about the specified mount.
---
--- Arguments:
--- @param mountID number : MountID - Returned from C_MountJournal.GetMountIDs()
---
--- Returns:
--- @return number creatureDisplayInfoID : DisplayID - If nil, then the mount has multiple displayIDs, from C_MountJournal.GetMountAllCreatureDisplayInfoByID()[1]. This is not consistent however, since this can be not nil and still have multiple displayIds.
--- @return string description - flavor text describing the mount
--- @return string source - information about how the mount is obtained, including vendor name and location, monetary cost, etc.
--- @return boolean isSelfMount - true if the player transforms into the mount (eg. Obsidian Nightwing or Sandstone Drake), or false for normal mounts
--- @return number mountTypeID - a number indicating the capabilities of the mount; known values include:
230 for most ground mounts
231 for  [Riding Turtle] and  [Sea Turtle]
232 for  [Vashj'ir Seahorse] (was named Abyssal Seahorse prior to Warlords of Draenor)
241 for Blue, Green, Red, and Yellow Qiraji Battle Tank (restricted to use inside Temple of Ahn'Qiraj)
242 for  [Swift Spectral Gryphon] (hidden in the mount journal, used while dead in certain zones)
247 for  [Disc of the Red Flying Cloud]
248 for most flying mounts, including those that change capability based on riding skill
254 for  [Reins of Poseidus],  [Brinedeep Bottom-Feeder] and  [Fathom Dweller]
269 for  [Reins of the Azure Water Strider] and  [Reins of the Crimson Water Strider]
284 for  [Chauffeured Chopper] and Chauffeured Mechano-Hog
398 for  [Kua'fon's Harness]
402 for Dragonriding
407 for  [Deepstar Polyp] and  [Otterworldly Ottuk Carrier]
408 for  [Unsuccessful Prototype Fleetpod]
412 for Otto and Ottuk
424 for Dragonriding mounts, including mounts that have dragonriding animations but are not yet enabled for dragonriding.
436 for Wondrous Wavewhisker
---
--- @since Patch 8.2.5 (2019-09-24): Added animID, spellVisualKitID, disablePlayerMountPreview returns.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetDisplayedMountInfoExtra
---
--- Usage: creatureDisplayInfoID, description, source, isSelfMount, mountTypeID,
uiModelSceneID, animID, spellVisualKitID, disablePlayerMountPreview
    = C_MountJournal.GetMountInfoExtraByID(mountID)
    = C_MountJournal.GetDisplayedMountInfoExtra(index)
---
-- function C_MountJournal.GetDisplayedMountInfoExtra()
-- end

---======================================================================
--- C_MountJournal.GetDynamicFlightModeSpellID
---======================================================================
--- Returns:
--- @return number spellID
---
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetDynamicFlightModeSpellID
---
--- Usage: spellID = C_MountJournal.GetDynamicFlightModeSpellID()
---
-- function C_MountJournal.GetDynamicFlightModeSpellID()
-- end

---======================================================================
--- C_MountJournal.GetIsFavorite
---======================================================================
--- Indicates whether the specified mount is marked as a favorite.
---
--- Arguments:
--- @param mountIndex number - Index of the mount, in the range of 1 to C_MountJournal.GetNumMounts() (inclusive)
---
--- Returns:
--- @return boolean isFavorite
--- @return boolean canSetFavorite
---
--- @since Patch 6.0.2 (2014-10-14): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetIsFavorite
---
--- Usage: isFavorite, canSetFavorite = C_MountJournal.GetIsFavorite(mountIndex)
---
-- function C_MountJournal.GetIsFavorite()
-- end

---======================================================================
--- C_MountJournal.GetMountAllCreatureDisplayInfoByID
---======================================================================
--- Returns the display IDs for a mount.
---
--- Arguments:
--- @param mountID number : MountID
---
--- Returns:
--- @return  allDisplayInfo structure - MountCreatureDisplayInfo[]
---
--- @since Patch 7.2.0 (2017-03-28): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetMountAllCreatureDisplayInfoByID
---
--- Usage: allDisplayInfo = C_MountJournal.GetMountAllCreatureDisplayInfoByID(mountID)
               = C_MountJournal.GetDisplayedMountAllCreatureDisplayInfo(mountIndex)
---
-- function C_MountJournal.GetMountAllCreatureDisplayInfoByID()
-- end

---======================================================================
--- C_MountJournal.GetMountFromItem
---======================================================================
--- Returns the mount for an item ID.
---
--- Arguments:
--- @param itemID number
---
--- Returns:
--- @return number mountID ?
---
--- @since Patch 8.1.0 (2018-12-11): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetMountFromItem
---
--- Usage: mountID = C_MountJournal.GetMountFromItem(itemID)
---
-- function C_MountJournal.GetMountFromItem()
-- end

---======================================================================
--- C_MountJournal.GetMountFromSpell
---======================================================================
--- Returns the mount for a spell ID.
---
--- Arguments:
--- @param spellID number
---
--- Returns:
--- @return number mountID ?
---
--- @since Patch 8.0.1 (2018-07-17): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetMountFromSpell
---
--- Usage: mountID = C_MountJournal.GetMountFromSpell(spellID)
---
-- function C_MountJournal.GetMountFromSpell()
-- end

---======================================================================
--- C_MountJournal.GetMountIDs
---======================================================================
--- Returns the IDs of mounts listed in the mount journal.
---
--- Returns:
--- @return number mountIDs [] : MountID
---
--- @since Patch 7.0.3 (2016-07-19): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetMountIDs
---
--- Usage: mountIDs = C_MountJournal.GetMountIDs()
---
-- function C_MountJournal.GetMountIDs()
-- end

---======================================================================
--- C_MountJournal.GetMountInfoByID
---======================================================================
--- Returns information about the specified mount.
---
--- Arguments:
--- @param mountID number : MountID - Returned from C_MountJournal.GetMountIDs()
---
--- Returns:
--- @return string 1. name - The name of the mount.
--- @return number 2. spellID - The ID of the spell that summons the mount.
--- @return number 3. icon : FileID - Icon texture used by the mount.
--- @return boolean 4. isActive - Indicates if the player is currently mounted on the mount.
--- @return boolean 5. isUsable - Indicates if the mount is usable based on the player's current location, riding skill, profession skill, class, etc.
--- @return number 6. sourceType - Indicates generally how the mount may be obtained; a localized string describing the acquisition method is returned by C_MountJournal.GetMountInfoExtraByID.
--- @return boolean 7. isFavorite - Indicates if the mount is currently marked as a favorite.
--- @return boolean 8. isFactionSpecific - true if the mount is only available to one faction, false otherwise.
--- @return Enum.PvPFaction 9. faction ? - 0 if the mount is available only to Horde players, 1 if the mount is available only to Alliance players, or nil if the mount is not faction-specific.
---
--- @since Patch 11.0.0 (2024-07-23): isForDragonriding replaced with isSteadyFlight return.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetMountInfoByID
---
--- Usage: name, spellID, icon, isActive, isUsable, sourceType, isFavorite, isFactionSpecific, faction, shouldHideOnChar, isCollected, mountID, isSteadyFlight
    = C_MountJournal.GetMountInfoByID(mountID)
    = C_MountJournal.GetDisplayedMountInfo(displayIndex)
---
-- function C_MountJournal.GetMountInfoByID()
-- end

---======================================================================
--- C_MountJournal.GetMountInfoExtraByID
---======================================================================
--- Returns extra information about the specified mount.
---
--- Arguments:
--- @param mountID number : MountID - Returned from C_MountJournal.GetMountIDs()
---
--- Returns:
--- @return number creatureDisplayInfoID : DisplayID - If nil, then the mount has multiple displayIDs, from C_MountJournal.GetMountAllCreatureDisplayInfoByID()[1]. This is not consistent however, since this can be not nil and still have multiple displayIds.
--- @return string description - flavor text describing the mount
--- @return string source - information about how the mount is obtained, including vendor name and location, monetary cost, etc.
--- @return boolean isSelfMount - true if the player transforms into the mount (eg. Obsidian Nightwing or Sandstone Drake), or false for normal mounts
--- @return number mountTypeID - a number indicating the capabilities of the mount; known values include:
230 for most ground mounts
231 for  [Riding Turtle] and  [Sea Turtle]
232 for  [Vashj'ir Seahorse] (was named Abyssal Seahorse prior to Warlords of Draenor)
241 for Blue, Green, Red, and Yellow Qiraji Battle Tank (restricted to use inside Temple of Ahn'Qiraj)
242 for  [Swift Spectral Gryphon] (hidden in the mount journal, used while dead in certain zones)
247 for  [Disc of the Red Flying Cloud]
248 for most flying mounts, including those that change capability based on riding skill
254 for  [Reins of Poseidus],  [Brinedeep Bottom-Feeder] and  [Fathom Dweller]
269 for  [Reins of the Azure Water Strider] and  [Reins of the Crimson Water Strider]
284 for  [Chauffeured Chopper] and Chauffeured Mechano-Hog
398 for  [Kua'fon's Harness]
402 for Dragonriding
407 for  [Deepstar Polyp] and  [Otterworldly Ottuk Carrier]
408 for  [Unsuccessful Prototype Fleetpod]
412 for Otto and Ottuk
424 for Dragonriding mounts, including mounts that have dragonriding animations but are not yet enabled for dragonriding.
436 for Wondrous Wavewhisker
---
--- @since Patch 8.2.5 (2019-09-24): Added animID, spellVisualKitID, disablePlayerMountPreview returns.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetMountInfoExtraByID
---
--- Usage: creatureDisplayInfoID, description, source, isSelfMount, mountTypeID,
uiModelSceneID, animID, spellVisualKitID, disablePlayerMountPreview
    = C_MountJournal.GetMountInfoExtraByID(mountID)
    = C_MountJournal.GetDisplayedMountInfoExtra(index)
---
-- function C_MountJournal.GetMountInfoExtraByID()
-- end

---======================================================================
--- C_MountJournal.GetMountLink
---======================================================================
--- Arguments:
--- @param spellID number
---
--- Returns:
--- @return string mountCreatureDisplayInfoLink ?
---
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetMountLink
---
--- Usage: mountCreatureDisplayInfoLink = C_MountJournal.GetMountLink(spellID)
---
-- function C_MountJournal.GetMountLink()
-- end

---======================================================================
--- C_MountJournal.GetMountUsabilityByID
---======================================================================
--- Returns if a mount is currently usable by the player.
---
--- Arguments:
--- @param mountID number
--- @param checkIndoors boolean
---
--- Returns:
--- @return boolean isUsable
--- @return string useError ?
---
--- @since Patch 8.1.0 (2018-12-11): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetMountUsabilityByID
---
--- Usage: isUsable, useError = C_MountJournal.GetMountUsabilityByID(mountID, checkIndoors)
---
-- function C_MountJournal.GetMountUsabilityByID()
-- end

---======================================================================
--- C_MountJournal.GetNumDisplayedMounts
---======================================================================
--- Returns the number of (filtered) mounts shown in the mount journal.
---
--- Returns:
--- @return number numMounts
---
--- @since Patch 7.0.3 (2016-07-19): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetNumDisplayedMounts
---
--- Usage: numMounts = C_MountJournal.GetNumDisplayedMounts()
---
--- See also:
--- - C_MountJournal.GetNumMounts
---
-- function C_MountJournal.GetNumDisplayedMounts()
-- end

---======================================================================
--- C_MountJournal.GetNumMounts
---======================================================================
--- Returns the number of mounts listed in the mount journal.
---
--- Returns:
--- @return number numMounts
---
--- @since Patch 6.0.2 (2014-10-14): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetNumMounts
---
--- Usage: numMounts = C_MountJournal.GetNumMounts()
---
--- See also:
--- - C_MountJournal.GetNumDisplayedMounts
---
-- function C_MountJournal.GetNumMounts()
-- end

---======================================================================
--- C_MountJournal.GetNumMountsNeedingFanfare
---======================================================================
--- Returns:
--- @return number numMountsNeedingFanfare
---
--- @since Patch 7.0.3 (2016-07-19): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetNumMountsNeedingFanfare
---
--- Usage: numMountsNeedingFanfare = C_MountJournal.GetNumMountsNeedingFanfare()
---
-- function C_MountJournal.GetNumMountsNeedingFanfare()
-- end

---======================================================================
--- C_MountJournal.IsDragonridingUnlocked
---======================================================================
--- Returns whether the player has unlocked the ability to switch between Skyriding and steady flight styles for flying mounts .
---
--- Returns:
--- @return boolean isUnlocked
---
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.IsDragonridingUnlocked
---
--- Usage: isUnlocked = C_MountJournal.IsDragonridingUnlocked()
---
-- function C_MountJournal.IsDragonridingUnlocked()
-- end

---======================================================================
--- C_MountJournal.IsSourceChecked
---======================================================================
--- Arguments:
--- @param filterIndex number
---
--- Returns:
--- @return boolean isChecked
---
--- @since Patch 7.0.3 (2016-07-19): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.IsSourceChecked
---
--- Usage: isChecked = C_MountJournal.IsSourceChecked(filterIndex)
---
-- function C_MountJournal.IsSourceChecked()
-- end

---======================================================================
--- C_MountJournal.IsTypeChecked
---======================================================================
--- Arguments:
--- @param filterIndex number
---
--- Returns:
--- @return boolean isChecked
---
--- @since Patch 9.1.5 (2021-11-02): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.IsTypeChecked
---
--- Usage: isChecked = C_MountJournal.IsTypeChecked(filterIndex)
---
-- function C_MountJournal.IsTypeChecked()
-- end

---======================================================================
--- C_MountJournal.IsUsingDefaultFilters
---======================================================================
--- Returns:
--- @return boolean isUsingDefaultFilters
---
--- @since Patch 9.2.5 (2022-05-31): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.IsUsingDefaultFilters
---
--- Usage: isUsingDefaultFilters = C_MountJournal.IsUsingDefaultFilters()
---
-- function C_MountJournal.IsUsingDefaultFilters()
-- end

---======================================================================
--- C_MountJournal.IsValidSourceFilter
---======================================================================
--- Arguments:
--- @param filterIndex number
---
--- Returns:
--- @return boolean isValid
---
--- @since Patch 7.2.5 (2017-06-13): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.IsValidSourceFilter
---
--- Usage: isValid = C_MountJournal.IsValidSourceFilter(filterIndex)
---
-- function C_MountJournal.IsValidSourceFilter()
-- end

---======================================================================
--- C_MountJournal.IsValidTypeFilter
---======================================================================
--- Arguments:
--- @param filterIndex number
---
--- Returns:
--- @return boolean isValid
---
--- @since Patch 9.1.5 (2021-11-02): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.IsValidTypeFilter
---
--- Usage: isValid = C_MountJournal.IsValidTypeFilter(filterIndex)
---
-- function C_MountJournal.IsValidTypeFilter()
-- end

---======================================================================
--- C_MountJournal.NeedsFanfare
---======================================================================
--- Arguments:
--- @param mountID number
---
--- Returns:
--- @return boolean needsFanfare
---
--- @since Patch 7.0.3 (2016-07-19): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.NeedsFanfare
---
--- Usage: needsFanfare = C_MountJournal.NeedsFanfare(mountID)
---
-- function C_MountJournal.NeedsFanfare()
-- end

---======================================================================
--- C_MountJournal.Pickup
---======================================================================
--- Picks up the specified mount onto the cursor, usually in preparation for placing it on an action button.
---
--- Arguments:
--- @param displayIndex number - Index of the mount, in the range of 1 to C_MountJournal.GetNumMounts() (inclusive), or 0 to pick up the "Summon Random Favorite Mount" button
---
--- @since Patch 6.0.2 (2014-10-14): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.Pickup
---
--- Usage: C_MountJournal.Pickup(displayIndex)
---
--- See also:
--- - ClearCursor
--- - GetCursorInfo
--- - PlaceAction
---
-- function C_MountJournal.Pickup()
-- end

---======================================================================
--- C_MountJournal.PickupDynamicFlightMode
---======================================================================
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.PickupDynamicFlightMode
---
--- Usage: C_MountJournal.PickupDynamicFlightMode()
---
-- function C_MountJournal.PickupDynamicFlightMode()
-- end

---======================================================================
--- C_MountJournal.SetAllSourceFilters
---======================================================================
--- Arguments:
--- @param isChecked boolean
---
--- @since Patch 7.0.3 (2016-07-19): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.SetAllSourceFilters
---
--- Usage: C_MountJournal.SetAllSourceFilters(isChecked)
---
-- function C_MountJournal.SetAllSourceFilters()
-- end

---======================================================================
--- C_MountJournal.SetAllTypeFilters
---======================================================================
--- Arguments:
--- @param isChecked boolean
---
--- @since Patch 9.1.5 (2021-11-02): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.SetAllTypeFilters
---
--- Usage: C_MountJournal.SetAllTypeFilters(isChecked)
---
-- function C_MountJournal.SetAllTypeFilters()
-- end

---======================================================================
--- C_MountJournal.SetCollectedFilterSetting
---======================================================================
--- Enables or disables the specified mount journal filter.
---
--- Arguments:
--- @param filterIndex number
---
--- @since Patch 6.0.2 (2014-10-14): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.SetCollectedFilterSetting
---
--- Usage: C_MountJournal.SetCollectedFilterSetting(filterIndex, isChecked)
---
-- function C_MountJournal.SetCollectedFilterSetting()
-- end

---======================================================================
--- C_MountJournal.SetDefaultFilters
---======================================================================
--- @since Patch 9.2.5 (2022-05-31): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.SetDefaultFilters
---
--- Usage: C_MountJournal.SetDefaultFilters()
---
-- function C_MountJournal.SetDefaultFilters()
-- end

---======================================================================
--- C_MountJournal.SetIsFavorite
---======================================================================
--- Marks or unmarks the specified mount as a favorite.
---
--- Arguments:
--- @param mountIndex number - Index of the mount, in the range of 1 to C_MountJournal.GetNumMounts() (inclusive)
--- @param isFavorite boolean
---
--- @since Patch 6.0.2 (2014-10-14): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.SetIsFavorite
---
--- Usage: C_MountJournal.SetIsFavorite(mountIndex, isFavorite)
---
-- function C_MountJournal.SetIsFavorite()
-- end

---======================================================================
--- C_MountJournal.SetSearch
---======================================================================
--- Arguments:
--- @param searchValue string
---
--- @since Patch 7.0.3 (2016-07-19): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.SetSearch
---
--- Usage: C_MountJournal.SetSearch(searchValue)
---
-- function C_MountJournal.SetSearch()
-- end

---======================================================================
--- C_MountJournal.SetSourceFilter
---======================================================================
--- Arguments:
--- @param filterIndex number
--- @param isChecked boolean
---
--- @since Patch 7.0.3 (2016-07-19): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.SetSourceFilter
---
--- Usage: C_MountJournal.SetSourceFilter(filterIndex, isChecked)
---
-- function C_MountJournal.SetSourceFilter()
-- end

---======================================================================
--- C_MountJournal.SetTypeFilter
---======================================================================
--- Arguments:
--- @param filterIndex number
--- @param isChecked boolean
---
--- @since Patch 9.1.5 (2021-11-02): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.SetTypeFilter
---
--- Usage: C_MountJournal.SetTypeFilter(filterIndex, isChecked)
---
-- function C_MountJournal.SetTypeFilter()
-- end

---======================================================================
--- C_MountJournal.SummonByID
---======================================================================
--- Summons the specified mount.
---
--- Arguments:
--- @param mountID number : MountID - Valid mount IDs are returned from C_MountJournal.GetMountIDs(), or 0 to summon a random favorite mount appropriate to the current area
---
--- @since Patch 7.0.3 (2016-07-19): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.SummonByID
---
--- Usage: C_MountJournal.SummonByID(mountID)
---
--- See also:
--- - C_MountJournal.Dismiss
---
-- function C_MountJournal.SummonByID()
-- end

---======================================================================
--- C_MountJournal.SwapDynamicFlightMode
---======================================================================
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.SwapDynamicFlightMode
---
--- Usage: C_MountJournal.SwapDynamicFlightMode()
---
-- function C_MountJournal.SwapDynamicFlightMode()
-- end

---======================================================================
--- C_MountJournal.ApplyMountEquipment
---======================================================================
--- #protected - This can only be called from secure code.
---
--- Arguments:
--- @param itemLocation ItemLocationMixin 🔗
---
--- Returns:
--- @return boolean canContinue
---
--- @since Patch 8.2.0 (2019-06-25): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.ApplyMountEquipment
---
--- Usage: canContinue = C_MountJournal.ApplyMountEquipment(itemLocation)
---
-- function C_MountJournal.ApplyMountEquipment()
-- end

---======================================================================
--- C_MountJournal.AreMountEquipmentEffectsSuppressed
---======================================================================
--- Returns:
--- @return boolean areEffectsSuppressed
---
--- @since Patch 8.2.0 (2019-06-25): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.AreMountEquipmentEffectsSuppressed
---
--- Usage: areEffectsSuppressed = C_MountJournal.AreMountEquipmentEffectsSuppressed()
---
-- function C_MountJournal.AreMountEquipmentEffectsSuppressed()
-- end

---======================================================================
--- C_MountJournal.GetAppliedMountEquipmentID
---======================================================================
--- Returns:
--- @return number itemID ? - MountEquipmentID related Item ID
---
--- @since Patch 8.2.0 (2019-06-25): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetAppliedMountEquipmentID
---
--- Usage: itemID = C_MountJournal.GetAppliedMountEquipmentID()
---
-- function C_MountJournal.GetAppliedMountEquipmentID()
-- end

---======================================================================
--- C_MountJournal.GetMountEquipmentUnlockLevel
---======================================================================
--- Returns:
--- @return number level
---
--- @since Patch 8.2.0 (2019-06-25): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.GetMountEquipmentUnlockLevel
---
--- Usage: level = C_MountJournal.GetMountEquipmentUnlockLevel()
---
-- function C_MountJournal.GetMountEquipmentUnlockLevel()
-- end

---======================================================================
--- C_MountJournal.IsItemMountEquipment
---======================================================================
--- Determines if the item is mount equipment based on its class and subclass.
---
--- Arguments:
--- @param itemLocation ItemLocationMixin 🔗
---
--- Returns:
--- @return boolean isMountEquipment
---
--- @since Patch 8.2.0 (2019-06-25): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.IsItemMountEquipment
---
--- Usage: isMountEquipment = C_MountJournal.IsItemMountEquipment(itemLocation)
---
-- function C_MountJournal.IsItemMountEquipment()
-- end

---======================================================================
--- C_MountJournal.IsMountEquipmentApplied
---======================================================================
--- Returns:
--- @return boolean isApplied
---
--- @since Patch 8.2.0 (2019-06-25): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_MountJournal.IsMountEquipmentApplied
---
--- Usage: isApplied = C_MountJournal.IsMountEquipmentApplied()
---
-- function C_MountJournal.IsMountEquipmentApplied()
-- end
