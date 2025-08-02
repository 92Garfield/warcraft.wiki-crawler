-- C_ClassTalents API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ClassTalents
C_ClassTalents = {}

---Returns true only if the player has staged changes and can commit their talents in their current state.
---@return boolean canChange 
---@return boolean canAdd 
---@return string changeError ?
function C_ClassTalents.CanChangeTalents()
end

---
---@return boolean canCreate 
function C_ClassTalents.CanCreateNewConfig()
end

---Returns true if the player could switch talents if they staged a proper loadout.
---@return boolean canEdit 
---@return string changeError 
function C_ClassTalents.CanEditTalents()
end

---Applies any pending changes to the specified loadout configID
---@param savedConfigID number ? This should be a loadout configID, from C_ClassTalents.GetLastSelectedSavedConfigID or C_ClassTalents.GetConfigIDsBySpecID. Not the ActiveConfigID from C_ClassTalents.GetActiveConfigID.
---@return boolean success 
function C_ClassTalents.CommitConfig(savedConfigID)
end

---
---@param configID number 
---@return boolean success 
function C_ClassTalents.DeleteConfig(configID)
end

---Returns the configID used for your currently selected specialization. Not to be confused with a talent loadout's configID
---@return number activeConfigID ?
function C_ClassTalents.GetActiveConfigID()
end

---Returns the SubTreeID of the player's active Hero Talent Specialization SubTree.
---@return number heroSpecID ? - SubTreeID of the player's active Hero Talent Specialization or nil if no Specialization is active.
function C_ClassTalents.GetActiveHeroTalentSpec()
end

---Returns a list of talent loadouts for a given spec
---@param specID number ? - SpecializationID e.g. PlayerUtil.GetCurrentSpecID(), defaults to current spec
---@return number configIDs [] - list of loadout configIDs
function C_ClassTalents.GetConfigIDsBySpecID(specID)
end

---
---@return boolean hasStarterBuild 
function C_ClassTalents.GetHasStarterBuild()
end

---Returns the SubTreeIDs of the Hero Talent Specializations available to a Class Specialization and config; Returns nothing if none available
---@param configID number ? - If not supplied, defaults to the player's active config
---@param classSpecID number ? - SpecializationID e.g. PlayerUtil.GetCurrentSpecID(), defaults to current spec
---@return number subTreeIDs []? - SubTreeIDs of each Hero Talent Specialization
---@return number requiredPlayerLevel ? - The player level at which one of the Hero Talent Specializations can be activated
function C_ClassTalents.GetHeroTalentSpecsForClassSpec(configID, classSpecID)
end

---Returns the value stored using C_ClassTalents.UpdateLastSelectedSavedConfigID.
---@param specID number - SpecializationID e.g. PlayerUtil.GetCurrentSpecID()
---@return number configID ?
function C_ClassTalents.GetLastSelectedSavedConfigID(specID)
end

---
---@return number nodeID ?
---@return number entryID ?
function C_ClassTalents.GetNextStarterBuildPurchase()
end

---
---@return boolean isActive 
function C_ClassTalents.GetStarterBuildActive()
end

---
---@param specID number - SpecializationID e.g. PlayerUtil.GetCurrentSpecID()
---@return number treeID ?
function C_ClassTalents.GetTraitTreeForSpec(specID)
end

---Returns whether the player has any unspent talent points in their active hero talent tree. If hasUnspentPoints is true, numHeroPoints will be greater than zero.
---@return boolean hasUnspentPoints 
---@return number numHeroPoints 
function C_ClassTalents.HasUnspentHeroTalentPoints()
end

---Returns whether the player has any unspent talent points in their class or spec talent trees.
---@return boolean hasUnspentPoints 
---@return number numClassPoints 
---@return number numSpecPoints 
function C_ClassTalents.HasUnspentTalentPoints()
end

---
---@param configID number 
---@param entries ImportLoadoutEntryInfo []
---@return boolean success 
---@return string importError 
function C_ClassTalents.ImportLoadout(configID, entries)
end

---Prepares the Constants.TraitConsts.VIEW_TRAIT_CONFIG_ID configID, with spec and level information.
---@param specID number - SpecializationID e.g. PlayerUtil.GetCurrentSpecID()
---@param level number 
function C_ClassTalents.InitializeViewLoadout(specID, level)
end

---New configs may or may not be populated and ready to load immediately after creation. Avoid calling for configs intentionally created empty.
---@param configID number 
---@return boolean isPopulated 
function C_ClassTalents.IsConfigPopulated(configID)
end

---
---@param configID number 
---@param autoApply boolean 
---@return Enum.LoadConfigResult result 
---@since Patch 10.0.5 (2023-01-24): Added changeError, newLearnedNodeIDs returns.
function C_ClassTalents.LoadConfig(configID, autoApply)
end

---
---@param configID number 
---@param name string 
---@return boolean success 
function C_ClassTalents.RenameConfig(configID, name)
end

---
---@param name string 
---@return boolean success 
function C_ClassTalents.RequestNewConfig(name)
end

---
---@param configID number 
---@return boolean success 
function C_ClassTalents.SaveConfig(configID)
end

---Switches your active talent loadout to the Starter Build, which is a Blizzard defined talent build, meant to be good enough for most content.
---@param active boolean 
---@return Enum.LoadConfigResult result 
function C_ClassTalents.SetStarterBuildActive(active)
end

---
---@param configID number 
---@param usesShared boolean 
function C_ClassTalents.SetUsesSharedActionBars(configID, usesShared)
end

---
---@param specID number 
---@param configID number ?
function C_ClassTalents.UpdateLastSelectedSavedConfigID(specID, configID)
end

---Applies loadout information to a previously initialized Constants.TraitConsts.VIEW_TRAIT_CONFIG_ID configID
---@param entries ImportLoadoutEntryInfo [] - should be used with the same data format as C_ClassTalents.ImportLoadout
---@return boolean success 
function C_ClassTalents.ViewLoadout(entries)
end
