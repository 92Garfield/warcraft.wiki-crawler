-- C_Reputation API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Reputation
C_Reputation = {}

---
---@return boolean areLegacyReputationsShown 
function C_Reputation.AreLegacyReputationsShown()
end

---
function C_Reputation.CollapseAllFactionHeaders()
end

---
---@param factionSortIndex number 
function C_Reputation.CollapseFactionHeader(factionSortIndex)
end

---
function C_Reputation.ExpandAllFactionHeaders()
end

---
---@param factionSortIndex number 
function C_Reputation.ExpandFactionHeader(factionSortIndex)
end

---
---@param factionID number 
---@return FactionData factionData ?
function C_Reputation.GetFactionDataByID(factionID)
end

---
---@param factionSortIndex number 
---@return FactionData factionData ?
function C_Reputation.GetFactionDataByIndex(factionSortIndex)
end

---Returns Paragon info on a faction.
---@param factionID number FactionID
---@return number currentValue - The amount of reputation you have earned in the current level of Paragon.
---@return number threshold - The amount of reputation until you gain the next Paragon level.
---@return number rewardQuestID - The ID of the quest once you attain a new Paragon level (or your first).
---@return boolean hasRewardPending - True if the player has attained a Paragon level but has not completed the reward quest.
---@return boolean tooLowLevelForParagon - True if the player level is too low to complete the Paragon reward quest.
---@since Patch 7.3.5 (2018-01-16): Added tooLowLevelForParagon return.
function C_Reputation.GetFactionParagonInfo(factionID)
end

---
---@return FactionData guildFactionData ?
function C_Reputation.GetGuildFactionData()
end

---
---@return number expirationTime ?
function C_Reputation.GetGuildRepExpirationTime()
end

---
---@return number numFactions 
function C_Reputation.GetNumFactions()
end

---
---@return Enum.ReputationSortType sortType 
function C_Reputation.GetReputationSortType()
end

---
---@return number selectedFactionSortIndex 
function C_Reputation.GetSelectedFaction()
end

---
---@return FactionData watchedFactionData ?
function C_Reputation.GetWatchedFactionData()
end

---
---@param factionID number 
---@return boolean isAccountWide 
function C_Reputation.IsAccountWideReputation(factionID)
end

---
---@param factionSortIndex number 
---@return boolean isActive 
function C_Reputation.IsFactionActive(factionSortIndex)
end

---Returns true if a faction is a paragon reputation.
---@param factionID number - The factionID from the 14th return of GetFactionInfo or the 6th return from GetWatchedFactionInfo.
---@return boolean isParagon - true if the faction is Paragon level, false otherwise.
---@since Patch 7.2.0 (2017-03-28): Added.
function C_Reputation.IsFactionParagon(factionID)
end

---
---@param factionID number 
---@return boolean isMajorFaction 
function C_Reputation.IsMajorFaction(factionID)
end

---
---@param factionID number 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_Reputation.RequestFactionParagonPreloadRewardData(factionID)
end

---
---@param factionSortIndex number 
---@param setActive boolean 
function C_Reputation.SetFactionActive(factionSortIndex, setActive)
end

---
---@param showLegacyReputations boolean 
function C_Reputation.SetLegacyReputationsShown(showLegacyReputations)
end

---
---@param sortType Enum.ReputationSortType 
function C_Reputation.SetReputationSortType(sortType)
end

---
---@param factionSortIndex number 
function C_Reputation.SetSelectedFaction(factionSortIndex)
end

---
---@param factionID number 
function C_Reputation.SetWatchedFactionByID(factionID)
end

---
---@param factionSortIndex number 
function C_Reputation.SetWatchedFactionByIndex(factionSortIndex)
end

---
---@param factionSortIndex number 
function C_Reputation.ToggleFactionAtWar(factionSortIndex)
end
