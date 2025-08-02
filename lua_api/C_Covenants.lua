-- C_Covenants API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Covenants
C_Covenants = {}

---Returns the CovenantID of the chosen covenant.
---@return Enum.CovenantType covenantID 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Covenants.GetActiveCovenantID()
end

---
---@param covenantID Enum.CovenantType 
---@return CovenantData data ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Covenants.GetCovenantData(covenantID)
end

---
---@return Enum.CovenantType covenantID []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Covenants.GetCovenantIDs()
end
