-- C_EquipmentSet API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_EquipmentSet
C_EquipmentSet = {}

---Assigns an equipment set to a specialization.
---@param equipmentSetID number 
---@param specIndex number 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_EquipmentSet.AssignSpecToEquipmentSet(equipmentSetID, specIndex)
end

---Returns whether any equipment sets can be used.
---@return boolean canUseEquipmentSets 
function C_EquipmentSet.CanUseEquipmentSets()
end

---Clears ignored slots for saving.
function C_EquipmentSet.ClearIgnoredSlotsForSave()
end

---Creates an equipment set.
---@param equipmentSetName string 
---@param icon string ?
---@since Patch 7.2.0 (2017-03-28): Added.
function C_EquipmentSet.CreateEquipmentSet(equipmentSetName, icon)
end

---Deletes an equipment set.
---@param equipmentSetID number 
function C_EquipmentSet.DeleteEquipmentSet(equipmentSetID)
end

---Returns whether an equipment set has locked items
---@param equipmentSetID number 
---@return boolean hasLockedItems 
function C_EquipmentSet.EquipmentSetContainsLockedItems(equipmentSetID)
end

---Returns the specialization assigned to an equipment set.
---@param equipmentSetID number 
---@return number specIndex 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_EquipmentSet.GetEquipmentSetAssignedSpec(equipmentSetID)
end

---Returns the equipment set currently assigned to a specific specialization.
---@param specIndex number 
---@return number equipmentSetID 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_EquipmentSet.GetEquipmentSetForSpec(specIndex)
end

---Returns the set ID of an equipment set with the specified name.
---@param equipmentSetName string - equipment set name to query
---@return number equipmentSetID - set ID of an equipment set with the specified name, or nil if no sets with the specified name are currently saved.
---@since Patch 7.2.0 (2017-03-28): Added.
function C_EquipmentSet.GetEquipmentSetID(equipmentSetName)
end

---Returns an array containing all currently saved equipment set IDs.
---@return number equipmentSetIDs [] - An array of equipment set IDs of the currently available equipment sets.
---@since Patch 7.2.0 (2017-03-28): Added.
function C_EquipmentSet.GetEquipmentSetIDs()
end

---Returns information about a saved equipment set.
---@param equipmentSetID number - equipment set ID to query information about.
---@return string name - name of the equipment set.
---@return number iconFileID - icon texture selected for the equipment set.
---@return number setID - equipment set ID.
---@return boolean isEquipped - true if all non-ignored slots in the set are currently equipped.
---@return number numItems - number of items included in the set.
---@return number numEquipped - number of items in the set currently equipped.
---@return number numInInventory - number of items in the set currently in the player's bags/bank, if bank is available.
---@return number numLost - number of items in the set that are not currently available to the player.
---@return number numIgnored - number of inventory slots ignored by the set.
function C_EquipmentSet.GetEquipmentSetInfo(equipmentSetID)
end

---Returns ignored slots of an equipment set.
---@param equipmentSetID number 
---@return boolean slotIgnored [] - indexed by InventorySlotId
function C_EquipmentSet.GetIgnoredSlots(equipmentSetID)
end

---Returns the item IDs of an equipment set.
---@param equipmentSetID number - Appears to return valid info for indices [0, 2, 4, ...]
---@return table itemIDs - a table of numbers indexed by InventorySlotId
function C_EquipmentSet.GetItemIDs(equipmentSetID)
end

---Returns the location of all items in an equipment set.
---@param equipmentSetID number 
---@return number locations [] - indexed by InventorySlotId
function C_EquipmentSet.GetItemLocations(equipmentSetID)
end

---Returns the number of saved equipment sets.
---@return number numEquipmentSets - number of saved sets for the current character.
function C_EquipmentSet.GetNumEquipmentSets()
end

---Ignores an equipment slot for saving.
---@param slot number 
function C_EquipmentSet.IgnoreSlotForSave(slot)
end

---Returns whether a slot is ignored for saving.
---@param slot number 
---@return boolean isSlotIgnored 
function C_EquipmentSet.IsSlotIgnoredForSave(slot)
end

---Modifies an equipment set.
---@param equipmentSetID number 
---@param newName string 
---@param newIcon string ?
function C_EquipmentSet.ModifyEquipmentSet(equipmentSetID, newName, newIcon)
end

---Picks up an equipment set, placing it on the cursor.
---@param equipmentSetID number 
function C_EquipmentSet.PickupEquipmentSet(equipmentSetID)
end

---Saves your currently equipped items into an equipment set.
---@param equipmentSetID number - can be retrieved from an existing equipment set by name with C_EquipmentSet.GetEquipmentSetID.
---@param icon  Accepts both texture names and file IDs, e.g. "INV_Ammo_Snowball", 655708 or "655708"
function C_EquipmentSet.SaveEquipmentSet(equipmentSetID, icon)
end

---Unassigns an equipment set from a specialization.
---@param equipmentSetID number 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_EquipmentSet.UnassignEquipmentSetSpec(equipmentSetID)
end

---Unignores a slot for saving.
---@param slot number 
function C_EquipmentSet.UnignoreSlotForSave(slot)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 3.3
---@param equipmentSetID number 
---@return boolean setWasEquipped - true if the set was equipped, nil otherwise. Failure conditions include invalid arguments, and engaging in combat.
function C_EquipmentSet.UseEquipmentSet(equipmentSetID)
end
