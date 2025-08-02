-- C_Garrison API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Garrison
C_Garrison = {}

---
---@param missionID number 
---@param followerID string 
---@param boardIndex number ?
---@return boolean followerAdded 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Garrison.AddFollowerToMission(missionID, followerID, boardIndex)
end

---
---@return AutoCombatDamageClassString damageClassStrings []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Garrison.GetAutoCombatDamageClassValues()
end

---
---@param missionID number 
---@return AutoMissionTargetingInfo targetInfo []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Garrison.GetAutoMissionBoardState(missionID)
end

---
---@param missionID number 
---@return AutoMissionEnvironmentEffect autoMissionEnvEffect ?
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Garrison.GetAutoMissionEnvironmentEffect(missionID)
end

---
---@param missionID number 
---@param followerID string 
---@param casterBoardIndex number 
---@return AutoMissionTargetingInfo targetInfo []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Garrison.GetAutoMissionTargetingInfo(missionID, followerID, casterBoardIndex)
end

---
---@param missionID number 
---@param autoCombatSpellID number 
---@param casterBoardIndex number 
---@return AutoMissionTargetingInfo targetInfo []
---@since Patch 9.1.0 (2021-06-29): Added.
function C_Garrison.GetAutoMissionTargetingInfoForSpell(missionID, autoCombatSpellID, casterBoardIndex)
end

---
---@param followerType number 
---@return AutoCombatTroopInfo autoTroopInfo []
---@since Patch 9.1.0 (2021-06-29): Removed autoCombatSpells field.
function C_Garrison.GetAutoTroops(followerType)
end

---Returns a list of available follower missions.
---@param missionList MissionInfo []? - (Not sure what the purpose is, maybe some filtering)
---@param garrFollowerTypeID Enum.GarrisonFollowerType 
---@return MissionInfo info []
function C_Garrison.GetAvailableMissions(missionList, garrFollowerTypeID)
end

---Returns a table containing information on the requested mission.
---@param missionID number 
---@return MissionInfo info 
---@since Patch 6.0.2 (2014-10-14): Added.
function C_Garrison.GetBasicMissionInfo(missionID)
end

---Returns garrison building info.
---@param buildingID number GarrBuilding
---@return number 1. id 
---@return string 2. name 
---@return string 3. textureKit 
---@return number 4. icon : fileID
---@return string 5. description 
---@return number 6. rank 
---@return number 7. currencyID 
---@return number 8. currencyQty 
---@return number 9. goldQty 
---@return string 10. buildTime 
---@return boolean 11. needsPlan 
---@return boolean 12. isPrebuilt 
---@return table 13. possSpecs 
---@return number 14. upgrades []
---@return boolean 15. canUpgrade 
---@return boolean 16. isMaxLevel 
---@return boolean 17. hasFollowerSlot 
---@since Patch 6.0.2 (2014-10-14): Added.
function C_Garrison.GetBuildingInfo(buildingID)
end

---
---@param autoCombatSpellID number 
---@return AutoCombatSpellInfo spellInfo ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Garrison.GetCombatLogSpellInfo(autoCombatSpellID)
end

---
---@return number equipmentLevel 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_Garrison.GetCurrentCypherEquipmentLevel()
end

---
---@return number currentGarrTalentTreeFriendshipFactionID ?
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Garrison.GetCurrentGarrTalentTreeFriendshipFactionID()
end

---
---@return number currentGarrTalentTreeID ?
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Garrison.GetCurrentGarrTalentTreeID()
end

---
---@return number cyphersToNext ?
---@since Patch 9.2.0 (2022-02-22): Added.
function C_Garrison.GetCyphersToNextEquipmentLevel()
end

---Returns the abilities of a garrison follower.
---@param followerID number |string : FollowerID or FollowerGUID
---@return AbilityInfo abilities [] - A table containing information about abilities of a single follower.
---@return AbilityInfo extraAbilities []? - If a FollowerGUID is used, another table of abilities. This seems to be only relevant for BFA followers.
---@since Patch 6.0.2 (2014-10-14): Added.
function C_Garrison.GetFollowerAbilities(followerID)
end

---Returns an ability for the follower.
---@param followerID string FollowerGUID
---@param index number - Usually between 1 and 4
---@return number abilityID 
---@since Patch 6.0.2 (2014-10-14): Added.
function C_Garrison.GetFollowerAbilityAtIndex(followerID, index)
end

---
---@param garrFollowerID string 
---@param followerLevel number 
---@return AutoCombatSpellInfo autoCombatSpells []
---@return AutoCombatSpellInfo autoCombatAutoAttack ?
---@since Patch 9.1.0 (2021-06-29): Added autoCombatAutoAttack return.
function C_Garrison.GetFollowerAutoCombatSpells(garrFollowerID, followerLevel)
end

