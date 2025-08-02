-- C_ScenarioInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ScenarioInfo
C_ScenarioInfo = {}

---
---@param criteriaIndex number 
---@return ScenarioCriteriaInfo scenarioCriteriaInfo 
function C_ScenarioInfo.GetCriteriaInfo(criteriaIndex)
end

---
---@param stepID number 
---@param criteriaIndex number 
---@return ScenarioCriteriaInfo scenarioCriteriaInfo 
function C_ScenarioInfo.GetCriteriaInfoByStep(stepID, criteriaIndex)
end

---
---@param runType Enum.JailersTowerType 
---@return string typeString ?
---@since Patch 9.0.2 (2020-11-17): Added (Build 36949, Dec 14 2020). Replaces JAILERS_TOWER_LEVEL_TYPE_STRINGS
function C_ScenarioInfo.GetJailersTowerTypeString(runType)
end

---
---@return ScenarioInformation scenarioInfo 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_ScenarioInfo.GetScenarioInfo()
end

---
---@param scenarioStepID number ?
---@return ScenarioStepInfo scenarioStepInfo 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_ScenarioInfo.GetScenarioStepInfo(scenarioStepID)
end
