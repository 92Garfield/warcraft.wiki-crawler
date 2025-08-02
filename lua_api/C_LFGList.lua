-- C_LFGList API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_LFGList
C_LFGList = {}

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param resultID number 
---@param tankOK boolean ?
---@param healerOK boolean ?
---@param damageOK boolean ?
---@since Patch 7.2.0 (2017-03-28): Hardware event protected [1].
function C_LFGList.ApplyToGroup(resultID, tankOK, healerOK, damageOK)
end

---
---@return boolean canUseAutoAccept 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_LFGList.CanActiveEntryUseAutoAccept()
end

---
---@param questID number 
---@return boolean canCreate 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_LFGList.CanCreateQuestGroup(questID)
end

---
---@param scenarioID number 
---@return boolean canCreate 
function C_LFGList.CanCreateScenarioGroup(scenarioID)
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_LFGList.ClearApplicationTextFields()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_LFGList.ClearCreationTextFields()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 7.2.0 (2017-03-28): Hardware event protected [1].
function C_LFGList.ClearSearchResults()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_LFGList.ClearSearchTextFields()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_LFGList.CopyActiveEntryInfoToCreationFields()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param createData LfgListingCreateData 
---@return boolean success - Generally returns true if there was a valid group title.
---@since Patch 11.1.0 (2025-02-25): Now returns a structured table.
function C_LFGList.CreateListing(createData)
end

---
---@param activityID number 
---@param itemLevel number 
---@param autoAccept boolean 
---@param privateGroup boolean 
---@param scenarioID number 
---@return boolean canCreate 
function C_LFGList.CreateScenarioListing(activityID, itemLevel, autoAccept, privateGroup, scenarioID)
end

---
---@param activityID number 
---@param groupID number 
---@param playstyle Enum.LFGEntryPlaystyle ?
---@return boolean matches 
---@since Patch 9.2.0 (2022-02-22): Added.
function C_LFGList.DoesEntryTitleMatchPrebuiltTitle(activityID, groupID, playstyle)
end

---Returns information about your currently listed group.
---@return LfgEntryData entryData 
---@since Patch 10.2.7 (2024-05-07): Changed activityID return value to activityIDs.
function C_LFGList.GetActiveEntryInfo()
end

---
---@param activityID number 
---@param questID number ?
---@param showWarmode boolean ?
---@return string fullName 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_LFGList.GetActivityFullName(activityID, questID, showWarmode)
end

---Returns info for an activity group.
---@param groupID number - The groupID for which information are requested, as returned by C_LFGList.GetAvailableActivityGroups().
---@return string name - Name of the group.
---@return number groupOrder - ?
function C_LFGList.GetActivityGroupInfo(groupID)
end

---Returns the zone associated with an activity.
---@param activityID number - The activityID for which information are requested, as returned by C_LFGList.GetAvailableActivities().
---@return boolean currentArea - True if you are in the zone of the activity, false otherwise.
function C_LFGList.GetActivityInfoExpensive(activityID)
end

---
---@param activityID number 
---@param questID number ?
---@param showWarmode boolean ?
---@return GroupFinderActivityInfo activityInfo 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_LFGList.GetActivityInfoTable(activityID, questID, showWarmode)
end

---
---@return AdvancedFilterOptions options 
function C_LFGList.GetAdvancedFilter()
end

---
---@param localID number 
---@param applicantIndex number 
---@return BestDungeonScoreMapInfo bestDungeonScoreForListing 
function C_LFGList.GetApplicantBestDungeonScore(localID, applicantIndex)
end

---
---@param localID number 
---@param applicantIndex number 
---@param activityID number 
---@return BestDungeonScoreMapInfo bestDungeonScoreForListing 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_LFGList.GetApplicantDungeonScoreForListing(localID, applicantIndex, activityID)
end

---Returns status informations and custom message of an applicant.
---@param applicantID number - Ascending number of applicants since creation of the activity.
---@return LfgApplicantData applicantData 
---@since Patch 8.1.0 (2018-12-11): Return parameters changed to structure.
function C_LFGList.GetApplicantInfo(applicantID)
end

