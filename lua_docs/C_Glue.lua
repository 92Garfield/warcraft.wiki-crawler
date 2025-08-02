--[=[
-- C_Glue API Documentation
-- Generated from warcraft.wiki.gg
-- Generated on: 2025-08-02 23:23:19
-- Functions: 2
--]=]

--- @class C_Glue
--- C_Glue namespace contains 2 functions
local C_Glue = {}

--[=[
-- C_Glue Functions:
-- - C_Glue.IsFirstLoadThisSession
-- - C_Glue.IsOnGlueScreen
--]=]

---======================================================================
--- C_Glue.IsFirstLoadThisSession
---======================================================================
--- Returns:
--- @return boolean IsFirstLoadThisSession
---
--- @see https://warcraft.wiki.gg/wiki/API_C_Glue.IsFirstLoadThisSession
---
--- Usage: IsFirstLoadThisSession = C_Glue.IsFirstLoadThisSession()
---
-- function C_Glue.IsFirstLoadThisSession()
-- end

---======================================================================
--- C_Glue.IsOnGlueScreen
---======================================================================
--- Returns whether the game is currently showing a GlueXML screen (i.e. no character is logged in).
---
--- Returns:
--- @return boolean isOnGlueScreen - false if a character is logged in; true otherwise.
---
--- @since Patch 11.0.5 (2024-10-22): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_Glue.IsOnGlueScreen
---
--- Usage: isOnGlueScreen = C_Glue.IsOnGlueScreen()
---
-- function C_Glue.IsOnGlueScreen()
-- end
