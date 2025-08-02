-- C_AnimaDiversion API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_AnimaDiversion
C_AnimaDiversion = {}

---Closes the AnimaDiversionFrame.
---@since Patch 9.0.1 (2020-10-13): Added.
function C_AnimaDiversion.CloseUI()
end

---Returns all Anima Conductor nodes for the player's Covenant.
---@return AnimaDiversionNodeInfo animaNodes []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_AnimaDiversion.GetAnimaDiversionNodes()
end

---Locates an Anima Conductor.
---@return table normalizedPosition : vector2 - An Anima Conductor's location on the continent map only while interacting with it; otherwise nil.
---@since Patch 9.0.1 (2020-10-13): Added.
function C_AnimaDiversion.GetOriginPosition()
end

---
---@return number progress 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_AnimaDiversion.GetReinforceProgress()
end

---Names the texture kit applied to the AnimaDiversionFrame.
---@return string textureKit ? - Name of a texture kit if the player has interacted with an Anima Conductor at least once since logging on; otherwise, returns nil.
---@since Patch 9.0.1 (2020-10-13): Added.
function C_AnimaDiversion.GetTextureKit()
end

---Attempts to open the AnimaDiversionFrame.
---@since Patch 9.0.1 (2020-10-13): Added.
function C_AnimaDiversion.OpenAnimaDiversionUI()
end

---
---@param talentID number 
---@param temporary boolean 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_AnimaDiversion.SelectAnimaNode(talentID, temporary)
end
