-- C_ArtifactUI API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ArtifactUI
C_ArtifactUI = {}

---
---@param powerID number 
---@return boolean success 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.AddPower(powerID)
end

---
---@param relicSlotIndex number 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.ApplyCursorRelicToSlot(relicSlotIndex)
end

---
---@param relicItemID number 
---@param onlyUnlocked boolean 
---@return boolean canApply 
---@since Patch 7.1.0 (2016-10-25): Added.
function C_ArtifactUI.CanApplyArtifactRelic(relicItemID, onlyUnlocked)
end

---
---@param relicSlotIndex number 
---@return boolean canApply 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.CanApplyCursorRelicToSlot(relicSlotIndex)
end

---
---@param relicItemID number 
---@param relicSlotIndex number 
---@return boolean canApply 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.CanApplyRelicItemIDToEquippedArtifactSlot(relicItemID, relicSlotIndex)
end

---
---@param relicItemID number 
---@param relicSlotIndex number 
---@return boolean canApply 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.CanApplyRelicItemIDToSlot(relicItemID, relicSlotIndex)
end

---
---@return boolean canRespec 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.CheckRespecNPC()
end

---Clears data of the last opened artifact weapon.
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.Clear()
end

---
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.ClearForgeCamera()
end

---
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.ConfirmRespec()
end

---
---@return boolean hasAnyRelicsSlotted 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.DoesEquippedArtifactHaveAnyRelicsSlotted()
end

---Returns information about a selected artifact appearance.
---@param appearanceSetIndex number - Ranging from 1 to C_ArtifactUI.GetNumAppearanceSets()
---@param appearanceIndex number - Numeric index of the appearance in the specified setIndex, from 1 to 4 -- exception: Set 1 for both the Feral and the Guardian Druid Artifacts, which has 7 appearances total, due to racial basic tints: Troll/Zandalari is tint 1, Tauren/Highmountain is tint 2, Night Elf is tint 3, Worgen/Kul Tiran is tint 4, and 5 to 7 for the Pillar of Creation, Light's Heart, and Campaign Effort criteria that would otherwise be index 2 to 4. Querying racial tints other than the one for the current character's race returns nil.
---@return number 1. artifactAppearanceID : ArtifactAppearanceID
---@return string 2. appearanceName - The name of the artifact weapon this appearance goes to
---@return number 3. displayIndex - The index of this appearance in its set, the same as the appearanceIndex that was entered
---@return boolean 4. unlocked - Whether this appearance has been unlocked
---@return string 5. failureDescription ? - The requirements for unlocking this appearance. Will return nil for the artifact's base appearance
---@return number 6. uiCameraID 
---@return number 7. altHandCameraID ?
---@return number 8. swatchColorR - The red component of the appearance swatch button, between 0 and 1
---@return number 9. swatchColorG - The green component of the appearance swatch button, between 0 and 1
---@return number 10. swatchColorB - The red component of the appearance swatch button, between 0 and 1
---@return number 11. modelOpacity - The alpha level (opacity) of the weapon in the Artifact UI, defaulted to 0.5
---@return number 12. modelSaturation - The saturation level (brightness) of the weapon in the Artifact UI, defaulted to 0.5
---@return boolean 13. obtainable - Whether the artifact's animation is being suppressed, defaulted to false
---@since Patch 8.0.1 (2018-07-17): Added obtainable return.
function C_ArtifactUI.GetAppearanceInfo(appearanceSetIndex, appearanceIndex)
end

---Returns information about a selected artifact appearance.
---@param artifactAppearanceID number ArtifactAppearanceID
---@return number 1. artifactAppearanceSetID - The appearance set this appearance belongs to (from C_ArtifactUI.GetAppearanceSetInfo)
---@return number 2. artifactAppearanceID : ArtifactAppearanceID
---@return string 3. appearanceName - The name of the artifact weapon this appearance goes to
---@return number 4. displayIndex - The index of this appearance in its set, the same as the appearanceIndex that was entered
---@return boolean 5. unlocked - Whether this appearance has been unlocked
---@return string 6. failureDescription ? - The requirements for unlocking this appearance. Will return nil for the artifact's base appearance
---@return number 7. uiCameraID 
---@return number 8. altHandCameraID ?
---@return number 9. swatchColorR - The red component of the appearance swatch button, between 0 and 1
---@return number 10. swatchColorG - The green component of the appearance swatch button, between 0 and 1
---@return number 11. swatchColorB - The red component of the appearance swatch button, between 0 and 1
---@return number 12. modelOpacity - The alpha level (opacity) of the weapon in the Artifact UI, defaulted to 0.5
---@return number 13. modelSaturation - The saturation level (brightness) of the weapon in the Artifact UI, defaulted to 0.5
---@return boolean 14. obtainable - Whether the artifact's animation is being suppressed, defaulted to false
---@since Patch 8.0.1 (2018-07-17): Added obtainable return.
function C_ArtifactUI.GetAppearanceInfoByID(artifactAppearanceID)
end

