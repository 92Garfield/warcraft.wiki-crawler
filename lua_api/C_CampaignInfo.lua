-- C_CampaignInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_CampaignInfo
C_CampaignInfo = {}

---
---@return number campaignIDs []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CampaignInfo.GetAvailableCampaigns()
end

---
---@param campaignChapterID number 
---@return CampaignChapterInfo campaignChapterInfo ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_CampaignInfo.GetCampaignChapterInfo(campaignChapterID)
end

---
---@param questID number 
---@return number campaignID 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CampaignInfo.GetCampaignID(questID)
end

---
---@param campaignID number 
---@return CampaignInfo campaignInfo ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_CampaignInfo.GetCampaignInfo(campaignID)
end

---
---@param campaignID number 
---@return number chapterIDs []?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CampaignInfo.GetChapterIDs(campaignID)
end

---
---@param campaignID number 
---@return number currentChapterID ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CampaignInfo.GetCurrentChapterID(campaignID)
end

---
---@param campaignID number 
---@return CampaignFailureReason failureReason ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CampaignInfo.GetFailureReason(campaignID)
end

---
---@param campaignID number 
---@return Enum.CampaignState state 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CampaignInfo.GetState(campaignID)
end

---
---@param questID number 
---@return boolean isCampaignQuest 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_CampaignInfo.IsCampaignQuest(questID)
end

---
---@param campaignID number 
---@return boolean sortAsNormalQuest 
function C_CampaignInfo.SortAsNormalQuest(campaignID)
end
