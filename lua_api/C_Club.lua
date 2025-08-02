-- C_Club API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Club
C_Club = {}

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param clubId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.AcceptInvitation(clubId)
end

---Adds a communities channel.
---@param clubId string 
---@param streamId string 
---@since Patch 8.1.0 (2018-12-11): C_Club.AddClubStreamToChatWindow was deprecated in favor of this function. You may need to call AddChatWindowChannel. [1]
function C_Club.AddClubStreamChatChannel(clubId, streamId)
end

---
---@param clubId string 
---@param streamId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.AdvanceStreamViewMarker(clubId, streamId)
end

---
---@param clubId string ClubId
---@return boolean membersReady 
function C_Club.AreMembersReady(clubId)
end

---
---@param clubId string 
---@param memberId number 
---@param roleId  Enum.ClubRoleIdentifier
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.AssignMemberRole(clubId, memberId, roleId)
end

---
---@param clubId string 
---@param streamId string 
---@param epoch number 
---@param position number 
---@return boolean canResolve 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.CanResolvePlayerLocationFromClubMessageData(clubId, streamId, epoch, position)
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.ClearAutoAdvanceStreamViewMarker()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.ClearClubPresenceSubscription()
end

---
---@param clubId string 
---@param lhsMemberId number 
---@param rhsMemberId number 
---@return number comparison 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.CompareBattleNetDisplayName(clubId, lhsMemberId, rhsMemberId)
end

---#protected - This can only be called from secure code.
---@param name string 
---@param shortName string ?
---@param description string 
---@param clubType Enum.ClubType - Valid types are BattleNet or Character
---@since Patch 9.2.5 (2022-05-31): Added isCrossFaction argument.
function C_Club.CreateClub(name, shortName, description, clubType)
end

---
---@param clubId string 
---@param name string 
---@param subject string 
---@param leadersAndModeratorsOnly boolean 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.CreateStream(clubId, name, subject, leadersAndModeratorsOnly)
end

---#protected - This can only be called from secure code.
---@param clubId string 
---@param allowedRedeemCount number ? - Number of uses. nil means unlimited
---@param duration number ? - Duration in seconds. nil never expires
---@param defaultStreamId string ?
---@param isCrossFaction boolean ?
---@since Patch 9.2.5 (2022-05-31): Added isCrossFaction argument.
function C_Club.CreateTicket(clubId, allowedRedeemCount, duration, defaultStreamId, isCrossFaction)
end

---
---@param clubId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.DeclineInvitation(clubId)
end

---
---@param clubId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.DestroyClub(clubId)
end

---
---@param clubId string 
---@param streamId string 
---@param messageId  structure - ClubMessageIdentifier
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.DestroyMessage(clubId, streamId, messageId)
end

---
---@param clubId string 
---@param streamId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.DestroyStream(clubId, streamId)
end

---
---@param clubId string 
---@param ticketId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.DestroyTicket(clubId, ticketId)
end

---
---@return boolean hasUnreadMessages 
function C_Club.DoesAnyCommunityHaveUnreadMessages()
end

---
---@param clubId string 
---@return boolean hasMembersOfOppositeFaction 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_Club.DoesCommunityHaveMembersOfTheOppositeFaction(clubId)
end

---
---@param clubId string 
---@param name string ?
---@param shortName string ?
---@param description string ?
---@param avatarId number ?
---@param broadcast string ?
---@param crossFaction boolean ?
---@since Patch 9.2.5 (2022-05-31): Added crossFaction argument.
function C_Club.EditClub(clubId, name, shortName, description, avatarId, broadcast, crossFaction)
end

---
---@param clubId string 
---@param streamId string 
---@param messageId ClubMessageIdentifier 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.EditMessage(clubId, streamId, messageId)
end

---
---@param clubId string 
---@param streamId string 
---@param name string ?
---@param subject string ?
---@param leadersAndModeratorsOnly boolean ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.EditStream(clubId, streamId, name, subject, leadersAndModeratorsOnly)
end

---
---@since Patch 8.1.0 (2018-12-11): Added.
function C_Club.Flush()
end

