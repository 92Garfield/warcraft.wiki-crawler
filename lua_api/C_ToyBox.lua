-- C_ToyBox API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ToyBox
C_ToyBox = {}

---Returns the total amount of toys.
---@return number numToys - The amount of toys in the game; this is not affected by the toy box filter.
function C_ToyBox.GetNumToys()
end

---Returns a toy by index.
---@param index number - Ranging from 1 to C_ToyBox.GetNumFilteredToys.
---@return number itemID - The Item ID of the toy. Returns -1 if the index is invalid.
function C_ToyBox.GetToyFromIndex(index)
end

---
---@param itemID number - The itemID returned from C_ToyBox.GetToyFromIndex(); possible values listed at ToyID.
---@return number itemID - The Item ID of the toy.
---@return string toyName - The name of the toy.
---@return number icon - The icon texture (FileID).
---@return boolean isFavorite - Whether the toy is set to favorite.
---@return boolean hasFanfare - Shows a highlight for the toy.
---@return Enum.ItemQuality itemQuality 🔗
---@since Patch 6.0.2 (2014-10-14): Added.
function C_ToyBox.GetToyInfo(itemID)
end

---Returns the item link for a toy.
---@param itemID number - Numeric ID of the item.
---@return string itemLink ? - The toy's localized itemLink, or nil if that itemID is not a toy.
---@since Patch 6.0.2 (2014-10-14): Added.
function C_ToyBox.GetToyLink(itemID)
end
