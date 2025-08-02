-- C_Glue API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Glue
C_Glue = {}

---
---@return boolean IsFirstLoadThisSession 
function C_Glue.IsFirstLoadThisSession()
end

---Returns whether the game is currently showing a GlueXML screen (i.e. no character is logged in).
---@return boolean isOnGlueScreen - false if a character is logged in; true otherwise.
---@since Patch 11.0.5 (2024-10-22): Added.
function C_Glue.IsOnGlueScreen()
end
