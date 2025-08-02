-- C_ItemInteraction API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ItemInteraction
C_ItemInteraction = {}

---
---@since Patch 8.3.0 (2020-01-14): Added.
function C_ItemInteraction.ClearPendingItem()
end

---
---@since Patch 8.3.0 (2020-01-14): Added.
function C_ItemInteraction.CloseUI()
end

---
---@return ItemInteractionChargeInfo chargeInfo 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_ItemInteraction.GetChargeInfo()
end

---
---@param item ItemLocationMixin 🔗
---@return ConversionCurrencyCost conversionCost 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_ItemInteraction.GetItemConversionCurrencyCost(item)
end

---
---@return ItemInteractionFrameInfo info ?
---@since Patch 9.1.5 (2021-11-02): Added buttonTooltip, confirmationDescription, flags, interactionType fields.
function C_ItemInteraction.GetItemInteractionInfo()
end

---
---@return number spellId 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_ItemInteraction.GetItemInteractionSpellId()
end

---
---@since Patch 8.3.0 (2020-01-14): Added.
function C_ItemInteraction.InitializeFrame()
end

---
---@since Patch 8.3.0 (2020-01-14): Added.
function C_ItemInteraction.PerformItemInteraction()
end

---
---@since Patch 8.3.0 (2020-01-14): Added.
function C_ItemInteraction.Reset()
end

---
---@param item ItemLocationMixin ?🔗
---@return boolean success 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_ItemInteraction.SetPendingItem(item)
end
