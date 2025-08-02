-- C_TransmogCollection API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_TransmogCollection
C_TransmogCollection = {}

---
---@param sourceID number 
---@return boolean hasItemData 
---@return boolean canCollect 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TransmogCollection.AccountCanCollectSource(sourceID)
end

---
---@return boolean areAllCollectionTypeFiltersChecked 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_TransmogCollection.AreAllCollectionTypeFiltersChecked()
end

---
---@return boolean areAllSourceTypeFiltersChecked 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_TransmogCollection.AreAllSourceTypeFiltersChecked()
end

---
---@param appearanceID number 
---@return boolean canHaveIllusion 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_TransmogCollection.CanAppearanceHaveIllusion(appearanceID)
end

---
---@param visualID number 
---@since Patch 7.0.3 (2016-07-19): Added. Blizzard documented in 9.1.0
function C_TransmogCollection.ClearNewAppearance(visualID)
end

---
---@param searchType Enum.TransmogSearchType 
---@return boolean completed 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.ClearSearch(searchType)
end

---
---@param outfitID number 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.DeleteOutfit(outfitID)
end

---
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.EndSearch()
end

---
---@param itemAppearanceID number 
---@return number itemModifiedAppearanceIDs []
---@since Patch 7.1.0 (2016-10-25): Added.
function C_TransmogCollection.GetAllAppearanceSources(itemAppearanceID)
end

---
---@return boolean shown 
function C_TransmogCollection.GetAllFactionsShown()
end

---
---@return boolean shown 
function C_TransmogCollection.GetAllRacesShown()
end

---
---@param itemAppearanceID number 
---@param variation Enum.TransmogCameraVariation ?
---@return number cameraID 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.GetAppearanceCameraID(itemAppearanceID, variation)
end

---
---@param itemModifiedAppearanceID number 
---@param variation Enum.TransmogCameraVariation ?
---@return number cameraID 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.GetAppearanceCameraIDBySource(itemModifiedAppearanceID, variation)
end

---Returns information about the appearance tied to the given sourceID
---@param itemModifiedAppearanceID number SourceID - 2nd return value from C_TransmogCollection.GetItemInfo()
---@return TransmogAppearanceInfoBySourceData info 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.GetAppearanceInfoBySource(itemModifiedAppearanceID)
end

---
---@param itemModifiedAppearanceID number 
---@return TransmogAppearanceJournalEncounterInfo encounterInfo []
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.GetAppearanceSourceDrops(itemModifiedAppearanceID)
end

---Returns appearance info for a transmog source.
---@param sourceID number 
---@return number categoryID : Enum.TransmogCollectionType
---@return number visualID 
---@return boolean canEnchant 
---@return number icon 
---@return boolean isCollected - notably, this works across class boundaries, unlike GetSourceInfo() or GetAppearanceSources()
---@return string itemLink 
---@return string transmogLink : transmogillusionLink
---@return number unknown1 
---@return number itemSubTypeIndex - Item's Index into the related SubType Enum
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.GetAppearanceSourceInfo(sourceID)
end

---Returns the sources for an appearance.
---@param appearanceID number AppearanceID
---@param categoryType Enum.TransmogCollectionType ?🔗
---@param transmogLocation TransmogLocationMixin ?🔗
---@return AppearanceSourceInfo sources []? - Only returns valid data for the class proficiency, otherwise returns nil.
---@since Patch 9.2.5 (2022-05-31): Added transmogLocation argument.
function C_TransmogCollection.GetAppearanceSources(appearanceID, categoryType, transmogLocation)
end

---
---@param appearanceID number 
---@return string name 
---@return string hyperlink 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_TransmogCollection.GetArtifactAppearanceStrings(appearanceID)
end

---Returns all appearances for a category. This is filtered by the class proficiency.
---@param category Enum.TransmogCollectionType 
---@return TransmogCategoryAppearanceInfo appearances []
---@since Patch 11.1.7 (2025-06-17): Removed restrictedSlotID field in return value.
function C_TransmogCollection.GetCategoryAppearances(category)
end

---
---@param category Enum.TransmogCollectionType 
---@return number count 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.GetCategoryCollectedCount(category)
end

---
---@param itemModifiedAppearanceID number 
---@return Enum.TransmogCollectionType collectionCategory 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_TransmogCollection.GetCategoryForItem(itemModifiedAppearanceID)
end

