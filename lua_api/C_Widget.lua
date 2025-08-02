-- C_Widget API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Widget
C_Widget = {}

---Returns true if the object is a Frame widget object or its derivatives.
---@param object Object ? - This will return false if omitted.
---@return boolean isFrameWidget - Returns true for Frame objects and its derivatives.
function C_Widget.IsFrameWidget(object)
end

---Returns true if the object is a widget object.
---@param object Object ? - This will return false if omitted.
---@return boolean isWidget - Returns true for Frame, Texture and FontString objects.
function C_Widget.IsWidget(object)
end
