--[=[
-- C_Cursor API Documentation
-- Generated from warcraft.wiki.gg
-- Generated on: 2025-08-02 23:23:19
-- Functions: 1
--]=]

--- @class C_Cursor
--- C_Cursor namespace contains 1 functions
local C_Cursor = {}

--[=[
-- C_Cursor Functions:
-- - C_Cursor.GetCursorItem
--]=]

---======================================================================
--- C_Cursor.GetCursorItem
---======================================================================
--- Returns the item currently dragged by the player.
---
--- Returns:
--- @return ItemLocationMixin item 🔗 - The item currently dragged by the player, or nil if not dragging an item.
---
--- @since Patch 8.0.1 (2018-07-17): Added.[1]
--- @see https://warcraft.wiki.gg/wiki/API_C_Cursor.GetCursorItem
---
--- Usage: item = C_Cursor.GetCursorItem()
---
-- function C_Cursor.GetCursorItem()
-- end
