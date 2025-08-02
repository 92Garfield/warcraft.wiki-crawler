-- C_Transmog API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Transmog
C_Transmog = {}

---Confirms all pending transmogs.
---@param currentSpecOnly boolean 
---@return boolean success 
---@since Patch 7.0.3 (2016-07-19): Moved from ApplyTransmogrifications to C_Transmog.ApplyAllPending.
function C_Transmog.ApplyAllPending(currentSpecOnly)
end

---
---@param slotID number 
---@return boolean canHaveSecondaryAppearance 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_Transmog.CanHaveSecondaryAppearanceForSlotID(slotID)
end

---
---@param itemInfo number |string : Item ID, Link or name
---@return boolean canBeTransmogged 
---@return string selfFailureReason ?
---@return boolean canTransmogOthers 
---@return string othersFailureReason ?
---@since Patch 9.1.0 (2021-06-29): Added. Replaces C_Transmog.GetItemInfo()
function C_Transmog.CanTransmogItem(itemInfo)
end

---Returns whether an item can be transmogrified to look like another item.
---@param targetItem  String/Number : item name, item link, or item ID of the item that will change its appearance
---@param sourceItem  String/Number: item name, item link, or item ID of the item the appearance of which will be copied.
---@return boolean canBeTransmogrified - true if targetItem can be transmogrified to look like sourceItem, false otherwise.
---@return  failReason String/nil - If the items cannot be transmogrified, a token indicating the cause:
---@since Patch 7.0.3 (2016-07-19): Moved from CanTransmogrifyItemWithItem to C_Transmog.CanTransmogItemWithItem.
function C_Transmog.CanTransmogItemWithItem(targetItem, sourceItem)
end

---
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Transmog.ClearAllPending()
end

---Clears an equipment slot of pending transmogs.
---@param transmogLocation TransmogLocationMixin 🔗
---@since Patch 9.0.1 (2020-10-13): Takes a TransmogLocationMixin.
function C_Transmog.ClearPending(transmogLocation)
end

---
---@since Patch 7.0.3 (2016-07-19): Added.
function C_Transmog.Close()
end

---
---@param input string 
---@return number transmogIDList []
---@since Patch 9.1.5 (2021-11-02): Added (Build 41031, Nov 10 2021).
function C_Transmog.ExtractTransmogIDList(input)
end

---
---@param setID number 
---@return TransmogSetItemInfo setItems []?
function C_Transmog.GetAllSetAppearancesByID(setID)
end

---
---@return number cost ?
---@since Patch 9.1.0 (2021-06-29): Added.
function C_Transmog.GetApplyCost()
end

---
---@return TransmogApplyWarningInfo warnings []
---@since Patch 7.0.3 (2016-07-19): Added.
function C_Transmog.GetApplyWarnings()
end

---
---@param transmogID number 
---@return number categoryID 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Transmog.GetBaseCategory(transmogID)
end

---
---@param itemModifiedAppearanceID number 
---@return number creatureDisplayID ? : CreatureDisplayID
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Transmog.GetCreatureDisplayIDForSource(itemModifiedAppearanceID)
end

---
---@param itemModifiedAppearanceID number 
---@return number itemID ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Transmog.GetItemIDForSource(itemModifiedAppearanceID)
end

---
---@param transmogLocation TransmogLocationMixin 🔗
---@return TransmogPendingInfoMixin pendingInfo 🔗
---@since Patch 9.1.0 (2021-06-29): Added.
function C_Transmog.GetPending(transmogLocation)
end

---
---@param transmogLocation TransmogLocationMixin 🔗
---@return Enum.TransmogCollectionType categoryID 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_Transmog.GetSlotEffectiveCategory(transmogLocation)
end

---Returns the equipment slot for an inventory type.
---@param inventoryType number Enum.InventoryType
---@return number slot - The equipmentSlot for an inventory type.
---@since Patch 7.2.0 (2017-03-28): Added.
function C_Transmog.GetSlotForInventoryType(inventoryType)
end

---Returns info for a transmog slot.
---@param transmogLocation TransmogLocationMixin 🔗
---@return boolean isTransmogrified 
---@return boolean hasPending - If the item is pending transmogrification
---@return boolean isPendingCollected 
---@return boolean canTransmogrify 
---@return number cannotTransmogrifyReason - The error reason index if canTransmogrify is false. See TRANSMOG_INVALID_CODES and TRANSMOGRIFY_INVALID
---@return boolean hasUndo - If the item is pending detransmogrification
---@return boolean isHideVisual - If the appearance hides the gear, e.g.  [Hidden Helm]
---@return number texture ? : FileID
---@since Patch 9.0.1 (2020-10-13): Added TransmogLocationMixin argument.
function C_Transmog.GetSlotInfo(transmogLocation)
end

---
---@param transmogLocation TransmogLocationMixin 🔗
---@return number errorCode 
---@return string errorString 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Transmog.GetSlotUseError(transmogLocation)
end

---
---@param transmogLocation TransmogLocationMixin 🔗
---@return number baseSourceID 
---@return number baseVisualID 
---@return number appliedSourceID 
---@return number appliedVisualID 
---@return number pendingSourceID 
---@return number pendingVisualID 
---@return boolean hasUndo 
---@return boolean isHideVisual 
---@return number itemSubclass 
---@since Patch 9.1.0 (2021-06-29): Removed pendingCategoryID, appliedCategoryID returns.
function C_Transmog.GetSlotVisualInfo(transmogLocation)
end

---
---@return boolean isAtNPC 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_Transmog.IsAtTransmogNPC()
end

---Returns true if the only pending for the location's slot is a ToggleOff for the secondary appearance.
---@param transmogLocation TransmogLocationMixin 🔗
---@return boolean isBeingCollapsed 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_Transmog.IsSlotBeingCollapsed(transmogLocation)
end

---
---@return boolean isTransmogEnabled 
function C_Transmog.IsTransmogEnabled()
end

---
---@param outfitID number 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_Transmog.LoadOutfit(outfitID)
end

---Applies a pending transmog choice to the given TransmogLocation slot.
---@param transmogLocation TransmogLocationMixin 🔗
---@param pendingInfo TransmogPendingInfoMixin 🔗
---@since Patch 9.1.0 (2021-06-29): Replaced transmogID, categoryID arguments with pendingInfo
function C_Transmog.SetPending(transmogLocation, pendingInfo)
end
