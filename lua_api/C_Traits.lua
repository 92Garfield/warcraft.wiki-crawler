-- C_Traits API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Traits
C_Traits = {}

---Returns whether the player can make changes to the specified talent config.
---@param configID number 
---@return boolean canEdit 
---@return string errorMessage - If canEdit is false, this will be filled out with text explaining why the player can not make changes.
function C_Traits.CanEditConfig(configID)
end

---Checks whether a node entry is purchasable.
---@param configID number 
---@param nodeID number 
---@param nodeEntryID number 
---@return boolean canPurchase 
function C_Traits.CanPurchaseRank(configID, nodeID, nodeEntryID)
end

---
---@param configID number 
---@param nodeID number 
---@return boolean canRefund 
function C_Traits.CanRefundRank(configID, nodeID)
end

---
---@param configID number 
---@param nodeID number 
---@return boolean success 
function C_Traits.CascadeRepurchaseRanks(configID, nodeID)
end

---
---@param configID number 
function C_Traits.ClearCascadeRepurchaseHistory(configID)
end

---
function C_Traits.CloseTraitSystemInteraction()
end

---Applies any pending changes to talents.
---@param configID number 
---@return boolean success 
function C_Traits.CommitConfig(configID)
end

---
---@param configID number 
---@return boolean hasChanges 
function C_Traits.ConfigHasStagedChanges(configID)
end

---Generate a talent loadout string for a given loadout
---@param configID number a talent loadout, e.g. from C_ClassTalents.GetConfigIDsBySpecID or simply C_ClassTalents.GetActiveConfigID.
---@return string importString a talent loadout string, which can be used to import the loadout, can be sent to a friend, or used on external websites. An empty string is returned if the client can't find data for the loadout.
function C_Traits.GenerateImportString(configID)
end

---Returns a Talent Build String for an inspected target
---@param target string UnitId - For example "target"
---@return string importString - the Talent Build String, or an empty string if inspect information is not available
function C_Traits.GenerateInspectImportString(target)
end

---Returns conditionInfo applicable to the configID you enter
---@param configID number - For TalentTrees this will often be C_ClassTalents.GetActiveConfigID, this is -1 when inspecting a player. For professions, this will be C_ProfSpecs.GetConfigIDForSkillLine.
---@param condID number - trait conditionId as found in e.g. C_Traits.GetNodeInfo or C_Traits.GetEntryInfo
---@return TraitCondInfo condInfo - returns nil if no info is found
function C_Traits.GetConditionInfo(configID, condID)
end

---
---@param systemID number - The systems are defined in TraitSystem.db2. E.g. Dragonriding is 1
---@return number configID 
function C_Traits.GetConfigIDBySystemID(systemID)
end

---Used for "Generic Trait" trees, such as dragonflying talents. Not used for player talent trees.
---@param treeID number 
---@return number configID 
function C_Traits.GetConfigIDByTreeID(treeID)
end

---
---@param configID number - For TalentTrees this will often be C_ClassTalents.GetActiveConfigID, this is -1 when inspecting a player. For professions, this will be C_ProfSpecs.GetConfigIDForSkillLine.
---@return TraitConfigInfo configInfo 
function C_Traits.GetConfigInfo(configID)
end

---
---@param configType Enum.TraitConfigType 
---@return number configIDs []
function C_Traits.GetConfigsByType(configType)
end

---
---@param definitionID number 
---@return TraitDefinitionInfo definitionInfo 
function C_Traits.GetDefinitionInfo(definitionID)
end

---Retrieves Node Entry information.
---@param configID number 
---@param entryID number 
---@return TraitEntryInfo entryInfo 
function C_Traits.GetEntryInfo(configID, entryID)
end

---Returns the version of the Talent Build String format.
---@return number serializationVersion 
function C_Traits.GetLoadoutSerializationVersion()
end

---
---@param configID number 
---@param nodeID number 
---@return TraitCurrencyCost costs []
function C_Traits.GetNodeCost(configID, nodeID)
end

---Returns NodeInfo applicable to the configID you enter.
---@param configID number - For TalentTrees this will often be C_ClassTalents.GetActiveConfigID, this is -1 when inspecting a player. For professions, this will be C_ProfSpecs.GetConfigIDForSkillLine. See also Constants.TraitConsts for a few special ConfigIDs.
---@param nodeID number - e.g. from C_Traits.GetTreeNodes
---@return TraitNodeInfo nodeInfo ? - if the configID is not valid, returns nil. If information for a node cannot be retrieved for another reason, all fields are zeroed out. Most information relates to your current preview state, unless otherwise specified
function C_Traits.GetNodeInfo(configID, nodeID)
end

---Returns IDs of Trait Nodes with pending changes, grouped by the type of change; Returns nothing if there are no pending changes
---@param configID number 
---@return number nodeIDsWithPurchases []
---@return number nodeIDsWithRefunds []
---@return number nodeIDsWithSelectionSwaps [] - Selection nodes that had a previously committed selected entry, and now have a different selected entry pending
function C_Traits.GetStagedChanges(configID)
end

---
---@param configID number 
---@return TraitCurrencyCost costs []
function C_Traits.GetStagedChangesCost(configID)
end

