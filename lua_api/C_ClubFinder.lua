-- C_ClubFinder API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ClubFinder
C_ClubFinder = {}

---
---@param clubFinderGUID string 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.ApplicantAcceptClubInvite(clubFinderGUID)
end

---
---@param clubFinderGUID string 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.ApplicantDeclineClubInvite(clubFinderGUID)
end

---
---@param clubFinderGUID string 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.CancelMembershipRequest(clubFinderGUID)
end

---
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.CheckAllPlayerApplicantSettings()
end

---
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.ClearAllFinderCache()
end

---
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.ClearClubApplicantsCache()
end

---
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.ClearClubFinderPostingsCache()
end

---
---@param clubFinderGUID string 
---@return boolean belongsToClub 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.DoesPlayerBelongToClubFromClubGUID(clubFinderGUID)
end

---
---@return Enum.ClubFinderDisableReason disableReason ?
---@since Patch 8.3.0 (2020-01-14): Added VeteranTrial field.
function C_ClubFinder.GetClubFinderDisableReason()
end

---
---@return  settings structure - ClubSettingsInfo
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.GetClubRecruitmentSettings()
end

---
---@param clubFinderGUID string 
---@return number clubType - Enum.ClubFinderRequestType
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.GetClubTypeFromFinderGUID(clubFinderGUID)
end

---
---@param flags number 
---@return number index 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.GetFocusIndexFromFlag(flags)
end

---
---@return number localeFlags 
---@since Patch 8.3.0 (2020-01-14): Added (Build 33724, Mar 17 2020).
function C_ClubFinder.GetPlayerApplicantLocaleFlags()
end

---
---@return  settings structure - ClubSettingsInfo
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.GetPlayerApplicantSettings()
end

---
---@param clubFinderGUID string 
---@return number clubStatus - Enum.PlayerClubRequestStatus
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.GetPlayerClubApplicationStatus(clubFinderGUID)
end

---
---@return number focusCount 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.GetPlayerSettingsFocusFlagsSelectedCount()
end

---
---@param clubFinderGUID string 
---@return number postingID ?
---@since Patch 8.3.0 (2020-01-14): Added.
function C_ClubFinder.GetPostingIDFromClubFinderGUID(clubFinderGUID)
end

---
---@param clubId string 
---@return  clubInfo structure - RecruitingClubInfo (nilable)
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.GetRecruitingClubInfoFromClubID(clubId)
end

---
---@param clubId string 
---@return  clubInfo structure - RecruitingClubInfo (nilable)
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.GetRecruitingClubInfoFromFinderGUID(clubId)
end

---
---@param postingID string 
---@return number postingFlags - Enum.ClubFinderClubPostingStatusFlags[]
---@since Patch 8.2.5 (2019-09-24): Added. (Build 32494 Nov 11 2019)
function C_ClubFinder.GetStatusOfPostingFromClubId(postingID)
end

---
---@return number totalSize 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.GetTotalMatchingCommunityListSize()
end

---
---@return number totalSize 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.GetTotalMatchingGuildListSize()
end

---
---@param clubFinderGUID string 
---@return boolean hasAlreadyApplied 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.HasAlreadyAppliedToLinkedPosting(clubFinderGUID)
end

---
---@param postingID string 
---@return boolean postingDelisted 
---@since Patch 8.2.5 (2019-09-24): Added. (Build 32494 Nov 11 2019)
function C_ClubFinder.HasPostingBeenDelisted(postingID)
end

---
---@return boolean isEnabled 
function C_ClubFinder.IsCommunityFinderEnabled()
end

---
---@return boolean isEnabled 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.IsEnabled()
end

---
---@param flags number 
---@return boolean isListed 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.IsListingEnabledFromFlags(flags)
end

---
---@param postingID string 
---@return boolean postingBanned 
---@since Patch 8.2.5 (2019-09-24): Added. (Build 32494 Nov 11 2019)
function C_ClubFinder.IsPostingBanned(postingID)
end

---
---@param name string 
---@return boolean isApproved 
function C_ClubFinder.IsValidSearchString(name)
end

