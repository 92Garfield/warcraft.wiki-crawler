--[=[
-- C_ChatBubbles API Documentation
-- Generated from warcraft.wiki.gg
-- Generated on: 2025-08-02 23:23:19
-- Functions: 1
--]=]

--- @class C_ChatBubbles
--- C_ChatBubbles namespace contains 1 functions
local C_ChatBubbles = {}

--[=[
-- C_ChatBubbles Functions:
-- - C_ChatBubbles.GetAllChatBubbles
--]=]

---======================================================================
--- C_ChatBubbles.GetAllChatBubbles
---======================================================================
--- Returns all active chat bubbles.
---
--- Arguments:
--- @param includeForbidden boolean ? = false
---
--- Returns:
--- @return Widget_API chatBubbles
---
--- @since Patch 7.2.5 (2017-06-13): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_ChatBubbles.GetAllChatBubbles
---
--- Usage: chatBubbles = C_ChatBubbles.GetAllChatBubbles([includeForbidden])
---
-- function C_ChatBubbles.GetAllChatBubbles()
-- end
