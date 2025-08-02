-- C_MountJournal API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_MountJournal
C_MountJournal = {}

---#protected - This can only be called from secure code.
---@param itemLocation ItemLocationMixin 🔗
---@return boolean canContinue 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_MountJournal.ApplyMountEquipment(itemLocation)
end

---
---@return boolean areEffectsSuppressed 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_MountJournal.AreMountEquipmentEffectsSuppressed()
end

---
---@param mountID number 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_MountJournal.ClearFanfare(mountID)
end

---
---@since Patch 7.0.3 (2016-07-19): Added.
function C_MountJournal.ClearRecentFanfares()
end

---Dismisses the currently summoned mount.
---@since Patch 6.0.2 (2014-10-14): Added.
function C_MountJournal.Dismiss()
end

---
---@param mountID number 
---@return number creatureDisplayIDs []
function C_MountJournal.GetAllCreatureDisplayIDsForMountID(mountID)
end

---
---@return number itemID ? - MountEquipmentID related Item ID
---@since Patch 8.2.0 (2019-06-25): Added.
function C_MountJournal.GetAppliedMountEquipmentID()
end

---
---@return number mountIDs []
function C_MountJournal.GetCollectedDragonridingMounts()
end

---Indicates whether the specified mount journal filter is enabled.
---@param filterIndex number 
---@return boolean isChecked - true if the filter is enabled (mounts matching the filter are displayed), or false if the filter is disabled (mounts matching the filter are hidden)
---@since Patch 6.0.2 (2014-10-14): Added.
function C_MountJournal.GetCollectedFilterSetting(filterIndex)
end

---Returns the display IDs for a mount.
---@param mountID number MountID
---@return  allDisplayInfo structure - MountCreatureDisplayInfo[]
---@since Patch 7.2.0 (2017-03-28): Added.
function C_MountJournal.GetDisplayedMountAllCreatureDisplayInfo(mountID)
end

---
---@param displayIndex number 
---@return number mountID 
function C_MountJournal.GetDisplayedMountID(displayIndex)
end

---Returns information about the specified mount.
---@param mountID number MountID - Returned from C_MountJournal.GetMountIDs()
---@return string 1. name - The name of the mount.
---@return number 2. spellID - The ID of the spell that summons the mount.
---@return number 3. icon : FileID - Icon texture used by the mount.
---@return boolean 4. isActive - Indicates if the player is currently mounted on the mount.
---@return boolean 5. isUsable - Indicates if the mount is usable based on the player's current location, riding skill, profession skill, class, etc.
---@return number 6. sourceType - Indicates generally how the mount may be obtained; a localized string describing the acquisition method is returned by C_MountJournal.GetMountInfoExtraByID.
---@return boolean 7. isFavorite - Indicates if the mount is currently marked as a favorite.
---@return boolean 8. isFactionSpecific - true if the mount is only available to one faction, false otherwise.
---@return Enum.PvPFaction 9. faction ? - 0 if the mount is available only to Horde players, 1 if the mount is available only to Alliance players, or nil if the mount is not faction-specific.
---@since Patch 11.0.0 (2024-07-23): isForDragonriding replaced with isSteadyFlight return.
function C_MountJournal.GetDisplayedMountInfo(mountID)
end

---Returns extra information about the specified mount.
---@param mountID number MountID - Returned from C_MountJournal.GetMountIDs()
---@return number creatureDisplayInfoID : DisplayID - If nil, then the mount has multiple displayIDs, from C_MountJournal.GetMountAllCreatureDisplayInfoByID()[1]. This is not consistent however, since this can be not nil and still have multiple displayIds.
---@return string description - flavor text describing the mount
---@return string source - information about how the mount is obtained, including vendor name and location, monetary cost, etc.
---@return boolean isSelfMount - true if the player transforms into the mount (eg. Obsidian Nightwing or Sandstone Drake), or false for normal mounts
---@return number mountTypeID - a number indicating the capabilities of the mount; known values include:
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
---@since Patch 8.2.5 (2019-09-24): Added animID, spellVisualKitID, disablePlayerMountPreview returns.
function C_MountJournal.GetDisplayedMountInfoExtra(mountID)
end

