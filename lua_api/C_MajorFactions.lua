-- C_MajorFactions API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_MajorFactions
C_MajorFactions = {}

---
---@param majorFactionID number 
---@return number level 
function C_MajorFactions.GetCurrentRenownLevel(majorFactionID)
end

---
---@param majorFactionID number 
---@return MajorFactionData data ?
function C_MajorFactions.GetMajorFactionData(majorFactionID)
end

---
---@param expansionID number ?
---@return number majorFactionIDs []
function C_MajorFactions.GetMajorFactionIDs(expansionID)
end

---
---@param majorFactionID number 
---@return MajorFactionRenownInfo data ?
function C_MajorFactions.GetMajorFactionRenownInfo(majorFactionID)
end

---
---@param majorFactionID number 
---@return MajorFactionRenownLevelInfo levels []
function C_MajorFactions.GetRenownLevels(majorFactionID)
end

---
---@return number renownNPCFactionID 
function C_MajorFactions.GetRenownNPCFactionID()
end

---
---@param majorFactionID number 
---@param renownLevel number 
---@return MajorFactionRenownRewardInfo rewards []
function C_MajorFactions.GetRenownRewardsForLevel(majorFactionID, renownLevel)
end

---
---@param majorFactionID number 
---@return boolean hasMaxRenown 
function C_MajorFactions.HasMaximumRenown(majorFactionID)
end

---
---@param majorFactionID number 
---@return boolean isHidden 
function C_MajorFactions.IsMajorFactionHiddenFromExpansionPage(majorFactionID)
end

---
---@param majorFactionID number 
---@return boolean isWeeklyCapped 
function C_MajorFactions.IsWeeklyRenownCapped(majorFactionID)
end
