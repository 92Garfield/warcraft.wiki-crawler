-- C_HeirloomInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_HeirloomInfo
C_HeirloomInfo = {}

---
---@return boolean areAllCollectionFiltersChecked 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_HeirloomInfo.AreAllCollectionFiltersChecked()
end

---
---@return boolean areAllSourceFiltersChecked 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_HeirloomInfo.AreAllSourceFiltersChecked()
end

---
---@param source number 
---@return boolean isHeirloomSourceValid 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_HeirloomInfo.IsHeirloomSourceValid(source)
end

---
---@return boolean isUsingDefaultFilters 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_HeirloomInfo.IsUsingDefaultFilters()
end

---
---@param checked boolean 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_HeirloomInfo.SetAllCollectionFilters(checked)
end

---
---@param checked boolean 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_HeirloomInfo.SetAllSourceFilters(checked)
end

---
---@since Patch 9.2.5 (2022-05-31): Added.
function C_HeirloomInfo.SetDefaultFilters()
end
