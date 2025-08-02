-- C_Scenario API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Scenario
C_Scenario = {}

---Returns info for the current Proving Grounds trial.
---@return number difficulty - difficulty ID of the current trial, 1 for bronze.
---@return number curWave - current wave index, ascending from 1.
---@return number maxWave - number of waves in the trial.
---@return number duration - total amount of time allotted to complete the current wave; 0 if the wave is not time-limited.
---@since Patch 5.4.0 (2013-09-10): Added.
function C_Scenario.GetProvingGroundsInfo()
end
