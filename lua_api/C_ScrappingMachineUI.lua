-- C_ScrappingMachineUI API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ScrappingMachineUI
C_ScrappingMachineUI = {}

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ScrappingMachineUI.CloseScrappingMachine()
end

---
---@param index number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ScrappingMachineUI.DropPendingScrapItemFromCursor(index)
end

---
---@param index number 
---@return ItemLocationMixin itemLoc 🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ScrappingMachineUI.GetCurrentPendingScrapItemLocationByIndex(index)
end

---
---@return number spellID 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ScrappingMachineUI.GetScrapSpellID()
end

---
---@return string name 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ScrappingMachineUI.GetScrappingMachineName()
end

---
---@return boolean hasScrappableItems 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ScrappingMachineUI.HasScrappableItems()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ScrappingMachineUI.RemoveAllScrapItems()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ScrappingMachineUI.RemoveCurrentScrappingItem()
end

---
---@param index number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ScrappingMachineUI.RemoveItemToScrap(index)
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ScrappingMachineUI.ScrapItems()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ScrappingMachineUI.ValidateScrappingList()
end