---
---@param garrFollowerID string 
---@return FollowerAutoCombatStatsInfo autoCombatInfo ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Garrison.GetFollowerAutoCombatStats(garrFollowerID)
end

---Returns information about a follower.
---@param followerID number |string - a FollowerID e.g. 856
or a FollowerGUID e.g. "0x0000000004CBDB61". Only works for the followers belonging to a character while on that character.
---@return GarrFollowerInfo info - Certain information is only returned when using a GUID from an existing follower.
---@since Patch 6.0.2 (2014-10-14): Added.
function C_Garrison.GetFollowerInfo(followerID)
end

---Return information about a follower weapon and armor.
---@param followerID string FollowerGUID
---@return number weaponItemID - ItemID for displayed item texture
---@return number weaponItemLevel - Current weapon item level
---@return number armorItemID - ItemID for displayed item texture
---@return number armorItemLevel - Current armor item level
---@since Patch 6.0.2 (2014-10-14): Added.
function C_Garrison.GetFollowerItems(followerID)
end

---
---@param followerID string FollowerGUID
---@return FollowerMissionCompleteInfo followerMissionCompleteInfo 
---@since Patch 9.0.1 (2020-10-13): Returns structured data.
function C_Garrison.GetFollowerMissionCompleteInfo(followerID)
end

---Returns a list of garrison tech followers.
---@param followerType Enum.GarrisonFollowerType ?
---@return GarrFollowerInfo info []
---@since Patch 7.0.3 (2016-07-19): Supports Legion Troops/Champions.
function C_Garrison.GetFollowers(followerType)
end

---Returns information for your character's garrison.
---@param garrisonType Enum.GarrisonType 
---@return number garrisonLevel ?
---@return string mapTexture ?
---@return number townHallX ?
---@return number townHallY ?
---@since Patch 7.0.3 (2016-07-19): garrisonType is now required, additional returns added.
function C_Garrison.GetGarrisonInfo(garrisonType)
end

---
---@param uiMapID number 
---@return  garrisonPlotInstances structure - GarrisonPlotInstanceMapInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Garrison.GetGarrisonPlotsInstancesForMap(uiMapID)
end

---
---@param garrTalentTreeID number 
---@return number garrTalentTreeCurrencyType ?
---@since Patch 8.3.0 (2020-01-14): Added.
function C_Garrison.GetGarrisonTalentTreeCurrencyTypes(garrTalentTreeID)
end

---
---@param garrTalentTreeID number 
---@return number garrTalentTreeType 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_Garrison.GetGarrisonTalentTreeType(garrTalentTreeID)
end

---Returns a list of active follower missions.
---@param garrFollowerTypeID Enum.GarrisonFollowerType 
---@return MissionInfo info []
function C_Garrison.GetInProgressMissions(garrFollowerTypeID)
end

---Returns information on Garrison/Class Hall/other shipment in progress.
---@param containerID number - Container ID as returned from C_Garrison.GetFollowerShipments or C_Garrison.GetLooseShipments.
---@return string name - shipment name
---@return number texture - shipment texture
---@return number shipmentCapacity 
---@return number shipmentsReady 
---@return number shipmentsTotal 
---@return number creationTime 
---@return number duration 
---@return string timeleftString 
---@return string itemName - name of item produced by this shipment
---@return number itemTexture : FileID
---@return number unk1 
---@return number itemID - ID of item produced by this shipment
---@return number followerID 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_Garrison.GetLandingPageShipmentInfoByContainerID(containerID)
end

---Returns Garrison shipments in progress.
---@param garrisonType Enum.GarrisonType 
---@return number looseShipments [] - List of shipments. More information is available from C_Garrison.GetLandingPageShipmentInfoByContainerID.
function C_Garrison.GetLooseShipments(garrisonType)
end

---
---@return number maxEquipmentLevel 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_Garrison.GetMaxCypherEquipmentLevel()
end

---
---@param missionID number 
---@return GarrisonEnemyEncounterInfo encounters []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Garrison.GetMissionCompleteEncounters(missionID)
end

---
---@param missionID number 
---@return MissionDeploymentInfo missionDeploymentInfo 
---@since Patch 9.0.1 (2020-10-13): Changed to C_Garrison.GetMissionDeploymentInfo() and returns structured data.
function C_Garrison.GetMissionDeploymentInfo(missionID)
end

---
---@param missionID number 
---@return MissionEncounterIconInfo missionEncounterIconInfo 
---@since Patch 9.1.0 (2021-06-29): Added missionScalar field.
function C_Garrison.GetMissionEncounterIconInfo(missionID)
end

