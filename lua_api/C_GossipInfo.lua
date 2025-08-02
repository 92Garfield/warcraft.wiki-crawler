-- C_GossipInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_GossipInfo
C_GossipInfo = {}

---Closes the gossip window.
---@since Patch 9.0.1 (2020-10-13): Moved to C_GossipInfo.CloseGossip()
function C_GossipInfo.CloseGossip()
end

---Returns true if gossip text must be displayed. For example making this return true shows the Banker gossip.
---@return boolean forceGossip 
---@since Patch 9.0.1 (2020-10-13): Moved to C_GossipInfo.ForceGossip()
function C_GossipInfo.ForceGossip()
end

---
---@return GossipOptionUIInfo gossip 
function C_GossipInfo.GetActiveDelveGossip()
end

---Returns the quests which can be turned in at a quest giver.
---@return GossipQuestUIInfo info []
---@since Patch 9.0.1 (2020-10-13): Changed to C_GossipInfo.GetActiveQuests() and returns structured data.
function C_GossipInfo.GetActiveQuests()
end

---Returns the available quests at a quest giver.
---@return GossipQuestUIInfo info []
---@since Patch 9.0.1 (2020-10-13): Moved to C_GossipInfo.GetAvailableQuests()
function C_GossipInfo.GetAvailableQuests()
end

---
---@return string description ?
---@since Patch 9.2.0 (2022-02-22): Added.
function C_GossipInfo.GetCompletedOptionDescriptionString()
end

---
---@return string description ?
---@since Patch 9.0.5 (2021-03-09): Added.
function C_GossipInfo.GetCustomGossipDescriptionString()
end

---
---@param friendshipFactionID number 
---@return FriendshipReputationInfo reputationInfo 
function C_GossipInfo.GetFriendshipReputation(friendshipFactionID)
end

---
---@param friendshipFactionID number 
---@return FriendshipReputationRankInfo rankInfo 
function C_GossipInfo.GetFriendshipReputationRanks(friendshipFactionID)
end

---
---@return number mapID 
function C_GossipInfo.GetGossipDelveMapID()
end

---Returns the number of active quests that you should eventually turn in to this NPC.
---@return number numQuests 
---@since Patch 9.0.1 (2020-10-13): Moved to C_GossipInfo.GetNumActiveQuests()
function C_GossipInfo.GetNumActiveQuests()
end

---Returns the number of quests (that you are not already on) offered by this NPC.
---@return number numQuests 
---@since Patch 9.0.1 (2020-10-13): Moved to C_GossipInfo.GetNumAvailableQuests()
function C_GossipInfo.GetNumAvailableQuests()
end

---
---@param gossipOptionID number 
---@return GossipOptionUIWidgetSetAndType gossipOptionUIWidgetSetsAndTypes []?
function C_GossipInfo.GetOptionUIWidgetSetsAndTypesByOptionID(gossipOptionID)
end

---Returns the available gossip options at a quest giver.
---@return GossipOptionUIInfo info []
---@since Patch 10.0.7 (2023-03-21): Changed the gossipOptionID field to be nilable.
function C_GossipInfo.GetOptions()
end

---Returns any gossip point of interest on the map.
---@param uiMapID number UiMapID
---@return number gossipPoiID ?
---@since Patch 9.0.1 (2020-10-13): Changed to C_GossipInfo.GetPoiForUiMapID()
function C_GossipInfo.GetPoiForUiMapID(uiMapID)
end

---Returns info for a gossip point of interest (e.g. the red flags when asking city guards for directions).
---@param uiMapID number UiMapID
---@param gossipPoiID number 
---@return GossipPoiInfo gossipPoiInfo ?
---@since Patch 9.0.1 (2020-10-13): Moved to C_GossipInfo.GetPoiInfo()
function C_GossipInfo.GetPoiInfo(uiMapID, gossipPoiID)
end

---Returns the gossip text.
---@return string gossipText 
---@since Patch 9.0.1 (2020-10-13): Moved to C_GossipInfo.GetText()
function C_GossipInfo.GetText()
end

---
---@since Patch 9.0.2 (2020-11-17): Added.
function C_GossipInfo.RefreshOptions()
end

---Selects an active quest from the gossip window.
---@param optionID number - questID from C_GossipInfo.GetActiveQuests
---@since Patch 10.0.0 (2022-10-25): Changed index param to optionID.
function C_GossipInfo.SelectActiveQuest(optionID)
end

---Selects an available quest from the gossip window.
---@param optionID number - questID from C_GossipInfo.GetAvailableQuests
---@since Patch 10.0.0 (2022-10-25): Changed index param to optionID.
function C_GossipInfo.SelectAvailableQuest(optionID)
end

---Selects a gossip (conversation) option.
---@param optionID number - gossipOptionID from C_GossipInfo.GetOptions()
---@param text string ?
---@param confirmed boolean ?
---@since Patch 10.0.0 (2022-10-25): Changed index param to optionID.
function C_GossipInfo.SelectOption(optionID, text, confirmed)
end

---
---@param optionID number - orderIndex from C_GossipInfo.GetOptions()
---@param text string ?
---@param confirmed boolean ?
function C_GossipInfo.SelectOptionByIndex(optionID, text, confirmed)
end
