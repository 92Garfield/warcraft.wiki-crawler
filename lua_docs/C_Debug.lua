--[=[
-- C_Debug API Documentation
-- Generated from warcraft.wiki.gg
-- Generated on: 2025-08-02 23:23:19
-- Functions: 1
--]=]

--- @class C_Debug
--- C_Debug namespace contains 1 functions
local C_Debug = {}

--[=[
-- C_Debug Functions:
-- - C_Debug.FrameXMLDebug
--]=]

---======================================================================
--- C_Debug.FrameXMLDebug
---======================================================================
--- Queries or sets the FrameXML debug logging flag.
---
--- Arguments:
--- @param newDebugLevel number ? - 0 to disable debug logging, or 1 to enable it. If not specified, the logging flag will not be modified.
---
--- Returns:
--- @return number result - The applied logging flag value.
---
--- @see https://warcraft.wiki.gg/wiki/API_C_Debug.FrameXMLDebug
---
--- Usage: result = C_Debug.FrameXMLDebug([newDebugLevel])
---
-- function C_Debug.FrameXMLDebug()
-- end