---Returns info for an applicant.
---@param applicantID number - ascending number of applicants since creation of the activity returned by C_LFGList.GetApplicants()
---@param memberIndex number - iteration of C_LFGList.GetApplicants() argument #4 (numMembers)
---@return string 1. name - Character name and realm
---@return string 2. class - english class name (uppercase)
---@return string 3. localizedClass - localized class name
---@return number 4. level 
---@return number 5. itemLevel 
---@return number 6. honorLevel 
---@return boolean 7. tank - true if applicant offer tank role
---@return boolean 8. healer - true if applicant offer healer role
---@return boolean 9. damage - true if applicant offer damage role
---@return string 10. assignedRole - english role name (uppercase)
---@return boolean 11. relationship ? - true if a friend otherwise nil
---@return number 12. dungeonScore 
---@return number 13. pvpItemLevel 
---@since Patch 9.1.5 (2021-11-02): Added pvpItemLevel
function C_LFGList.GetApplicantMemberInfo(applicantID, memberIndex)
end

---Returns the Proving Grounds stats of an applicant.
---@param applicantID number - ascending number of applicants since creation of the activity returned by C_LFGList.GetApplicants()
---@param memberIndex number - iteration of C_LFGList.GetApplicants() argument #4 (numMembers)
---@return table stats 
function C_LFGList.GetApplicantMemberStats(applicantID, memberIndex)
end

---
---@param localID number 
---@param applicantIndex number 
---@param activityID number 
---@return PvpRatingInfo pvpRatingInfo 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_LFGList.GetApplicantPvpRatingInfoForListing(localID, applicantIndex, activityID)
end

---Returns the list of applicants to your group.
---@return table applicants - a simple table with applicantIDs (numbers)
function C_LFGList.GetApplicants()
end

---Returns a list of available LFG activities.
---@param categoryID number ? - Use to only get activityIDs associated with a specific category. Use C_LFGList.GetAvailableCategories() to get a list of all available categoryIDs. If omitted the function returns activities of all categories.
---@param groupID number ? - Use to only get activityIDs associated with a specific group. See C_LFGList.GetActivityGroupInfo for more information. If omitted the function returns activities of all groups.
---@param filter number ? - Bit mask to filter the results. See C_LFGList.GetActivityInfo for more information.
---@return table activities - A table containing the requested activityIDs (not in order).
function C_LFGList.GetAvailableActivities(categoryID, groupID, filter)
end

---Returns a list of available LFG groups.
---@param categoryID number - The categoryID of the category you want to get available groups of. Use C_LFGList.GetAvailableCategories() to get a list of all available categoryIDs.
---@param filter number ? = 0 - Bit mask to filter the results. See C_LFGList.GetActivityInfo for more information.
---@return number activityIDs [] - A table containing the requested groupIDs (not in order).
function C_LFGList.GetAvailableActivityGroups(categoryID, filter)
end

---Returns a list of available LFG categories.
---@param filter number ? - Bit mask to filter the results. If omitted the function returns all categories. See C_LFGList.GetActivityInfo for more information.
---@return table categories - A table containing the requested categoryIDs (not in order).
function C_LFGList.GetAvailableCategories(filter)
end

---
---@return number totalResultsFound ? = 0
---@return number filteredResults []
---@since Patch 9.0.5 (2021-03-09): Added.
function C_LFGList.GetFilteredSearchResults()
end

---
---@return number tankLeavers 
---@return number healerLeavers 
---@return number damageLeavers 
function C_LFGList.GetGroupLeaverCountsByRole()
end

---
---@param activityID number 
---@return number level 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_LFGList.GetKeystoneForActivity(activityID)
end

---
---@param categoryID number 
---@return LfgCategoryData categoryData 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_LFGList.GetLfgCategoryInfo(categoryID)
end

