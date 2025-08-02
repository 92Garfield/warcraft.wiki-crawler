--[=[
-- C_EventToastManager API Documentation
-- Generated from warcraft.wiki.gg
-- Generated on: 2025-08-02 23:23:19
-- Functions: 3
--]=]

--- @class C_EventToastManager
--- C_EventToastManager namespace contains 3 functions
local C_EventToastManager = {}

--[=[
-- C_EventToastManager Functions:
-- - C_EventToastManager.GetLevelUpDisplayToastsFromLevel
-- - C_EventToastManager.GetNextToastToDisplay
-- - C_EventToastManager.RemoveCurrentToast
--]=]

---======================================================================
--- C_EventToastManager.GetLevelUpDisplayToastsFromLevel
---======================================================================
--- Arguments:
--- @param level number
---
--- Returns:
--- @return EventToastInfo toastInfo []
---
--- @since Patch 9.1.0 (2021-06-29): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_EventToastManager.GetLevelUpDisplayToastsFromLevel
---
--- Usage: toastInfo = C_EventToastManager.GetLevelUpDisplayToastsFromLevel(level)
---
-- function C_EventToastManager.GetLevelUpDisplayToastsFromLevel()
-- end

---======================================================================
--- C_EventToastManager.GetNextToastToDisplay
---======================================================================
--- Returns:
--- @return EventToastInfo toastInfo
---
--- @since Patch 9.1.0 (2021-06-29): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_EventToastManager.GetNextToastToDisplay
---
--- Usage: toastInfo = C_EventToastManager.GetNextToastToDisplay()
---
-- function C_EventToastManager.GetNextToastToDisplay()
-- end

---======================================================================
--- C_EventToastManager.RemoveCurrentToast
---======================================================================
--- @since Patch 9.1.0 (2021-06-29): Added.
--- @see https://warcraft.wiki.gg/wiki/API_C_EventToastManager.RemoveCurrentToast
---
--- Usage: C_EventToastManager.RemoveCurrentToast()
---
-- function C_EventToastManager.RemoveCurrentToast()
-- end