---
---@return number spellID 
function C_MountJournal.GetDynamicFlightModeSpellID()
end

---Indicates whether the specified mount is marked as a favorite.
---@param mountIndex number - Index of the mount, in the range of 1 to C_MountJournal.GetNumMounts() (inclusive)
---@return boolean isFavorite 
---@return boolean canSetFavorite 
---@since Patch 6.0.2 (2014-10-14): Added.
function C_MountJournal.GetIsFavorite(mountIndex)
end

---Returns the display IDs for a mount.
---@param mountID number MountID
---@return  allDisplayInfo structure - MountCreatureDisplayInfo[]
---@since Patch 7.2.0 (2017-03-28): Added.
function C_MountJournal.GetMountAllCreatureDisplayInfoByID(mountID)
end

---
---@return number level 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_MountJournal.GetMountEquipmentUnlockLevel()
end

---Returns the mount for an item ID.
---@param itemID number 
---@return number mountID ?
---@since Patch 8.1.0 (2018-12-11): Added.
function C_MountJournal.GetMountFromItem(itemID)
end

---Returns the mount for a spell ID.
---@param spellID number 
---@return number mountID ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_MountJournal.GetMountFromSpell(spellID)
end

---Returns the IDs of mounts listed in the mount journal.
---@return number mountIDs [] : MountID
---@since Patch 7.0.3 (2016-07-19): Added.
function C_MountJournal.GetMountIDs()
end

---Returns information about the specified mount.
---@param mountID number MountID - Returned from C_MountJournal.GetMountIDs()
---@return string 1. name - The name of the mount.
---@return number 2. spellID - The ID of the spell that summons the mount.
---@return number 3. icon : FileID - Icon texture used by the mount.
---@return boolean 4. isActive - Indicates if the player is currently mounted on the mount.
---@return boolean 5. isUsable - Indicates if the mount is usable based on the player's current location, riding skill, profession skill, class, etc.
---@return number 6. sourceType - Indicates generally how the mount may be obtained; a localized string describing the acquisition method is returned by C_MountJournal.GetMountInfoExtraByID.
---@return boolean 7. isFavorite - Indicates if the mount is currently marked as a favorite.
---@return boolean 8. isFactionSpecific - true if the mount is only available to one faction, false otherwise.
---@return Enum.PvPFaction 9. faction ? - 0 if the mount is available only to Horde players, 1 if the mount is available only to Alliance players, or nil if the mount is not faction-specific.
---@since Patch 11.0.0 (2024-07-23): isForDragonriding replaced with isSteadyFlight return.
function C_MountJournal.GetMountInfoByID(mountID)
end

---Returns extra information about the specified mount.
---@param mountID number MountID - Returned from C_MountJournal.GetMountIDs()
---@return number creatureDisplayInfoID : DisplayID - If nil, then the mount has multiple displayIDs, from C_MountJournal.GetMountAllCreatureDisplayInfoByID()[1]. This is not consistent however, since this can be not nil and still have multiple displayIds.
---@return string description - flavor text describing the mount
---@return string source - information about how the mount is obtained, including vendor name and location, monetary cost, etc.
---@return boolean isSelfMount - true if the player transforms into the mount (eg. Obsidian Nightwing or Sandstone Drake), or false for normal mounts
---@return number mountTypeID - a number indicating the capabilities of the mount; known values include:
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
---@since Patch 8.2.5 (2019-09-24): Added animID, spellVisualKitID, disablePlayerMountPreview returns.
function C_MountJournal.GetMountInfoExtraByID(mountID)
end

---
---@param spellID number 
---@return string mountCreatureDisplayInfoLink ?
function C_MountJournal.GetMountLink(spellID)
end