---
---@param appearanceSetIndex number 
---@return number artifactAppearanceSetID 
---@return string appearanceSetName 
---@return string appearanceSetDescription 
---@return number numAppearances 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetAppearanceSetInfo(appearanceSetIndex)
end

---
---@return  artifactArtInfo structure - ArtifactArtInfo
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetArtifactArtInfo()
end

---Returns information about the currently equipped artifact weapon.
---@return number 1. itemID - Numeric ID of the main-hand weapon
---@return number 2. altItemID ? - Numeric ID of the off-hand weapon, or nil if there is none
---@return string 3. name - Name of the weapon
---@return number 4. icon : fileID - The fileID for the icon texture for the artifact
---@return number 5. xp - The artifact power available to this weapon
---@return number 6. pointsSpent - The number of ranks that have been purchased (not granted by relics)
---@return number 7. quality 
---@return number 8. artifactAppearanceID - The currently active artifact appearanceID
---@return number 9. appearanceModID 
---@return number 10. itemAppearanceID ? - The transmogrification appearanceID used on the main-hand weapon
---@return number 11. altItemAppearanceID ? - The transmogrification appearanceID used on the off-hand weapon
---@return boolean 12. altOnTop - Whether the off-hand item is displayed
---@return number 13. tier : ArtifactTiers
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetArtifactInfo()
end

---
---@return number itemID 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_ArtifactUI.GetArtifactItemID()
end

---Returns the tier number for your artifact at the forge.
---@return number tier - the completed tier level of your artifact weapon while at the forge on the Vindicaar.
---@since Patch 7.3.0 (2017-08-29): Added.
function C_ArtifactUI.GetArtifactTier()
end

---
---@param artifactCategoryID number 
---@return string name 
---@return number icon 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetArtifactXPRewardTargetInfo(artifactCategoryID)
end

---
---@param rank number 
---@param tier number 
---@return number cost 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetCostForPointAtRank(rank, tier)
end

---
---@return  artifactArtInfo structure - ArtifactArtInfo
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetEquippedArtifactArtInfo()
end

---
---@return number itemID 
---@return number altItemID ?
---@return string name 
---@return number icon 
---@return number xp 
---@return number pointsSpent 
---@return number quality 
---@return number artifactAppearanceID 
---@return number appearanceModID 
---@return number itemAppearanceID ?
---@return number altItemAppearanceID ?
---@return boolean altOnTop 
---@return number tier 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetEquippedArtifactInfo()
end

---
---@return number itemID 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_ArtifactUI.GetEquippedArtifactItemID()
end

---
---@param onlyUnlocked boolean ? = false - If true then only the relic slots that are unlocked will be considered.
---@return number numRelicSlots 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetEquippedArtifactNumRelicSlots(onlyUnlocked)
end

---
---@param relicSlotIndex number 
---@return string name 
---@return number icon 
---@return string slotTypeName - Matches the socket identifiers used in the socketing system.
---@return string link 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetEquippedArtifactRelicInfo(relicSlotIndex)
end

---
---@param relicSlotIndex number 
---@return string lockedReason ?
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ArtifactUI.GetEquippedRelicLockedReason(relicSlotIndex)
end

---
---@return number forgeRotationX 
---@return number forgeRotationY 
---@return number forgeRotationZ 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetForgeRotation()
end

---
---@param itemLinkOrID string 
---@return number itemIevelIncrease 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetItemLevelIncreaseProvidedByRelic(itemLinkOrID)
end

---(Variable returns: spellID1, powerCost1, currentRank1, spellID2, powerCost2, currentRank2, etc)
---@return number spellID 
---@return number powerCost 
---@return number currentRank 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetMetaPowerInfo()
end

---
---@return number numAppearanceSets 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetNumAppearanceSets()
end

---
---@return number numObtainedArtifacts 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetNumObtainedArtifacts()
end

