-- C_Navigation API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Navigation
C_Navigation = {}

---Returns the distance in yards from the players current location to the tracked location.
---@return number distance 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Navigation.GetDistance()
end

---Returns the UI frame positioned in the world for displaying the tracked location, if one has been created.
---@return  frame Unknown?}}
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Navigation.GetFrame()
end

---
---@return string unitToken 
function C_Navigation.GetNearestPartyMemberToken()
end

---Returns state information about the currently tracked location, such as its occlusion status.
---@return Enum.NavigationState state 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Navigation.GetTargetState()
end

---Returns true if the currently tracked location can be represented by any screen position. This can presumably return false a tracked location weren't valid for the current map, or if the player is possibly too close to a tracked location.
---@return boolean hasValidScreenPosition 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Navigation.HasValidScreenPosition()
end

---Returns true if the navigation frame position was clamped due to having been located off-screen. This can indicate that the player may not be facing towards the tracked location.
---@return boolean wasClamped 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Navigation.WasClampedToScreen()
end
