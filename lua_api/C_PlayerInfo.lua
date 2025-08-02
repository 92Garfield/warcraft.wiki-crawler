-- C_PlayerInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_PlayerInfo
C_PlayerInfo = {}

---Returns true if the player is eligible to enter a timewalking campaign.
---@return boolean canEnter 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PlayerInfo.CanPlayerEnterChromieTime()
end

---Returns true if the player can use area looting.
---@return boolean canUseAreaLoot 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PlayerInfo.CanPlayerUseAreaLoot()
end

---
---@return boolean canUseEventScheduler 
function C_PlayerInfo.CanPlayerUseEventScheduler()
end

---Returns true if the player can use mount equipment.
---@return boolean canUseMountEquipment 
---@return string failureReason 
---@since Patch 9.0.1 (2020-10-13): Moved to C_PlayerInfo.CanPlayerUseMountEquipment()
function C_PlayerInfo.CanPlayerUseMountEquipment()
end

---
---@param itemID number 
---@return boolean isUseable 
function C_PlayerInfo.CanUseItem(itemID)
end

---Returns true if the GUID belongs to a player.
---@param guid string - The GUID to be checked.
---@return boolean isPlayer - True if the GUID represents a player unit, or false if not.
---@since Patch 8.1.0 (2018-12-11): Added.
function C_PlayerInfo.GUIDIsPlayer(guid)
end

---Returns if the player has an alternate form and if they are currently in that form.
---@return boolean hasAlternateForm 
---@return boolean inAlternateForm - Whether the player is in their alternate form (such as in human form for worgen).
---@since Patch 9.1.0 (2021-06-29): Added.
function C_PlayerInfo.GetAlternateFormInfo()
end

---Returns the class of a player.
---@param playerLocation PlayerLocationMixin 🔗
---@return string className ?
---@return string classFilename ?
---@return number classID ? : ClassId
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PlayerInfo.GetClass(playerLocation)
end

---Returns info indicating how much difficulty the player may have if fighting a given unit.
---@param unitToken string UnitId
---@return Enum.RelativeContentDifficulty difficulty 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PlayerInfo.GetContentDifficultyCreatureForPlayer(unitToken)
end

---Returns info indicating how much difficulty the player may have when performing a given quest.
---@param questID number 
---@return Enum.RelativeContentDifficulty difficulty 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PlayerInfo.GetContentDifficultyQuestForPlayer(questID)
end

---
---@return number displayID 
function C_PlayerInfo.GetDisplayID()
end

---Returns the Dragonriding gliding speed.
---@return boolean isGliding - True when the player is currently gliding.
---@return boolean canGlide - True when the player is in a Dragonriding zone and on an applicable mount.
---@return number forwardSpeed - The gliding speed, this is 65 for max dive speed and can go up to 100 when using abilities.
function C_PlayerInfo.GetGlidingInfo()
end

---
---@param level number 
---@param isRaid boolean 
---@return number dungeonID []
---@since Patch 9.1.0 (2021-06-29): Added.
function C_PlayerInfo.GetInstancesUnlockedAtLevel(level, isRaid)
end

---Returns the name of a player.
---@param playerLocation PlayerLocationMixin 🔗
---@return string name ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PlayerInfo.GetName(playerLocation)
end

---
---@return number nativeDisplayID 
function C_PlayerInfo.GetNativeDisplayID()
end

---
---@param index number 
---@return number creatureDisplayInfoID 
function C_PlayerInfo.GetPetStableCreatureDisplayInfoID(index)
end

---
---@return PlayerInfoCharacterData characterData 
function C_PlayerInfo.GetPlayerCharacterData()
end

---Returns the players mythic+ rating summary which includes the runs they've completed as well as their current season m+ rating
---@param playerToken string UnitId - The unit does not need to be in your group.
---@return MythicPlusRatingSummary ratingSummary - The current season rating and well as a list of completed mythic plus runs.
---@since Patch 9.1.0 (2021-06-29): Added.
function C_PlayerInfo.GetPlayerMythicPlusRatingSummary(playerToken)
end

---Returns the race of a player.
---@param playerLocation PlayerLocationMixin 🔗
---@return number raceID ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PlayerInfo.GetRace(playerLocation)
end

---Returns the sex of a player.
---@param playerLocation PlayerLocation 🔗
---@return Enum.UnitSex sex ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PlayerInfo.GetSex(playerLocation)
end

---
---@return boolean hasAccountInventoryLock 
function C_PlayerInfo.HasAccountInventoryLock()
end

---
---@param slot number 
---@return boolean isVisible 
function C_PlayerInfo.HasVisibleInvSlot(slot)
end

---
---@return boolean isAccountBankEnabled 
function C_PlayerInfo.IsAccountBankEnabled()
end

---
---@return boolean isCharacterBankEnabled 
function C_PlayerInfo.IsCharacterBankEnabled()
end

---Returns true if the player is connected.
---@param playerLocation PlayerLocationMixin ?🔗
---@return boolean isConnected ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PlayerInfo.IsConnected(playerLocation)
end

---
---@return boolean isDisplayRaceNative 
function C_PlayerInfo.IsDisplayRaceNative()
end

---
---@param expansionID number 
---@return boolean isUnlocked 
function C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer(expansionID)
end

---
---@return boolean isMirrorImage 
function C_PlayerInfo.IsMirrorImage()
end

---Returns true if the player is eligible for the legacy new player experience tutorial, or false and a reason string if not.
---@return boolean isEligible 
---@return string failureReason 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PlayerInfo.IsPlayerEligibleForNPE()
end

---Returns true if the player is eligible for the updated new player experience tutorial, or false and a reasons string if not.
---@return boolean isEligible 
---@return string failureReason 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PlayerInfo.IsPlayerEligibleForNPEv2()
end

---Returns true if the player is actively within a Timewalking Campaign (Chromie Time).
---@return boolean inChromieTime 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PlayerInfo.IsPlayerInChromieTime()
end

---Returns true if the player has new player experience restrictions in place.
---@return boolean isRestricted 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_PlayerInfo.IsPlayerNPERestricted()
end

---
---@return boolean active 
function C_PlayerInfo.IsSelfFoundActive()
end

---
---@return boolean isAvailable 
function C_PlayerInfo.IsTradingPostAvailable()
end

---
---@return boolean isAvailable 
function C_PlayerInfo.IsTravelersLogAvailable()
end

---Returns true if a player is from the same or connected realm.
---@param playerLocation PlayerLocationMixin 🔗
---@return boolean unitIsSameServer 
---@since Patch 8.1.5 (2019-03-12): Added.
function C_PlayerInfo.UnitIsSameServer(playerLocation)
end