---Returns wardrobe category info.
---@param category Enum.TransmogCollectionType 
---@return string name 
---@return boolean isWeapon ? = false
---@return boolean canHaveIllusions ? = false
---@return boolean canMainHand ? = false
---@return boolean canOffHand ? = false
---@return boolean canRanged ? = false
---@since Patch 11.0.5 (2024-10-22): Added canRanged return value.
function C_TransmogCollection.GetCategoryInfo(category)
end

---
---@param category Enum.TransmogCollectionType 
---@return number total 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_TransmogCollection.GetCategoryTotal(category)
end

---
---@return number classID 
function C_TransmogCollection.GetClassFilter()
end

---
---@return boolean shown 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_TransmogCollection.GetCollectedShown()
end

---
---@return number appearanceID ?
---@since Patch 9.1.0 (2021-06-29): Added.
function C_TransmogCollection.GetFallbackWeaponAppearance()
end

---
---@param category Enum.TransmogCollectionType 
---@return number count 
function C_TransmogCollection.GetFilteredCategoryCollectedCount(category)
end

---
---@param category Enum.TransmogCollectionType 
---@return number total 
function C_TransmogCollection.GetFilteredCategoryTotal(category)
end

---
---@param illusionID number 
---@return TransmogIllusionInfo info 
---@since Patch 9.1.0 (2021-06-29): Added. Replaces C_TransmogCollection.GetIllusionSourceInfo()
function C_TransmogCollection.GetIllusionInfo(illusionID)
end

---
---@param illusionID number 
---@return string name 
---@return string hyperlink : transmogillusionLink
---@return string sourceText ?
---@since Patch 9.1.0 (2021-06-29): Added. Replaces C_TransmogCollection.GetIllusionSourceInfo()
function C_TransmogCollection.GetIllusionStrings(illusionID)
end

---Returns transmoggable enchants for the appearances tab.
---@return  visualsList structure[]
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.GetIllusions()
end

---
---@return table list []
---@since Patch 9.1.0 (2021-06-29): Added.
function C_TransmogCollection.GetInspectItemTransmogInfoList()
end

---
---@param itemAppearanceID number 
---@return boolean isFavorite 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.GetIsAppearanceFavorite(itemAppearanceID)
end

---Returns appearance info for an item.
---@param itemInfo number |string : Item ID, Link or name
---@return number itemAppearanceID : AppearanceID
---@return number itemModifiedAppearanceID - Also known as source ID.
---@since Patch 9.0.1 (2020-10-13): No longer accepts an itemModID as the second argument.
function C_TransmogCollection.GetItemInfo(itemInfo)
end

---
---@param hyperlink string outfitLink
---@return ItemTransmogInfo list []🔗
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TransmogCollection.GetItemTransmogInfoListFromOutfitHyperlink(hyperlink)
end

---
---@return number visualID 
---@return Enum.TransmogCollectionType category 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.GetLatestAppearance()
end

---Returns the maximum number of Transmogrification outfits that can be saved by the player.
---@return number maxOutfits - maximum number of transmog outfits
function C_TransmogCollection.GetNumMaxOutfits()
end

---
---@return number count 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.GetNumTransmogSources()
end

---
---@param itemTransmogInfoList ItemTransmogInfo []🔗
---@return string hyperlink : outfitLink
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TransmogCollection.GetOutfitHyperlinkFromItemTransmogInfoList(itemTransmogInfoList)
end

---
---@param outfitID number 
---@return string name 
---@return number icon 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_TransmogCollection.GetOutfitInfo(outfitID)
end

---
---@param outfitID number 
---@return ItemTransmogInfo list []🔗
---@since Patch 9.1.0 (2021-06-29): Added.
function C_TransmogCollection.GetOutfitItemTransmogInfoList(outfitID)
end

---
---@return number outfitID []
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.GetOutfits()
end

---
---@param itemModifiedAppearanceID number 
---@return number pairedItemModifiedAppearanceID 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_TransmogCollection.GetPairedArtifactAppearance(itemModifiedAppearanceID)
end

---
---@param itemModifiedAppearanceID number 
---@return number icon 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogCollection.GetSourceIcon(itemModifiedAppearanceID)
end

---Returns appearance source info.
---@param sourceID number 
---@return  sourceInfo structure - AppearanceSourceInfo
---@since Patch 7.1.0 (2016-10-25): Added.
function C_TransmogCollection.GetSourceInfo(sourceID)
end

---
---@param itemModifiedAppearanceID number 
---@return number itemID 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TransmogCollection.GetSourceItemID(itemModifiedAppearanceID)
end

