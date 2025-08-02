--[=[
-- C_Scenario API Documentation
-- Generated from warcraft.wiki.gg
-- Generated on: 2025-08-02 23:23:19
-- Functions: 1
--]=]

--- @class C_Scenario
--- C_Scenario namespace contains 1 functions
local C_Scenario = {}

--[=[
-- C_Scenario Functions:
-- - C_Scenario.GetProvingGroundsInfo
--]=]

---======================================================================
--- C_Scenario.GetProvingGroundsInfo
---======================================================================
--- Returns info for the current Proving Grounds trial.
---
--- Returns:
--- @return number difficulty - difficulty ID of the current trial, 1 for bronze.
--- @return number curWave - current wave index, ascending from 1.
--- @return number maxWave - number of waves in the trial.
--- @return number duration - total amount of time allotted to complete the current wave; 0 if the wave is not time-limited.
---
--- @since Patch 5.4.0 (2013-09-10): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_Scenario.GetProvingGroundsInfo
---
--- Usage: difficulty, curWave, maxWave, duration = C_Scenario.GetProvingGroundsInfo()
---
-- function C_Scenario.GetProvingGroundsInfo()
-- end
