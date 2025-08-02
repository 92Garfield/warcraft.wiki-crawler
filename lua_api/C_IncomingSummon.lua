-- C_IncomingSummon API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_IncomingSummon
C_IncomingSummon = {}

---Returns whether a group member has an incoming summon.
---@param unit string UnitId
---@return boolean summon 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_IncomingSummon.HasIncomingSummon(unit)
end

---Returns the status of an group member's incoming summon.
---@param unit string UnitId
---@return  status Enum.SummonStatus
---@since Patch 8.1.0 (2018-12-11): Added.
function C_IncomingSummon.IncomingSummonStatus(unit)
end
