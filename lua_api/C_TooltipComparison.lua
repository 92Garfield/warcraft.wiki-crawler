-- C_TooltipComparison API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_TooltipComparison
C_TooltipComparison = {}

---
---@param comparisonItem TooltipComparisonItem 
---@param equippedItem TooltipComparisonItem 
---@param pairedItem TooltipComparisonItem ?
---@return string lines []
function C_TooltipComparison.GetItemComparisonDelta(comparisonItem, equippedItem, pairedItem)
end

---
---@param comparisonItem TooltipComparisonItem 
---@return TooltipItemComparisonInfo info 
function C_TooltipComparison.GetItemComparisonInfo(comparisonItem)
end
