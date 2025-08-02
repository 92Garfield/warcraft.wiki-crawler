-- C_UI API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_UI
C_UI = {}

---True if any display attached has a notch. This does not mean the current view intersects the notch.
---@return boolean notchPresent 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_UI.DoesAnyDisplayHaveNotch()
end

---Region of screen left of screen notch. Zeros if no notch.
---@return number left 
---@return number right 
---@return number top 
---@return number bottom 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_UI.GetTopLeftNotchSafeRegion()
end

---Region of screen right of screen notch. Zeros if no notch.
---@return number left 
---@return number right 
---@return number top 
---@return number bottom 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_UI.GetTopRightNotchSafeRegion()
end

---
---@return Frame🔗 uiParent 
function C_UI.GetUIParent()
end

---
---@return Frame🔗 worldFrame 
function C_UI.GetWorldFrame()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 7.2.5 (2017-06-13): Moved to C_UI.Reload. The previous alias is still available as a script wrapper. [1]
function C_UI.Reload()
end

---UIParent will shift down to avoid notch if true. This does not mean there is a notch.
---@return boolean willAvoidNotch 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_UI.ShouldUIParentAvoidNotch()
end