---
---@since Patch 9.1.5 (2021-11-02): Added.
function C_Club.FocusCommunityStreams()
end

---
---@param clubId string ClubId
function C_Club.FocusMembers(clubId)
end

---
---@param clubId string 
---@param streamId string 
---@return boolean focused 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.FocusStream(clubId, streamId)
end

---
---@param clubId string 
---@param memberId number 
---@return  assignableRoles Enum.ClubRoleIdentifier[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetAssignableRoles(clubId, memberId)
end

---
---@param clubType  Enum.ClubType
---@return number avatarIds []?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetAvatarIdList(clubType)
end

---
---@return number capacity 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_Club.GetClubCapacity()
end

---
---@param clubId string 
---@return ClubInfo info ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetClubInfo(clubId)
end

---
---@param clubType  Enum.ClubType
---@return  clubLimits structure - ClubLimits
---@since Patch 8.1.0 (2018-12-11): Added.
function C_Club.GetClubLimits(clubType)
end

---
---@param clubId string 
---@param streamId string ?
---@return number members []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetClubMembers(clubId, streamId)
end

---
---@param clubId string 
---@return  privilegeInfo structure - ClubPrivilegeInfo
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetClubPrivileges(clubId)
end

---
---@param clubId string 
---@return  settings structure - ClubStreamNotificationSetting[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetClubStreamNotificationSettings(clubId)
end

---
---@param result Enum.ValidateNameResult 
---@return string errorCode ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetCommunityNameResultText(result)
end

---
---@return string guildClubId ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetGuildClubId()
end

---
---@return  messageInfo structure - ClubMessageInfo
---@return string clubId 
---@return string streamId 
---@return  clubType Enum.ClubType
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetInfoFromLastCommunityChatLine()
end

---Returns a list of players that you can send a request to a Battle.net club. Returns an empty list for Character based clubs
---@param filter string ?
---@param maxResults number ?
---@param cursorPosition number ?
---@param allowFullMatch boolean ?
---@param clubId string 
---@return ClubInvitationCandidateInfo candidates []
---@since Patch 8.1.0 (2018-12-11): Added allowFullMatch argument.
function C_Club.GetInvitationCandidates(filter, maxResults, cursorPosition, allowFullMatch, clubId)
end

---
---@param clubId string 
---@return  invitation structure - ClubSelfInvitationInfo (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetInvitationInfo(clubId)
end

---
---@param clubId string 
---@return  invitations structure - ClubInvitationInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetInvitationsForClub(clubId)
end

---
---@return  invitations structure - ClubSelfInvitationInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetInvitationsForSelf()
end

---
---@param ticket string 
---@return  error Enum.ClubErrorType
---@return  info structure - ClubInfo (nilable)
---@return boolean showError 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_Club.GetLastTicketResponse(ticket)
end

---
---@param clubId string 
---@param memberId number 
---@return  info structure - ClubMemberInfo (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetMemberInfo(clubId, memberId)
end

---
---@param clubId string 
---@return  info structure - ClubMemberInfo (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetMemberInfoForSelf(clubId)
end

---
---@param clubId string 
---@param streamId string 
---@param messageId  structure - ClubMessageIdentifier
---@return  message structure - ClubMessageInfo (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetMessageInfo(clubId, streamId, messageId)
end

---
---@param clubId string 
---@param streamId string 
---@return  ranges structure - ClubMessageRange[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetMessageRanges(clubId, streamId)
end

---
---@param clubId string 
---@param streamId string 
---@param newest  structure - ClubMessageIdentifier
---@param count number 
---@return  messages structure - ClubMessageInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetMessagesBefore(clubId, streamId, newest, count)
end

---Get downloaded messages in the given range.
---@param clubId string 
---@param streamId string 
---@param oldest ClubMessageIdentifier 
---@param newest ClubMessageIdentifier 
---@return ClubMessageInfo messages []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetMessagesInRange(clubId, streamId, oldest, newest)
end

---
---@param clubId string 
---@param streamId string 
---@return  streamInfo structure - ClubStreamInfo (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetStreamInfo(clubId, streamId)
end

---
---@param clubId string 
---@param streamId string 
---@return number lastReadTime ? - nil if stream view is at current
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetStreamViewMarker(clubId, streamId)
end

---
---@param clubId string 
---@return  streams structure - ClubStreamInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetStreams(clubId)
end

---
---@return  clubs structure - ClubInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetSubscribedClubs()
end

---
---@param clubId string 
---@return  tickets structure - ClubTicketInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.GetTickets(clubId)
end

---
---@param clubId string 
---@return boolean accountMuted 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.IsAccountMuted(clubId)
end

---
---@param clubId string 
---@param streamId string 
---@param messageId  structure - ClubMessageIdentifier
---@return boolean isBeginningOfStream 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.IsBeginningOfStream(clubId, streamId, messageId)
end

---
---@return boolean clubsEnabled 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.IsEnabled()
end

---
---@return  restrictionReason Enum.ClubRestrictionReason
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.IsRestricted()
end

---
---@param clubId string 
---@param streamId string 
---@return boolean subscribed 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.IsSubscribedToStream(clubId, streamId)
end

---#protected - This can only be called from secure code.
---@param clubId string 
---@param memberId number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.KickMember(clubId, memberId)
end

---
---@param clubId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.LeaveClub(clubId)
end

---#protected - This can only be called from secure code.
---@param ticketId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.RedeemTicket(ticketId)
end

---
---@param clubId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.RequestInvitationsForClub(clubId)
end

---
---@param clubId string 
---@param streamId string 
---@param messageId  structure - ClubMessageIdentifier (optional)
---@return boolean alreadyHasMessages 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.RequestMoreMessagesBefore(clubId, streamId, messageId)
end

---
---@param ticketId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.RequestTicket(ticketId)
end

---
---@param clubId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.RequestTickets(clubId)
end

---
---@param clubId string 
---@param memberId number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.RevokeInvitation(clubId, memberId)
end

---
---@param guildClubId string 
---@param memberId number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.SendBattleTagFriendRequest(guildClubId, memberId)
end

---#protected - This can only be called from secure code.
---@param clubId string 
---@param character string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.SendCharacterInvitation(clubId, character)
end

---#protected - This can only be called from secure code.
---@param clubId string 
---@param memberId number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.SendInvitation(clubId, memberId)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param clubId string 
---@param streamId string 
---@param message string 
---@since Patch 8.1.0 (2018-12-11): Protected. May only be called in response to a hardware event.
function C_Club.SendMessage(clubId, streamId, message)
end

---
---@param clubId string 
---@param streamId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.SetAutoAdvanceStreamViewMarker(clubId, streamId)
end

---
---@param texture table 
---@param avatarId number 
---@param clubType  Enum.ClubType
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.SetAvatarTexture(texture, avatarId, clubType)
end

---#protected - This can only be called from secure code.
---@param clubId string 
---@param memberId number 
---@param note string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.SetClubMemberNote(clubId, memberId, note)
end

---
---@param clubId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.SetClubPresenceSubscription(clubId)
end

---
---@param clubId string 
---@param settings table 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.SetClubStreamNotificationSettings(clubId, settings)
end

---
---@param communityID number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.SetCommunityID(communityID)
end

---
---@param clubId string 
---@param isFavorite boolean 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.SetFavorite(clubId, isFavorite)
end

---
---@param clubId string 
---@param enabled boolean 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.SetSocialQueueingEnabled(clubId, enabled)
end

---
---@param clubType  Enum.ClubType
---@return boolean clubTypeIsAllowed 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.ShouldAllowClubType(clubType)
end

---
---@param unsubscribe boolean 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_Club.UnfocusAllStreams(unsubscribe)
end

---
---@param clubId string ClubId
function C_Club.UnfocusMembers(clubId)
end

---
---@param clubId string 
---@param streamId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.UnfocusStream(clubId, streamId)
end

---
---@param clubType Enum.ClubType 
---@return Enum.ValidateNameResult result 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Club.ValidateText(clubType)
end
