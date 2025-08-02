-- C_ItemUpgrade API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ItemUpgrade
C_ItemUpgrade = {}

---
---@param baseItem ItemLocationMixin 🔗
---@return boolean isValid 
---@since Patch 9.0.5 (2021-03-09): Added.
function C_ItemUpgrade.CanUpgradeItem(baseItem)
end

---
---@since Patch 9.1.5 (2021-11-02): Added.
function C_ItemUpgrade.ClearItemUpgrade()
end

---
---@since Patch 9.1.5 (2021-11-02): Added.
function C_ItemUpgrade.CloseItemUpgrade()
end

---
---@param itemInfo number |string : ItemInfo - Item ID, Link, or Name
---@return number characterHighWatermark 
---@return number accountHighWatermark 
function C_ItemUpgrade.GetHighWatermarkForItem(itemInfo)
end

---
---@param itemRedundancySlot number - Must be an Enum.ItemRedundancySlot value
---@return number characterHighWatermark 
---@return number accountHighWatermark 
function C_ItemUpgrade.GetHighWatermarkForSlot(itemRedundancySlot)
end

---
---@param itemInfo number |string : ItemInfo - Item ID, Link, or Name
---@return number itemRedundancySlot - Enum.ItemRedundancySlot value
function C_ItemUpgrade.GetHighWatermarkSlotForItem(itemInfo)
end

---Returns an itemLink of the anticipated result from applying item upgrading using the ItemUpgradeFrame.
---@return string link - itemLink
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ItemUpgrade.GetItemHyperlink()
end

---
---@return number itemLevel 
---@return boolean isPvpItemLevel 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_ItemUpgrade.GetItemUpgradeCurrentLevel()
end

---Returns the effect of upgrading an item on one of its effects.
---@param effectIndex number - Index of the effect to query, ascending from 1 to C_ItemUpgrade.GetNumItemUpgradeEffects()
---@param numUpgradeLevels number ?
---@return string outBaseEffect - effect text before the item upgrade (e.g. "When your attacks hit you have a chance to gain 3,386 critical strike for 30 sec.")
---@return string outUpgradedEffect - effect text after the item upgrade (e.g. "When your attacks hit you have a chance to gain 3,649 critical strike for 30 sec.")
---@since Patch 9.1.0 (2021-06-29): Added.
function C_ItemUpgrade.GetItemUpgradeEffect(effectIndex, numUpgradeLevels)
end

---
---@return ItemUpgradeItemInfo itemInfo 
---@since Patch 10.0.5 (2023-01-24): Removed costsToUpgrade field.
function C_ItemUpgrade.GetItemUpgradeItemInfo()
end

---
---@param numUpgradeLevels number 
---@return number currentPvPItemLevel 
---@return number upgradedPvPItemLevel 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_ItemUpgrade.GetItemUpgradePvpItemLevelDeltaValues(numUpgradeLevels)
end

---Returns the number of item effects affected by upgrading the current item.
---@return number numItemUpgradeEffects - number of item effects that will be altere by upgrading the item.
---@since Patch 9.1.0 (2021-06-29): Added.
function C_ItemUpgrade.GetNumItemUpgradeEffects()
end

---
---@return boolean isBound 
function C_ItemUpgrade.IsItemBound()
end

---
---@since Patch 9.1.5 (2021-11-02): Added.
function C_ItemUpgrade.SetItemUpgradeFromCursorItem()
end

---
---@param itemToSet ItemLocationMixin 🔗
---@since Patch 9.1.5 (2021-11-02): Added.
function C_ItemUpgrade.SetItemUpgradeFromLocation(itemToSet)
end

---#protected - This can only be called from secure code.
---@param numUpgrades number ? = 1
---@since Patch 9.1.5 (2021-11-02): Added.
function C_ItemUpgrade.UpgradeItem(numUpgrades)
end
