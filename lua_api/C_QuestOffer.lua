-- C_QuestOffer API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_QuestOffer
C_QuestOffer = {}

---
---@return boolean hideRequiredItems 
function C_QuestOffer.GetHideRequiredItems()
end

---
---@return QuestRewardReputationInfo reputationRewards []
function C_QuestOffer.GetQuestOfferMajorFactionReputationRewards()
end

---
---@param questRewardIndex number 
---@return QuestRequiredCurrencyInfo questRequiredCurrencyInfo ?
function C_QuestOffer.GetQuestRequiredCurrencyInfo(questRewardIndex)
end

---
---@param questInfoType string 
---@param questRewardIndex number 
---@return QuestRewardCurrencyInfo questRewardCurrencyInfo ?
function C_QuestOffer.GetQuestRewardCurrencyInfo(questInfoType, questRewardIndex)
end
