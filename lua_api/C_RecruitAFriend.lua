-- C_RecruitAFriend API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_RecruitAFriend
C_RecruitAFriend = {}

---
---@param guid string WOWGUID
---@return boolean result 
function C_RecruitAFriend.CanSummonFriend(guid)
end

---
---@param activityID number 
---@param acceptanceID string 
---@return boolean success 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_RecruitAFriend.ClaimActivityReward(activityID, acceptanceID)
end

---
---@param rafVersion Enum.RecruitAFriendRewardsVersion ?
---@return boolean success 
---@since Patch 10.0.7 (2023-03-21): Added rafVersion argument.
function C_RecruitAFriend.ClaimNextReward(rafVersion)
end

---
---@return boolean success 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_RecruitAFriend.GenerateRecruitmentLink()
end

---
---@return RafInfo info 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_RecruitAFriend.GetRAFInfo()
end

---
---@return  systemInfo structure - RafSystemInfo
---@since Patch 8.2.5 (2019-09-24): Added.
function C_RecruitAFriend.GetRAFSystemInfo()
end

---
---@param activityID number 
---@param acceptanceID string 
---@return string requirementsText []
---@since Patch 8.2.5 (2019-09-24): Added.
function C_RecruitAFriend.GetRecruitActivityRequirementsText(activityID, acceptanceID)
end

---
---@return boolean active 
---@return number faction 
---@since Patch 5.4.1 (2013-10-29): Added.
function C_RecruitAFriend.GetRecruitInfo()
end

---
---@return number startTimeSeconds 
---@return number durationSeconds 
---@return boolean enableCooldownTimer 
function C_RecruitAFriend.GetSummonFriendCooldown()
end

---
---@return boolean enabled 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_RecruitAFriend.IsEnabled()
end

---
---@param guid string WOWGUID
---@return boolean result 
function C_RecruitAFriend.IsRecruitAFriendLinked(guid)
end

---
---@return boolean enabled 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_RecruitAFriend.IsRecruitingEnabled()
end

---
---@param wowAccountGUID string 
---@return boolean success 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_RecruitAFriend.RemoveRAFRecruit(wowAccountGUID)
end

---
---@return boolean success 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_RecruitAFriend.RequestUpdatedRecruitmentInfo()
end

---
---@param target string WOWGUID
---@param name string 
function C_RecruitAFriend.SummonFriend(target, name)
end
