-- C_Soulbinds API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Soulbinds
C_Soulbinds = {}

---
---@param soulbindID number Soulbind.ID
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.ActivateSoulbind(soulbindID)
end

---
---@param soulbindID number Soulbind.ID
---@return boolean result 
---@return string errorDescription ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.CanActivateSoulbind(soulbindID)
end

---
---@return boolean result 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.CanModifySoulbind()
end

---
---@param soulbindID number Soulbind.ID
---@return boolean result 
---@return string errorDescription ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.CanResetConduitsInSoulbind(soulbindID)
end

---
---@return boolean result 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Soulbinds.CanSwitchActiveSoulbindTreeBranch()
end

---
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.CloseUI()
end

---
---@param soulbindID number Soulbind.ID
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.CommitPendingConduitsInSoulbind(soulbindID)
end

---
---@param soulbindID number Soulbind.ID
---@param conduitID number SoulbindConduit.ID
---@return number nodeID 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Soulbinds.FindNodeIDActuallyInstalled(soulbindID, conduitID)
end

---
---@param soulbindID number Soulbind.ID
---@param conduitID number SoulbindConduit.ID
---@return number nodeID 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Soulbinds.FindNodeIDAppearingInstalled(soulbindID, conduitID)
end

---
---@param soulbindID number Soulbind.ID
---@param conduitID number SoulbindConduit.ID
---@return number nodeID 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Soulbinds.FindNodeIDPendingInstall(soulbindID, conduitID)
end

---
---@param soulbindID number Soulbind.ID
---@param conduitID number SoulbindConduit.ID
---@return number nodeID 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Soulbinds.FindNodeIDPendingUninstall(soulbindID, conduitID)
end

---
---@return number soulbindID : Soulbind.ID
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.GetActiveSoulbindID()
end

---
---@param conduitType Enum.SoulbindConduitType 
---@return ConduitCollectionData collectionData []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.GetConduitCollection(conduitType)
end

---
---@return number count 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Soulbinds.GetConduitCollectionCount()
end

---
---@param conduitID number SoulbindConduit.ID
---@return ConduitCollectionData collectionData ?
---@since Patch 9.0.2 (2020-11-17): Added C_Soulbinds.GetConduitCollectionDataByVirtualID()
function C_Soulbinds.GetConduitCollectionData(conduitID)
end

---
---@param conduitID number SoulbindConduit.ID
---@return ConduitCollectionData collectionData ?
---@since Patch 9.0.2 (2020-11-17): Added C_Soulbinds.GetConduitCollectionDataByVirtualID()
function C_Soulbinds.GetConduitCollectionDataAtCursor(conduitID)
end

---
---@param conduitID number SoulbindConduit.ID
---@return ConduitCollectionData collectionData ?
---@since Patch 9.0.2 (2020-11-17): Added C_Soulbinds.GetConduitCollectionDataByVirtualID()
function C_Soulbinds.GetConduitCollectionDataByVirtualID(conduitID)
end

---
---@param nodeID number 
---@return number conduitID : SoulbindConduit.ID
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Soulbinds.GetConduitDisplayed(nodeID)
end

---
---@param conduitID number SoulbindConduit.ID
---@param rank number SoulbindConduitRank.RankIndex - Returned from C_Soulbinds.GetConduitRank()
---@return string link : conduitLink
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.GetConduitHyperlink(conduitID, rank)
end

---
---@param nodeID number 
---@return number conduitID : SoulbindConduit.ID
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Soulbinds.GetConduitIDPendingInstall(nodeID)
end

---
---@param conduitID number SoulbindConduit.ID
---@param rank number SoulbindConduitRank.RankIndex - Returned from C_Soulbinds.GetConduitRank()
---@return number quality 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.GetConduitQuality(conduitID, rank)
end

---
---@param conduitID number SoulbindConduit.ID
---@return number conduitRank : SoulbindConduitRank.RankIndex
---@since Patch 9.1.0 (2021-06-29): Moved to C_Soulbinds.GetConduitRank()
function C_Soulbinds.GetConduitRank(conduitID)
end

---
---@param conduitID number SoulbindConduit.ID
---@param conduitRank number SoulbindConduitRank.RankIndex - Returned from C_Soulbinds.GetConduitRank()
---@return number spellID 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.GetConduitSpellID(conduitID, conduitRank)
end

---
---@param nodeID number 
---@return number conduitID : SoulbindConduit.ID
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Soulbinds.GetInstalledConduitID(nodeID)
end

---
---@param nodeID number 
---@return SoulbindNode node 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.GetNode(nodeID)
end

---Prints soulbind data for Niya.
---@param soulbindID number Soulbind.ID
---@return SoulbindData data 
---@since Patch 9.0.5 (2021-03-09): Added playerConditionReason field.
function C_Soulbinds.GetSoulbindData(soulbindID)
end

---
---@param soulbindID number 
---@return number specIDs []
---@since Patch 9.1.0 (2021-06-29): Added.
function C_Soulbinds.GetSpecsAssignedToSoulbind(soulbindID)
end

---
---@param treeID number 
---@return SoulbindTree tree 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.GetTree(treeID)
end

---
---@param soulbindID number Soulbind.ID
---@return boolean result 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.HasAnyInstalledConduitInSoulbind(soulbindID)
end

---
---@return boolean result 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.HasAnyPendingConduits()
end

---
---@param soulbindID number Soulbind.ID
---@return boolean result 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.HasPendingConduitsInSoulbind(soulbindID)
end

---
---@param nodeID number 
---@return boolean result 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.IsConduitInstalled(nodeID)
end

---
---@param soulbindID number Soulbind.ID
---@param conduitID number SoulbindConduit.ID
---@return boolean result 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.IsConduitInstalledInSoulbind(soulbindID, conduitID)
end

---
---@param itemInfo number |string : Item ID, Link or name
---@return boolean result 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.IsItemConduitByItemInfo(itemInfo)
end

---
---@param nodeID number 
---@return boolean result 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Soulbinds.IsNodePendingModify(nodeID)
end

---
---@param soulbindID number Soulbind.ID
---@return boolean result 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.IsUnselectedConduitPendingInSoulbind(soulbindID)
end

---
---@param nodeID number 
---@param conduitID number SoulbindConduit.ID
---@param type Enum.SoulbindConduitTransactionType 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Soulbinds.ModifyNode(nodeID, conduitID, type)
end

---
---@param nodeID number 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Soulbinds.SelectNode(nodeID)
end

---
---@param nodeID number 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Soulbinds.UnmodifyNode(nodeID)
end