---
---@param onlyUnlocked boolean ? = false - If true then only the relic slots that are unlocked will be considered.
---@return number numRelicSlots 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetNumRelicSlots(onlyUnlocked)
end

---
---@return number pointsRemaining 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetPointsRemaining()
end

---
---@param powerID number 
---@return string link 
---@since Patch 7.1.0 (2016-10-25): Added.
function C_ArtifactUI.GetPowerHyperlink(powerID)
end

---
---@param powerID number 
---@return  powerInfo structure - ArtifactPowerInfo
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetPowerInfo(powerID)
end

---
---@param powerID number 
---@return number linkingPowerID []
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetPowerLinks(powerID)
end

---
---@return number powerID []
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetPowers()
end

---(variable returns: powerID1, powerID2, ...)
---@param relicSlotIndex number 
---@return number powerIDs 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetPowersAffectedByRelic(relicSlotIndex)
end

---(variable returns: powerID1, powerID2, ...)
---@param relicSlotIndex number 
---@return number powerIDs 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetPowersAffectedByRelicItemLink(relicSlotIndex)
end

---
---@return number artifactAppearanceID ?
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetPreviewAppearance()
end

---
---@param relicSlotIndex number 
---@return string name 
---@return number icon 
---@return string slotTypeName - Matches the socket identifiers used in the socketing system.
---@return string link 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetRelicInfo(relicSlotIndex)
end

---
---@param relicSlotIndex number 
---@return string name 
---@return number icon 
---@return string slotTypeName - Matches the socket identifiers used in the socketing system.
---@return string link 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetRelicInfoByItemID(relicSlotIndex)
end

---
---@param relicSlotIndex number 
---@return string lockedReason ?
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ArtifactUI.GetRelicLockedReason(relicSlotIndex)
end

---
---@param relicSlotIndex number 
---@return string slotTypeName 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetRelicSlotType(relicSlotIndex)
end

---
---@return  artifactArtInfo structure - ArtifactArtInfo
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetRespecArtifactArtInfo()
end

---
---@return number itemID 
---@return number altItemID ?
---@return string name 
---@return number icon 
---@return number xp 
---@return number pointsSpent 
---@return number quality 
---@return number artifactAppearanceID 
---@return number appearanceModID 
---@return number itemAppearanceID ?
---@return number altItemAppearanceID ?
---@return boolean altOnTop 
---@return number tier 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetRespecArtifactInfo()
end

---
---@return number cost 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetRespecCost()
end

---
---@param startingTrait number 
---@param numTraits number 
---@param artifactTier number 
---@return number totalArtifactPowerCost 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ArtifactUI.GetTotalPowerCost(startingTrait, numTraits, artifactTier)
end

---Returns the total number of ranks purchased for an artifact weapon.
---@return number numPurchased - The number of purchased ranks on an artifact weapon.
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.GetTotalPurchasedRanks()
end

---
---@return boolean artifactDisabled 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ArtifactUI.IsArtifactDisabled()
end

---
---@param itemLocation ItemLocationMixin 🔗
---@return boolean isArtifact 
function C_ArtifactUI.IsArtifactItem(itemLocation)
end

---
---@return boolean isAtForge 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.IsAtForge()
end

---
---@return boolean artifactDisabled 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ArtifactUI.IsEquippedArtifactDisabled()
end

---
---@return boolean artifactMaxed 
---@since Patch 7.2.5 (2017-06-13): Added.
function C_ArtifactUI.IsEquippedArtifactMaxed()
end

---
---@return boolean isEffectivelyMaxed 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_ArtifactUI.IsMaxedByRulesOrEffect()
end

---
---@param powerID number 
---@return boolean known 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.IsPowerKnown(powerID)
end

---
---@return boolean isViewedArtifactEquipped 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.IsViewedArtifactEquipped()
end

---
---@param artifactAppearanceID number 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.SetAppearance(artifactAppearanceID)
end

---
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.SetForgeCamera()
end

---
---@param forgeRotationX number 
---@param forgeRotationY number 
---@param forgeRotationZ number 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.SetForgeRotation(forgeRotationX, forgeRotationY, forgeRotationZ)
end

---
---@param artifactAppearanceID number ? = 0
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.SetPreviewAppearance(artifactAppearanceID)
end

---
---@return boolean shouldSuppressForgeRotation 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_ArtifactUI.ShouldSuppressForgeRotation()
end
