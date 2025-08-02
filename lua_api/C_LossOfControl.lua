-- C_LossOfControl API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_LossOfControl
C_LossOfControl = {}

---Returns info about an active loss-of-control effect.
---@param index number - Ranging from 1 to C_LossOfControl.GetActiveLossOfControlDataCount()
---@return LossOfControlData event ?
---@since Patch 9.0.1 (2020-10-13): Moved to C_LossOfControl.GetActiveLossOfControlData()
function C_LossOfControl.GetActiveLossOfControlData(index)
end

---Returns info about an active loss-of-control effect.
---@param index number - Ranging from 1 to C_LossOfControl.GetActiveLossOfControlDataCount()
---@return LossOfControlData event ?
---@since Patch 9.0.1 (2020-10-13): Moved to C_LossOfControl.GetActiveLossOfControlData()
function C_LossOfControl.GetActiveLossOfControlDataByUnit(index)
end

---Returns the number of active loss-of-control effects.
---@param unitToken string UnitId - Only works while in commentator mode.
---@return number count 
---@since Patch 9.0.1 (2020-10-13): Changed to C_LossOfControl.GetActiveLossOfControlDataCount()
function C_LossOfControl.GetActiveLossOfControlDataCount(unitToken)
end

---Returns the number of active loss-of-control effects.
---@param unitToken string UnitId - Only works while in commentator mode.
---@return number count 
---@since Patch 9.0.1 (2020-10-13): Changed to C_LossOfControl.GetActiveLossOfControlDataCount()
function C_LossOfControl.GetActiveLossOfControlDataCountByUnit(unitToken)
end