---Returns basic information on garrison buildings.
---@param plotID number 
---@return number 1. id 
---@return string 2. name 
---@return string 3. textureKit 
---@return number 4. icon : FileID
---@return number 5. rank - Rank of the building in this plot, between 1 and 3
---@return boolean 6. isBuilding - Returns true when the building in this plot is still in progress.
---@return number 7. timeStart - Timestamp when the building was placed.
---@return number 8. buildTime - Total duration (in seconds) until the building is completed and can be activated.
---@return boolean 9. canActivate - Returns true when the build has been completed but the building has not yet been activated.
---@return boolean 10. canUpgrade - Returns true when the building has available upgrades. false when already on max level or or plans not known.
---@return boolean 11. isPrebuilt 
---@since Patch 6.0.2 (2014-10-14): Added.
function C_Garrison.GetOwnedBuildingInfoAbbrev(plotID)
end

---
---@param talentID number - GarrTalent.ID
---@return GarrisonTalentInfo info 
---@since Patch 9.2.0 (2022-02-22): Added ignoreTalent, treeID fields.
function C_Garrison.GetTalentInfo(talentID)
end

---
---@param garrTalentTreeID number 
---@return number talentPoints 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_Garrison.GetTalentPointsSpentInTalentTree(garrTalentTreeID)
end

---
---@param garrType number 
---@param classID number 
---@return number treeIDs []
---@since Patch 7.2.5 (2017-06-13): Added.
function C_Garrison.GetTalentTreeIDsByClassID(garrType, classID)
end

---
---@param treeID number 
---@return GarrisonTalentTreeInfo info 
function C_Garrison.GetTalentTreeInfo(treeID)
end

---
---@param garrTalentTreeID number 
---@return number goldCost 
---@return GarrisonTalentCurrencyCostInfo currencyCosts []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Garrison.GetTalentTreeResetInfo(garrTalentTreeID)
end

---
---@param garrTalentID number 
---@param researchRank number 
---@param garrTalentTreeID number 
---@param talentPointIndex number 
---@param isRespec boolean 
---@return number goldCost 
---@return GarrisonTalentCurrencyCostInfo currencyCosts []
---@since Patch 9.2.0 (2022-02-22): Added garrTalentID, researchRank arguments.
function C_Garrison.GetTalentTreeTalentPointResearchInfo(garrTalentID, researchRank, garrTalentTreeID, talentPointIndex, isRespec)
end

---
---@param talentID number 
---@return number worldQuestID 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Garrison.GetTalentUnlockWorldQuest(talentID)
end

---
---@return boolean hasAdventures 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Garrison.HasAdventures()
end

---Returns true if you have a shipyard.
---@return boolean hasShipyard 
function C_Garrison.HasShipyard()
end

---
---@return boolean atGarrisonMissionNPC 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Garrison.IsAtGarrisonMissionNPC()
end

---
---@param missionID number 
---@return boolean environmentCountered 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_Garrison.IsEnvironmentCountered(missionID)
end

---
---@param followerID string 
---@return boolean followerOnCompletedMission 
---@since Patch 9.0.5 (2021-03-09): Added.
function C_Garrison.IsFollowerOnCompletedMission(followerID)
end

---
---@param garrType number 
---@return boolean isLandingPageMinimapButtonVisible 
function C_Garrison.IsLandingPageMinimapButtonVisible(garrType)
end

---
---@param talentID number 
---@return boolean isMet 
---@return string failureString ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Garrison.IsTalentConditionMet(talentID)
end

---Returns whether your are viewing your party leader's Garrison.
---@return boolean usingPartyGarrison true - Currently viewing your party leader's Garrison
false - Currently viewing your own Garrison.
function C_Garrison.IsUsingPartyGarrison()
end

---Acknowledges mission completion.
---@param missionID number 
---@since Patch 6.0.2 (2014-10-14): Added.
function C_Garrison.MarkMissionComplete(missionID)
end

---Receives mission loot.
---@param missionID number 
function C_Garrison.MissionBonusRoll(missionID)
end

---
---@param missionID number 
---@return boolean success 
---@since Patch 9.0.5 (2021-03-09): Added success return.
function C_Garrison.RegenerateCombatLog(missionID)
end

---
---@param missionID number 
---@param followerID string 
---@param boardIndex number ?
---@since Patch 6.0.2 (2014-10-14): Added.
function C_Garrison.RemoveFollowerFromMission(missionID, followerID, boardIndex)
end

---
---@param followerType number 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Garrison.RushHealAllFollowers(followerType)
end

---
---@param garrFollowerID string 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Garrison.RushHealFollower(garrFollowerID)
end

---
---@param state boolean 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_Garrison.SetAutoCombatSpellFastForward(state)
end

---Switches between viewing your party leader's Garrison or your own.
---@param enabled boolean - View your party leader's Garrison if true, false to view your own.
function C_Garrison.SetUsingPartyGarrison(enabled)
end

---
---@param missionID number 
---@since Patch 6.0.2 (2014-10-14): Added.
function C_Garrison.StartMission(missionID)
end
