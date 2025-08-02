-- C_PartyPose API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_PartyPose
C_PartyPose = {}

---
---@param partyPoseID number 
function C_PartyPose.ExtraAction(partyPoseID)
end

---
---@param mapID number 
---@return PartyPoseInfo info 
function C_PartyPose.GetPartyPoseInfoByID(mapID)
end

---Returns party pose info for an Island Expedition or Warfront.
---@param mapID number 
---@return PartyPoseInfo info 
---@since Patch 8.0.1 (2018-07-17): Added.[1]
function C_PartyPose.GetPartyPoseInfoByMapID(mapID)
end

---
---@param partyPoseID number 
---@return boolean hasExtraAction 
function C_PartyPose.HasExtraAction(partyPoseID)
end
