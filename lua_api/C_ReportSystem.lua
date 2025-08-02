-- C_ReportSystem API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ReportSystem
C_ReportSystem = {}

---Returns if a player can be reported.
---@param playerLocation PlayerLocationMixin 🔗
---@return boolean canReport 
---@since Patch 8.1.5 (2019-03-12): Replaces C_ChatInfo.CanReportPlayer() which is deprecated[1]
function C_ReportSystem.CanReportPlayer(playerLocation)
end

---
---@param playerLocation PlayerLocationMixin 🔗
---@return boolean canReport 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ReportSystem.CanReportPlayerForLanguage(playerLocation)
end

---
---@param reportType Enum.ReportType 
---@return Enum.ReportMajorCategory majorCategories []
---@since Patch 9.2.5 (2022-05-31): Added.
function C_ReportSystem.GetMajorCategoriesForReportType(reportType)
end

---
---@param majorCategory Enum.ReportMajorCategory 
---@return string majorCategoryString 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_ReportSystem.GetMajorCategoryString(majorCategory)
end

---
---@param reportType Enum.ReportType 
---@return Enum.ReportMinorCategory minorCategories []
---@since Patch 9.2.5 (2022-05-31): Added.
function C_ReportSystem.GetMinorCategoriesForReportTypeAndMajorCategory(reportType)
end

---
---@param minorCategory Enum.ReportMinorCategory 
---@return string minorCategoryString 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_ReportSystem.GetMinorCategoryString(minorCategory)
end

---
---@since Patch 8.1.0 (2018-12-11): Moved to C_ReportSystem.ReportServerLag()
function C_ReportSystem.ReportServerLag()
end

---
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ReportSystem.ReportStuckInCombat()
end

---#protected - This can only be called from secure code.
---@param reportInfo  ReportInfoMixin
---@param playerLocation PlayerLocationMixin ?🔗
---@since Patch 9.2.5 (2022-05-31): Added. Replaces C_ReportSystem.SendReportPlayer()
function C_ReportSystem.SendReport(reportInfo, playerLocation)
end
