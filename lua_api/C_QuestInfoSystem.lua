-- C_QuestInfoSystem API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_QuestInfoSystem
C_QuestInfoSystem = {}

---
---@param questID number ?
---@return Enum.QuestClassification classification 
function C_QuestInfoSystem.GetQuestClassification(questID)
end

---
---@param questID number ?
---@return QuestRewardCurrencyInfo questRewardCurrencyInfo []
function C_QuestInfoSystem.GetQuestRewardCurrencies(questID)
end

---
---@param questID number ?
---@param spellID number - Spell Ids from C_QuestInfoSystem.GetQuestRewardSpells
---@return QuestRewardSpellInfo info ?
function C_QuestInfoSystem.GetQuestRewardSpellInfo(questID, spellID)
end

---
---@param questID number ?
---@return number spellIDs []
function C_QuestInfoSystem.GetQuestRewardSpells(questID)
end

---
---@param questID number ?
---@return boolean shouldToast 
function C_QuestInfoSystem.GetQuestShouldToastCompletion(questID)
end

---
---@param questID number ?
---@return boolean hasQuestRewardCurrencies 
function C_QuestInfoSystem.HasQuestRewardCurrencies(questID)
end

---
---@param questID number ?
---@return boolean hasRewardSpells 
function C_QuestInfoSystem.HasQuestRewardSpells(questID)
end