---
---@param clubFinderGUID string 
---@param isLinkedPosting boolean 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.LookupClubPostingFromClubFinderGUID(clubFinderGUID, isLinkedPosting)
end

---
---@return  inviteList structure - RecruitingClubInfo[]
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.PlayerGetClubInvitationList()
end

---
---@param type number - Enum.ClubFinderRequestType
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.PlayerRequestPendingClubsList(type)
end

---
---@return  info structure - RecruitingClubInfo[]
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.PlayerReturnPendingCommunitiesList()
end

---
---@return  info structure - RecruitingClubInfo[]
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.PlayerReturnPendingGuildsList()
end

---
---@param clubId string 
---@param itemLevelRequirement number 
---@param name string 
---@param description string 
---@param avatarId number 
---@param specs number []
---@param type Enum.ClubFinderRequestType 
---@return boolean succesful 
---@since Patch 9.2.5 (2022-05-31): Added crossFaction return.
function C_ClubFinder.PostClub(clubId, itemLevelRequirement, name, description, avatarId, specs, type)
end

---
---@param type number - Enum.ClubFinderRequestType
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.RequestApplicantList(type)
end

---
---@param guildListRequested boolean 
---@param searchString string 
---@param specIDs table 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.RequestClubsList(guildListRequested, searchString, specIDs)
end

---
---@param clubFinderGUID string 
---@param comment string 
---@param specIDs table 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.RequestMembershipToClub(clubFinderGUID, comment, specIDs)
end

---
---@param startingIndex number 
---@param pageSize number 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.RequestNextCommunityPage(startingIndex, pageSize)
end

---
---@param startingIndex number 
---@param pageSize number 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.RequestNextGuildPage(startingIndex, pageSize)
end

---
---@param clubId string 
---@return boolean success 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.RequestPostingInformationFromClubId(clubId)
end

---
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.RequestSubscribedClubPostingIDs()
end

---
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.ResetClubPostingMapCache()
end

---
---@param clubFinderGUID string 
---@param playerGUID string 
---@param shouldAccept boolean 
---@param requestType Enum.ClubFinderRequestType 
---@since Patch 8.3.0 (2020-01-14): Added reported argument.
function C_ClubFinder.RespondToApplicant(clubFinderGUID, playerGUID, shouldAccept, requestType)
end

---
---@param clubId string 
---@return  info structure - ClubFinderApplicantInfo[]
---@since Patch 8.2.5 (2019-09-24): Combined to C_ClubFinder.ReturnClubApplicantList()
function C_ClubFinder.ReturnClubApplicantList(clubId)
end

---
---@return  recruitingClubs structure - RecruitingClubInfo[]
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.ReturnMatchingCommunityList()
end

---
---@return  recruitingClubs structure - RecruitingClubInfo[]
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.ReturnMatchingGuildList()
end

---
---@param clubId string 
---@return  info structure - ClubFinderApplicantInfo[]
---@since Patch 8.2.5 (2019-09-24): Combined to C_ClubFinder.ReturnPendingClubApplicantList()
function C_ClubFinder.ReturnPendingClubApplicantList(clubId)
end

---
---@param clubFinderGUID string 
---@param playerGUID string 
---@param applicantType Enum.ClubFinderRequestType 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_ClubFinder.SendChatWhisper(clubFinderGUID, playerGUID, applicantType)
end

---
---@param value number 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_ClubFinder.SetAllRecruitmentSettings(value)
end

---
---@param localeFlags number 
---@since Patch 8.3.0 (2020-01-14): Added (Build 33724, Mar 17 2020).
function C_ClubFinder.SetPlayerApplicantLocaleFlags(localeFlags)
end

---
---@param index number 
---@param checked boolean 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.SetPlayerApplicantSettings(index, checked)
end

---
---@param locale number 
---@since Patch 8.3.0 (2020-01-14): Added (Build 33724, Mar 17 2020).
function C_ClubFinder.SetRecruitmentLocale(locale)
end

---
---@param index number 
---@param checked boolean 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.SetRecruitmentSettings(index, checked)
end

---
---@return boolean shouldShow 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ClubFinder.ShouldShowClubFinder()
end
