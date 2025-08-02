-- C_ColorOverrides API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ColorOverrides
C_ColorOverrides = {}

---
function C_ColorOverrides.ClearColorOverrides()
end

---
---@param quality Enum.ItemQuality 🔗
---@return colorRGBA color 🔗
function C_ColorOverrides.GetColorForQuality(quality)
end

---
---@param overrideType Enum.ColorOverride 
---@return ColorOverrideInfo overrideInfo ?
function C_ColorOverrides.GetColorOverrideInfo(overrideType)
end

---
---@param quality Enum.ItemQuality 🔗
---@return colorRGBA color 🔗
function C_ColorOverrides.GetDefaultColorForQuality(quality)
end

---
---@param overrideType Enum.ColorOverride 
function C_ColorOverrides.RemoveColorOverride(overrideType)
end

---
---@param overrideType Enum.ColorOverride 
function C_ColorOverrides.SetColorOverride(overrideType)
end
