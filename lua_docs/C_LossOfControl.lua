--[=[
-- C_LossOfControl API Documentation
-- Generated from warcraft.wiki.gg
-- Generated on: 2025-08-02 23:23:19
-- Functions: 4
--]=]

--- @class C_LossOfControl
--- C_LossOfControl namespace contains 4 functions
local C_LossOfControl = {}

--[=[
-- C_LossOfControl Functions:
-- - C_LossOfControl.GetActiveLossOfControlData
-- - C_LossOfControl.GetActiveLossOfControlDataByUnit
-- - C_LossOfControl.GetActiveLossOfControlDataCount
-- - C_LossOfControl.GetActiveLossOfControlDataCountByUnit
--]=]

---======================================================================
--- C_LossOfControl.GetActiveLossOfControlData
---======================================================================
--- Returns info about an active loss-of-control effect.
---
--- Arguments:
--- @param index number - Ranging from 1 to C_LossOfControl.GetActiveLossOfControlDataCount()
---
--- Returns:
--- @return LossOfControlData event ?
---
--- @since Patch 9.0.1 (2020-10-13): Moved to C_LossOfControl.GetActiveLossOfControlData()
--- @see https://warcraft.wiki.gg/wiki/API_C_LossOfControl.GetActiveLossOfControlData
---
--- Usage: event = C_LossOfControl.GetActiveLossOfControlData(index)
      = C_LossOfControl.GetActiveLossOfControlDataByUnit(unitToken, index)
---
-- function C_LossOfControl.GetActiveLossOfControlData()
-- end

---======================================================================
--- C_LossOfControl.GetActiveLossOfControlDataByUnit
---======================================================================
--- Returns info about an active loss-of-control effect.
---
--- Arguments:
--- @param index number - Ranging from 1 to C_LossOfControl.GetActiveLossOfControlDataCount()
---
--- Returns:
--- @return LossOfControlData event ?
---
--- @since Patch 9.0.1 (2020-10-13): Moved to C_LossOfControl.GetActiveLossOfControlData()
--- @see https://warcraft.wiki.gg/wiki/API_C_LossOfControl.GetActiveLossOfControlDataByUnit
---
--- Usage: event = C_LossOfControl.GetActiveLossOfControlData(index)
      = C_LossOfControl.GetActiveLossOfControlDataByUnit(unitToken, index)
---
-- function C_LossOfControl.GetActiveLossOfControlDataByUnit()
-- end

---======================================================================
--- C_LossOfControl.GetActiveLossOfControlDataCount
---======================================================================
--- Returns the number of active loss-of-control effects.
---
--- Arguments:
--- @param unitToken string : UnitId - Only works while in commentator mode.
---
--- Returns:
--- @return number count
---
--- @since Patch 9.0.1 (2020-10-13): Changed to C_LossOfControl.GetActiveLossOfControlDataCount()
--- @see https://warcraft.wiki.gg/wiki/API_C_LossOfControl.GetActiveLossOfControlDataCount
---
--- Usage: count = C_LossOfControl.GetActiveLossOfControlDataCount()
      = C_LossOfControl.GetActiveLossOfControlDataCountByUnit(unitToken)
---
-- function C_LossOfControl.GetActiveLossOfControlDataCount()
-- end

---======================================================================
--- C_LossOfControl.GetActiveLossOfControlDataCountByUnit
---======================================================================
--- Returns the number of active loss-of-control effects.
---
--- Arguments:
--- @param unitToken string : UnitId - Only works while in commentator mode.
---
--- Returns:
--- @return number count
---
--- @since Patch 9.0.1 (2020-10-13): Changed to C_LossOfControl.GetActiveLossOfControlDataCount()
--- @see https://warcraft.wiki.gg/wiki/API_C_LossOfControl.GetActiveLossOfControlDataCountByUnit
---
--- Usage: count = C_LossOfControl.GetActiveLossOfControlDataCount()
      = C_LossOfControl.GetActiveLossOfControlDataCountByUnit(unitToken)
---
-- function C_LossOfControl.GetActiveLossOfControlDataCountByUnit()
-- end
