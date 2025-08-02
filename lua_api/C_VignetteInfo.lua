-- C_VignetteInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_VignetteInfo
C_VignetteInfo = {}

---
---@param vignetteGUIDs string [] : WOWGUID
---@return number bestUniqueVignetteIndex ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VignetteInfo.FindBestUniqueVignette(vignetteGUIDs)
end

---
---@param vignetteGUID string WOWGUID
---@return number healthPct ?
function C_VignetteInfo.GetHealthPercent(vignetteGUID)
end

---
---@param vignetteGUID string WOWGUID
---@return number minGroupSize 
---@return number maxGroupSize 
function C_VignetteInfo.GetRecommendedGroupSize(vignetteGUID)
end

---Returns vignette info.
---@param vignetteGUID string WOWGUID
---@return VignetteInfo vignetteInfo ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VignetteInfo.GetVignetteInfo(vignetteGUID)
end

---
---@param vignetteGUID string WOWGUID
---@param uiMapID number 
---@return table vignettePosition : vector2
---@return number vignetteFacing ?
---@since Patch 10.1.0 (2023-05-02): Added vignetteFacing return.
function C_VignetteInfo.GetVignettePosition(vignetteGUID, uiMapID)
end

---
---@return string vignetteGUIDs [] : WOWGUID
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VignetteInfo.GetVignettes()
end