---
---@param itemModifiedAppearanceID number 
---@return string holidayName 
---@since Patch 7.3.5 (2018-01-16): Added.
function C_TransmogCollection.GetSourceRequiredHoliday(itemModifiedAppearanceID)
end

---
---@return boolean shown 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.GetUncollectedShown()
end

---
---@param appearanceID number 
---@param classID number 
---@param categoryType Enum.TransmogCollectionType ?
---@return AppearanceSourceInfo sources []
function C_TransmogCollection.GetValidAppearanceSourcesForClass(appearanceID, classID, categoryType)
end

---
---@return boolean hasFavorites 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.HasFavorites()
end

---
---@param appearanceID number 
---@return boolean isHiddenVisual 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_TransmogCollection.IsAppearanceHiddenVisual(appearanceID)
end

---
---@param category Enum.TransmogCollectionType 
---@return boolean isValid 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.IsCategoryValidForItem(category)
end

---
---@param visualID number 
---@return boolean isNew 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.IsNewAppearance(visualID)
end

---
---@return boolean isLoading 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.IsSearchDBLoading()
end

---
---@param searchType Enum.TransmogSearchType 
---@return boolean inProgress 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.IsSearchInProgress(searchType)
end

---
---@param index number 
---@return boolean checked 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.IsSourceTypeFilterChecked(index)
end

---
---@return boolean isUsingDefaultFilters 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_TransmogCollection.IsUsingDefaultFilters()
end

---
---@param outfitID number 
---@param itemTransmogInfoList ItemTransmogInfo []🔗
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.ModifyOutfit(outfitID, itemTransmogInfoList)
end

---
---@param name string 
---@param icon number 
---@param itemTransmogInfoList table []
---@return number outfitID ?
---@since Patch 9.1.0 (2021-06-29): Added.
function C_TransmogCollection.NewOutfit(name, icon, itemTransmogInfoList)
end

---
---@param sourceID number 
---@return boolean hasItemData 
---@return boolean canCollect 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.PlayerCanCollectSource(sourceID)
end

---
---@param itemID number 
---@param itemAppearanceModID number ? = 0
---@return boolean hasTransmog 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.PlayerHasTransmog(itemID, itemAppearanceModID)
end

---
---@param itemInfo string 
---@return boolean hasTransmog 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TransmogCollection.PlayerHasTransmogByItemInfo(itemInfo)
end

---
---@param itemModifiedAppearanceID number 
---@return boolean hasTransmog 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.PlayerHasTransmogItemModifiedAppearance(itemModifiedAppearanceID)
end

---
---@param sourceID number 
---@return boolean isKnown 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.PlayerKnowsSource(sourceID)
end

---
---@param outfitID number 
---@param name string 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_TransmogCollection.RenameOutfit(outfitID, name)
end

---
---@param searchType Enum.TransmogSearchType 
---@return number progress 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.SearchProgress(searchType)
end

---
---@param searchType Enum.TransmogSearchType 
---@return number size 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.SearchSize(searchType)
end

---
---@param checked boolean 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_TransmogCollection.SetAllCollectionTypeFilters(checked)
end

---
---@param shown boolean 
function C_TransmogCollection.SetAllFactionsShown(shown)
end

---
---@param shown boolean 
function C_TransmogCollection.SetAllRacesShown(shown)
end

---
---@param checked boolean 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.SetAllSourceTypeFilters(checked)
end

---
---@param classID number 
function C_TransmogCollection.SetClassFilter(classID)
end

---
---@param shown boolean 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.SetCollectedShown(shown)
end

---
---@since Patch 9.2.5 (2022-05-31): Added.
function C_TransmogCollection.SetDefaultFilters()
end

---
---@param itemAppearanceID number 
---@param isFavorite boolean 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.SetIsAppearanceFavorite(itemAppearanceID, isFavorite)
end

---
---@param searchType Enum.TransmogSearchType 
---@return boolean completed 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.SetSearch(searchType)
end

---
---@param category Enum.TransmogCollectionType 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_TransmogCollection.SetSearchAndFilterCategory(category)
end

---
---@param index number 
---@param checked boolean 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.SetSourceTypeFilter(index, checked)
end

---
---@param shown boolean 
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.SetUncollectedShown(shown)
end

---
---@since Patch 7.0.3 (2016-07-19): Added.
function C_TransmogCollection.UpdateUsableAppearances()
end