---
---@param configID number 
---@param subTreeID number 
---@return TraitSubTreeInfo subTreeInfo 
function C_Traits.GetSubTreeInfo(configID, subTreeID)
end

---
---@param treeID number 
---@return number systemID 
function C_Traits.GetSystemIDByTreeID(treeID)
end

---Returns meta information about a TraitCurrency, use C_Traits.GetTreeCurrencyInfo if you're looking for TraitCurrency spent/available instead.
---@param traitCurrencyID number 
---@return number flags - any combination of bit flags of Enum.TraitCurrencyFlag
---@return Enum.TraitCurrencyFlag type - indicates how the TraitCurrency is sourced
---@return number currencyTypesID ? - CurrencyID, if non-empty, the TraitCurrency is directly linked to the specified Currency
---@return number icon ? - IconID
function C_Traits.GetTraitCurrencyInfo(traitCurrencyID)
end

---
---@param entryID number 
---@param rank number 
---@return string description 
function C_Traits.GetTraitDescription(entryID, rank)
end

---Returns flags for "Generic Trait" trees. Such as dragonriding talents. Not related to player talent trees.
---@param configID number 
---@return number flags - See Enum.TraitSystemFlag
function C_Traits.GetTraitSystemFlags(configID)
end

---
---@param configID number 
---@return number uiWidgetSetID 
function C_Traits.GetTraitSystemWidgetSetID(configID)
end

---Returns the list of TraitCurrencies related to a TraitTree.
---@param configID number - For TalentTrees this will often be C_ClassTalents.GetActiveConfigID, this is -1 when inspecting a player. For professions, this will be C_ProfSpecs.GetConfigIDForSkillLine.
---@param treeID number - For TalentTrees a class specific TreeID, for professions C_ProfSpecs.GetSpecTabIDsForSkillLine.
---@param excludeStagedChanges boolean - If true, the committed value is returned; if false, the staged value is returned instead.
---@return TreeCurrencyInfo treeCurrencyInfo [] - For TalentTrees, the first currency returned is for the class points, the second currency is spec points.
function C_Traits.GetTreeCurrencyInfo(configID, treeID, excludeStagedChanges)
end

---Get a checksum of the specified tree's structure.
---@param treeID number 
---@return number result [] 16 numbers between 1 and 256
function C_Traits.GetTreeHash(treeID)
end

---
---@param configID number 
---@param treeID number 
---@return TraitTreeInfo treeInfo 
function C_Traits.GetTreeInfo(configID, treeID)
end

---Returns a list of nodeIDs for a given treeID. For talent trees, this contains nodes for all specializations of the tree's class.
---@param treeID number - e.g. from C_Traits.GetConfigInfo
---@return number nodeIDs [] - list of nodeIDs in ascending order, can be used in C_Traits.GetNodeInfo
function C_Traits.GetTreeNodes(treeID)
end

---
---@return boolean hasValidInspectData 
function C_Traits.HasValidInspectData()
end

---
---@return boolean isReadyForCommit 
function C_Traits.IsReadyForCommit()
end

---Attempt to purchase a rank. Changes are not applied until they are committed (through C_Traits.CommitConfig or C_ClassTalents.CommitConfig).
---@param configID number 
---@param nodeID number 
---@return boolean success 
function C_Traits.PurchaseRank(configID, nodeID)
end

---
---@param configID number 
---@param nodeID number 
---@return boolean success 
function C_Traits.RefundAllRanks(configID, nodeID)
end

---Attempt to refund a rank. Changes are not applied until they are committed (through C_Traits.CommitConfig or C_ClassTalents.CommitConfig).
---@param configID number 
---@param nodeID number 
---@param clearEdges boolean ? if true, refunding the talent will refund all talents that no longer meet their requirements
---@return boolean success 
function C_Traits.RefundRank(configID, nodeID, clearEdges)
end

---Resets the tree, refunding any purchased traits where possible. The reset is not automatically saved, use C_Traits.CommitConfig for that.
---@param configID number 
---@param treeID number 
---@return boolean success 
function C_Traits.ResetTree(configID, treeID)
end

---Resets the tree, refunding any purchased traits where possible, but only if the trait costs the specified traitCurrencyID
---@param configID number 
---@param treeID number 
---@param traitCurrencyID number 
---@return boolean success 
function C_Traits.ResetTreeByCurrency(configID, treeID, traitCurrencyID)
end

---Rolls back any pending changes to the trait config - reverting any unsaved changes.
---@param configID number 
---@return boolean success 
function C_Traits.RollbackConfig(configID)
end

---Attempt change the current selection for a selection node (aka choice node). Changes are not applied until they are committed (through C_Traits.CommitConfig or C_ClassTalents.CommitConfig).
---@param configID number 
---@param nodeID number 
---@param nodeEntryID number ? pass nil to unselect the node, effectively the equivalent of C_Traits.RefundRank.
---@param clearEdges boolean ? if true, unselecting the node will refund all talents that no longer meet their requirements
---@return boolean success 
function C_Traits.SetSelection(configID, nodeID, nodeEntryID, clearEdges)
end

---
---@param configID number 
---@return boolean success 
function C_Traits.StageConfig(configID)
end

---#nopermission - UI_ERROR_MESSAGE: You do not have permission to perform that function
function C_Traits.TalentTestUnlearnSpells()
end