---Returns if a mount is currently usable by the player.
---@param mountID number 
---@param checkIndoors boolean 
---@return boolean isUsable 
---@return string useError ?
---@since Patch 8.1.0 (2018-12-11): Added.
function C_MountJournal.GetMountUsabilityByID(mountID, checkIndoors)
end

---Returns the number of (filtered) mounts shown in the mount journal.
---@return number numMounts 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_MountJournal.GetNumDisplayedMounts()
end

---Returns the number of mounts listed in the mount journal.
---@return number numMounts 
---@since Patch 6.0.2 (2014-10-14): Added.
function C_MountJournal.GetNumMounts()
end

---
---@return number numMountsNeedingFanfare 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_MountJournal.GetNumMountsNeedingFanfare()
end

---Returns whether the player has unlocked the ability to switch between Skyriding and steady flight styles for flying mounts .
---@return boolean isUnlocked 
function C_MountJournal.IsDragonridingUnlocked()
end

---Determines if the item is mount equipment based on its class and subclass.
---@param itemLocation ItemLocationMixin 🔗
---@return boolean isMountEquipment 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_MountJournal.IsItemMountEquipment(itemLocation)
end

---
---@return boolean isApplied 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_MountJournal.IsMountEquipmentApplied()
end

---
---@param filterIndex number 
---@return boolean isChecked 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_MountJournal.IsSourceChecked(filterIndex)
end

---
---@param filterIndex number 
---@return boolean isChecked 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_MountJournal.IsTypeChecked(filterIndex)
end

---
---@return boolean isUsingDefaultFilters 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_MountJournal.IsUsingDefaultFilters()
end

---
---@param filterIndex number 
---@return boolean isValid 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_MountJournal.IsValidSourceFilter(filterIndex)
end

---
---@param filterIndex number 
---@return boolean isValid 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_MountJournal.IsValidTypeFilter(filterIndex)
end

---
---@param mountID number 
---@return boolean needsFanfare 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_MountJournal.NeedsFanfare(mountID)
end

---Picks up the specified mount onto the cursor, usually in preparation for placing it on an action button.
---@param displayIndex number - Index of the mount, in the range of 1 to C_MountJournal.GetNumMounts() (inclusive), or 0 to pick up the "Summon Random Favorite Mount" button
---@since Patch 6.0.2 (2014-10-14): Added.
function C_MountJournal.Pickup(displayIndex)
end

---
function C_MountJournal.PickupDynamicFlightMode()
end

---
---@param isChecked boolean 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_MountJournal.SetAllSourceFilters(isChecked)
end

---
---@param isChecked boolean 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_MountJournal.SetAllTypeFilters(isChecked)
end

---Enables or disables the specified mount journal filter.
---@param filterIndex number 
---@since Patch 6.0.2 (2014-10-14): Added.
function C_MountJournal.SetCollectedFilterSetting(filterIndex)
end

---
---@since Patch 9.2.5 (2022-05-31): Added.
function C_MountJournal.SetDefaultFilters()
end

---Marks or unmarks the specified mount as a favorite.
---@param mountIndex number - Index of the mount, in the range of 1 to C_MountJournal.GetNumMounts() (inclusive)
---@param isFavorite boolean 
---@since Patch 6.0.2 (2014-10-14): Added.
function C_MountJournal.SetIsFavorite(mountIndex, isFavorite)
end

---
---@param searchValue string 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_MountJournal.SetSearch(searchValue)
end

---
---@param filterIndex number 
---@param isChecked boolean 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_MountJournal.SetSourceFilter(filterIndex, isChecked)
end

---
---@param filterIndex number 
---@param isChecked boolean 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_MountJournal.SetTypeFilter(filterIndex, isChecked)
end

---Summons the specified mount.
---@param mountID number MountID - Valid mount IDs are returned from C_MountJournal.GetMountIDs(), or 0 to summon a random favorite mount appropriate to the current area
---@since Patch 7.0.3 (2016-07-19): Added.
function C_MountJournal.SummonByID(mountID)
end

---
function C_MountJournal.SwapDynamicFlightMode()
end