---
---@param getTimewalking boolean ? = false
---@return number activityID 
---@return number groupID 
---@return number keystoneLevel 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_LFGList.GetOwnedKeystoneActivityAndGroupAndLevel(getTimewalking)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param playstyle Enum.LFGEntryPlaystyle 
---@return string playstyleString 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_LFGList.GetPlaystyleString(playstyle)
end

---
---@return Enum.PremadeGroupFinderStyle style 
function C_LFGList.GetPremadeGroupFinderStyle()
end

---Returns 3 arrays of "related" member names for the given LFGList search result ID
---@param searchResultID number 
---@return string bnetFriends [] - table array of listing members that are Battle.Net friends with the user player.
---@return string charFriends [] - table array of listing members also in user player's character friends list.
---@return string guildMates [] - table array of listing members in the same guild as the user player.
function C_LFGList.GetSearchResultFriends(searchResultID)
end

---
---@param searchResultID number 
---@return LfgSearchResultData searchResultData 
---@since Patch 11.0.7 (2024-12-17): Changed activityID field to activityIDs.
function C_LFGList.GetSearchResultInfo(searchResultID)
end

---
---@param searchResultID number 
---@return LfgSearchResultPlayerInfo leaderInfo 
function C_LFGList.GetSearchResultLeaderInfo(searchResultID)
end

---
---@param searchResultID number 
---@param memberIndex number 
---@return LfgSearchResultPlayerInfo playerInfo 
function C_LFGList.GetSearchResultPlayerInfo(searchResultID, memberIndex)
end

---Returns a table of search result IDs.
---@return number totalResultsFound ? = 0 - Total number of IDs inside results
---@return number results [] - Table of resultIDs
---@since Patch 6.0.2 (2014-10-14): Added.
function C_LFGList.GetSearchResults()
end

---
---@return boolean hasActiveEntryInfo 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_LFGList.HasActiveEntryInfo()
end

---
---@param searchResultID number 
---@return boolean hasSearchResultInfo 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_LFGList.HasSearchResultInfo(searchResultID)
end

---Invites a queued applicant to your group.
---@param applicantID number 
---@since Patch 6.0.2 (2014-10-14): Added.[1]
function C_LFGList.InviteApplicant(applicantID)
end

---
---@param activityCategoryID number ? : GroupFinderActivity.ID
---@return boolean isAuthenticated 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_LFGList.IsPlayerAuthenticatedForLFG(activityCategoryID)
end

---
---@return boolean enabled 
function C_LFGList.IsPremadeGroupFinderEnabled()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 7.2.0 (2017-03-28): Hardware event protected [1].
function C_LFGList.RemoveListing()
end

---Signals the server to request that it send the client information about available activities.
---@since Patch 6.0.2 (2014-10-14): Added.
function C_LFGList.RequestAvailableActivities()
end

---
---@param options AdvancedFilterOptions 
function C_LFGList.SaveAdvancedFilter(options)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param categoryID number 
---@param filter Enum.LFGListFilter ? = 0 - Bitmask of one or more filter enum values.
---@since Patch 11.0.7 (2024-12-17): Added activityIDsFilter argument.
function C_LFGList.Search(categoryID, filter)
end

---
---@param activityID number GroupFinderActivity.ID
---@param groupID number 
---@param playstyle Enum.LFGEntryPlaystyle ?
---@since Patch 9.1.5 (2021-11-02): Added.
function C_LFGList.SetEntryTitle(activityID, groupID, playstyle)
end

---
---@param activityID number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_LFGList.SetSearchToActivity(activityID)
end

---
---@param questID number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_LFGList.SetSearchToQuestID(questID)
end

---
---@param scenarioID number 
function C_LFGList.SetSearchToScenarioID(scenarioID)
end

---
function C_LFGList.UpdateListing()
end

---
---@param dungeonScore number 
---@return boolean passes 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_LFGList.ValidateRequiredDungeonScore(dungeonScore)
end

---
---@param activityID number 
---@param rating number 
---@return boolean passes 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_LFGList.ValidateRequiredPvpRatingForActivity(activityID, rating)
end
