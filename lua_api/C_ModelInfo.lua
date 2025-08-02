-- C_ModelInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ModelInfo
C_ModelInfo = {}

---
---@param modelSceneFrame table 
---@param modelSceneID number 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ModelInfo.AddActiveModelScene(modelSceneFrame, modelSceneID)
end

---
---@param modelSceneFrameActor table 
---@param modelSceneActorID number 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ModelInfo.AddActiveModelSceneActor(modelSceneFrameActor, modelSceneActorID)
end

---
---@param modelSceneFrame table 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ModelInfo.ClearActiveModelScene(modelSceneFrame)
end

---
---@param modelSceneFrameActor table 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ModelInfo.ClearActiveModelSceneActor(modelSceneFrameActor)
end

---
---@param modelActorDisplayID number 
---@return UIModelSceneActorDisplayInfo actorDisplayInfo 
---@since Patch 8.0.1 (2018-07-17): Returns structured data.
function C_ModelInfo.GetModelSceneActorDisplayInfoByID(modelActorDisplayID)
end

---
---@param modelActorID number 
---@return UIModelSceneActorInfo actorInfo 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ModelInfo.GetModelSceneActorInfoByID(modelActorID)
end

---
---@param modelSceneCameraID number 
---@return UIModelSceneCameraInfo modelSceneCameraInfo 
---@since Patch 7.3.5 (2018-01-16): Added flags field.
function C_ModelInfo.GetModelSceneCameraInfoByID(modelSceneCameraID)
end

---
---@param modelSceneID number 
---@return Enum.ModelSceneType modelSceneType 
---@since Patch 10.0.5 (2023-01-24): Added flags return.
function C_ModelInfo.GetModelSceneInfoByID(modelSceneID)
end
