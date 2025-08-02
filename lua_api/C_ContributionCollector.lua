-- C_ContributionCollector API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ContributionCollector
C_ContributionCollector = {}

---Closes the contribution collector API state.
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ContributionCollector.Close()
end

---Contributes resources to a building.
---@param contributionID number 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ContributionCollector.Contribute(contributionID)
end

---Returns the currently active buildings.
---@return number contributionID 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ContributionCollector.GetActive()
end

---Returns a table listing the possible states for a building.
---@param contributionID number 
---@return string atlasName []
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ContributionCollector.GetAtlases(contributionID)
end

---Returns the buffs provided by a building (e.g. in a Warfront).
---@param contributionID number 
---@return number spellID - the spellID of the first buff provided. This buff is always provided when the building is active.
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ContributionCollector.GetBuffs(contributionID)
end

---Returns contribution appearance info.
---@param contributionID number 
---@param contributionState  Enum.ContributionState
---@return  appearance ContributionAppearance?Optional, could be nil.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ContributionCollector.GetContributionAppearance(contributionID, contributionState)
end

---Returns contribution buildings on a map.
---@param uiMapID number 
---@return  contributionCollectors structure - ContributionMapInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ContributionCollector.GetContributionCollectorsForMap(uiMapID)
end

---Returns a value indicating the result of a contribution.
---@param contributionID number 
---@return  result Enum.ContributionResult
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ContributionCollector.GetContributionResult(contributionID)
end

---Returns the description of a building.
---@param contributionID number 
---@return string description 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ContributionCollector.GetDescription(contributionID)
end

---Returns contributions for a creature.
---@param creatureID number 
---@return number contributionID (variable returns)
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ContributionCollector.GetManagedContributionsForCreatureID(creatureID)
end

---Returns the name of a building.
---@param contributionID number 
---@return string name 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ContributionCollector.GetName(contributionID)
end

---Returns the order in which buildings are displayed.
---@param contributionID number 
---@return number orderIndex 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ContributionCollector.GetOrderIndex(contributionID)
end

---Returns the currencyID and amount needed to contribute to a building.
---@param contributionID number 
---@return number currencyID 
---@return number currencyAmount 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ContributionCollector.GetRequiredContributionCurrency(contributionID)
end

---Returns the itemID and amount needed to contribute to a building.
---@param contributionID number 
---@return number itemID 
---@return number itemCount 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ContributionCollector.GetRequiredContributionItem(contributionID)
end

---Returns the hidden quest that is flagged completed when a contribution is made.
---@param contributionID number 
---@return number questID 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ContributionCollector.GetRewardQuestID(contributionID)
end

---Returns the current state of a building, its completion percentage, and time until next state change.
---@param contributionID number ContributionID
---@return Enum.ContributionState contributionState ? = None
---@since Patch 8.0.1 (2018-07-17): Added startTime return.
function C_ContributionCollector.GetState(contributionID)
end

---Returns whether there is a pending contribution.
---@param contributionID number 
---@return boolean hasPending 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ContributionCollector.HasPendingContribution(contributionID)
end

---Returns true if the client is waiting for quest reward data.
---@param contributionID number 
---@return boolean awaitingData 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ContributionCollector.IsAwaitingRewardQuestData(contributionID)
end
