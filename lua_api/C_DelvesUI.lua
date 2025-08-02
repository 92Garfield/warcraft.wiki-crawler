-- C_DelvesUI API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_DelvesUI
C_DelvesUI = {}

---
---@return number playerCompanionInfoID 
function C_DelvesUI.GetCompanionInfoForActivePlayer()
end

---
---@param companionID number ?
---@return number creatureDisplayInfoID 
function C_DelvesUI.GetCreatureDisplayInfoForCompanion(companionID)
end

---Given the spell ID for an owned curio and its rarity, return a spell link style hyperlink for the curio spell, since they aren't items when learned
---@param spellID number 
---@param rarity Enum.CurioRarity 
---@return string curioLink 
function C_DelvesUI.GetCurioLink(spellID, rarity)
end

---
---@param curioType Enum.CurioType 
---@return number nodeID 
function C_DelvesUI.GetCurioNodeForCompanion(curioType)
end

---
---@param traitCondAccountElementID number 
---@return Enum.CurioRarity rarity 
function C_DelvesUI.GetCurioRarityByTraitCondAccountElementID(traitCondAccountElementID)
end

---
---@return number seasonNumber 
function C_DelvesUI.GetCurrentDelvesSeasonNumber()
end

---
---@return number affixSpellIDs []
function C_DelvesUI.GetDelvesAffixSpellsForSeason()
end

---
---@return number factionID 
function C_DelvesUI.GetDelvesFactionForSeason()
end

---Players must be at or above the min level + offset to enter Delves. This function returns that min level.
---@return number minRequiredLevel ?
function C_DelvesUI.GetDelvesMinRequiredLevel()
end

---
---@param companionID number ?
---@return number factionID 
function C_DelvesUI.GetFactionForCompanion(companionID)
end

---
---@param companionID number ?
---@return number modelSceneID 
function C_DelvesUI.GetModelSceneForCompanion(companionID)
end

---
---@param companionID number ?
---@return number nodeID 
function C_DelvesUI.GetRoleNodeForCompanion(companionID)
end

---
---@param companionID number ?
---@param roleType Enum.CompanionRoleType 
---@return number subTreeID 
function C_DelvesUI.GetRoleSubtreeForCompanion(companionID, roleType)
end

---
---@param companionID number ?
---@return number treeID 
function C_DelvesUI.GetTraitTreeForCompanion(companionID)
end

---
---@param slotType Enum.CompanionConfigSlotTypes 
---@return number unseenCurioNodeIDs []
function C_DelvesUI.GetUnseenCuriosBySlotType(slotType)
end

---
---@param mapID number ?
---@return boolean result 
function C_DelvesUI.HasActiveDelve(mapID)
end

---
---@param unit string UnitToken
---@return boolean result 
function C_DelvesUI.IsEligibleForActiveDelveRewards(unit)
end

---Queries private party members to see what level they have unlocked for the Delve. Ineligible members are added to the tooltip of dropdown entries.
---@param gossipOption number 
function C_DelvesUI.RequestPartyEligibilityForDelveTiers(gossipOption)
end

---
---@param slotType Enum.CompanionConfigSlotTypes 
function C_DelvesUI.SaveSeenCuriosBySlotType(slotType)
end
