-- C_ToyBoxInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ToyBoxInfo
C_ToyBoxInfo = {}

---Clears a fanfare for a toy.
---@param itemID number 
---@since Patch 8.1.5 (2019-03-12): Added.
function C_ToyBoxInfo.ClearFanfare(itemID)
end

---
---@param source number 
---@return boolean isToySourceValid 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_ToyBoxInfo.IsToySourceValid(source)
end

---
---@return boolean isUsingDefaultFilters 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_ToyBoxInfo.IsUsingDefaultFilters()
end

---Returns whether a toy needs a fanfare.
---@param itemID number 
---@return boolean needsFanfare 
---@since Patch 8.1.5 (2019-03-12): Added.
function C_ToyBoxInfo.NeedsFanfare(itemID)
end

---
---@since Patch 9.2.5 (2022-05-31): Added.
function C_ToyBoxInfo.SetDefaultFilters()
end
