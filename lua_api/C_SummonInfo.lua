-- C_SummonInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_SummonInfo
C_SummonInfo = {}

---Declines a summon request.
---@since Patch 8.1.0 (2018-12-11): Moved to C_SummonInfo.CancelSummon. The previous alias is deprecated. [1]
function C_SummonInfo.CancelSummon()
end

---Accepts a summon request.
---@since Patch 8.1.0 (2018-12-11): Moved to C_SummonInfo.ConfirmSummon()
function C_SummonInfo.ConfirmSummon()
end

---Returns the zone where you will be summoned to.
---@return string areaName - the zone of the summoning origin.
---@since Patch 8.1.0 (2018-12-11): Moved to C_SummonInfo.GetSummonConfirmAreaName()
function C_SummonInfo.GetSummonConfirmAreaName()
end

---Returns the name of the player summoning you.
---@return string summoner ? - name of the player summoning you, or nil if no summon is currently pending.
---@since Patch 8.1.5 (2019-03-12): Moved to C_SummonInfo.GetSummonConfirmSummoner()
function C_SummonInfo.GetSummonConfirmSummoner()
end

---Returns the time left in seconds for accepting a summon.
---@return number timeLeft - Time in seconds. Zero if not being summoned.
---@since Patch 8.1.0 (2018-12-11): Moved to C_SummonInfo.GetSummonConfirmTimeLeft()
function C_SummonInfo.GetSummonConfirmTimeLeft()
end

---Returns the reason for a summon.
---@return number summonReason 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_SummonInfo.GetSummonReason()
end

---Returns true if the summon will take the player out of a confined starting zone.
---@return boolean isSummonSkippingStartExperience 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_SummonInfo.IsSummonSkippingStartExperience()
end
