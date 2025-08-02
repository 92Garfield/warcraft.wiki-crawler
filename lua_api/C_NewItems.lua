-- C_NewItems API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_NewItems
C_NewItems = {}

---Clears the new item flag on all items in the player's inventory.
---@since Patch 5.4.0 (2013-09-10): Added.
function C_NewItems.ClearAll()
end

---Returns true if the item in the inventory slot is flagged as new.
---@param containerIndex number - BagID of the container.
---@param slotIndex number - ID of the inventory slot within the container.
---@return boolean isNew - Returns true if the inventory slot holds a newly-acquired item; otherwise false (empty slot or a non-new item).
---@since Patch 5.4.0 (2013-09-10): Added.[1]
function C_NewItems.IsNewItem(containerIndex, slotIndex)
end

---Clears the "new item" flag.
---@param containerIndex number bagID - container slot id.
---@param slotIndex number - slot within the bag to clear the "new item" flag for.
---@since Patch 5.4.0 (2013-09-10): Added.
function C_NewItems.RemoveNewItem(containerIndex, slotIndex)
end
