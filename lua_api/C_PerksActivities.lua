-- C_PerksActivities API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_PerksActivities
C_PerksActivities = {}

---
---@param perksActivityID number 
function C_PerksActivities.AddTrackedPerksActivity(perksActivityID)
end

---
function C_PerksActivities.ClearPerksActivitiesPendingCompletion()
end

---
---@return PerksActivityTags tags 
function C_PerksActivities.GetAllPerksActivityTags()
end

---
---@return PerksActivitiesInfo info 
function C_PerksActivities.GetPerksActivitiesInfo()
end

---
---@return PerksActivitiesPending pending 
function C_PerksActivities.GetPerksActivitiesPendingCompletion()
end

---
---@param perksActivityID number 
---@return string link 
function C_PerksActivities.GetPerksActivityChatLink(perksActivityID)
end

---
---@param perksActivityID number 
---@return PerksActivityInfo info ?
function C_PerksActivities.GetPerksActivityInfo(perksActivityID)
end

---
---@return string kitPrefix 
function C_PerksActivities.GetPerksUIThemePrefix()
end

---
---@return PerksActivitiesTracked trackedPerksActivities 
function C_PerksActivities.GetTrackedPerksActivities()
end

---
---@param perksActivityID number 
function C_PerksActivities.RemoveTrackedPerksActivity(perksActivityID)
end
