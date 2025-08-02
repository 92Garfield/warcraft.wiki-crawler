--[=[
-- C_TooltipComparison API Documentation
-- Generated from warcraft.wiki.gg
-- Generated on: 2025-08-02 23:23:19
-- Functions: 2
--]=]

--- @class C_TooltipComparison
--- C_TooltipComparison namespace contains 2 functions
local C_TooltipComparison = {}

--[=[
-- C_TooltipComparison Functions:
-- - C_TooltipComparison.GetItemComparisonDelta
-- - C_TooltipComparison.GetItemComparisonInfo
--]=]

---======================================================================
--- C_TooltipComparison.GetItemComparisonDelta
---======================================================================
--- Arguments:
--- @param comparisonItem TooltipComparisonItem
--- @param equippedItem TooltipComparisonItem
--- @param pairedItem TooltipComparisonItem ?
---
--- Returns:
--- @return string lines []
---
--- @see https://warcraft.wiki.gg/wiki/API_C_TooltipComparison.GetItemComparisonDelta
---
--- Usage: lines = C_TooltipComparison.GetItemComparisonDelta(comparisonItem, equippedItem [, pairedItem, addPairedStats])
---
-- function C_TooltipComparison.GetItemComparisonDelta()
-- end

---======================================================================
--- C_TooltipComparison.GetItemComparisonInfo
---======================================================================
--- Arguments:
--- @param comparisonItem TooltipComparisonItem
---
--- Returns:
--- @return TooltipItemComparisonInfo info
---
--- @see https://warcraft.wiki.gg/wiki/API_C_TooltipComparison.GetItemComparisonInfo
---
--- Usage: info = C_TooltipComparison.GetItemComparisonInfo(comparisonItem)
---
-- function C_TooltipComparison.GetItemComparisonInfo()
-- end
