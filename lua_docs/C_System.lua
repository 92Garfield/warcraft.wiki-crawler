--[=[
-- C_System API Documentation
-- Generated from warcraft.wiki.gg
-- Generated on: 2025-08-02 23:23:19
-- Functions: 1
--]=]

--- @class C_System
--- C_System namespace contains 1 functions
local C_System = {}

--[=[
-- C_System Functions:
-- - C_System.GetFrameStack
--]=]

---======================================================================
--- C_System.GetFrameStack
---======================================================================
--- Returns an array of all UI objects under the mouse cursor, as would be exposed through the frame stack tooltip. The returned table is ordered from highest object level to lowest.
---
--- Returns:
--- @return ScriptRegion objects []
---
--- @since Patch 9.0.1 (2020-10-13): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_System.GetFrameStack
---
--- Usage: objects = C_System.GetFrameStack()
---
-- function C_System.GetFrameStack()
-- end
