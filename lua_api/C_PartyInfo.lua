-- C_PartyInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_PartyInfo
C_PartyInfo = {}

---
---@param toRaid boolean 
---@return boolean allowed 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_PartyInfo.AllowedToDoPartyConversion(toRaid)
end

---
---@return boolean canFormCrossFactionParties 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_PartyInfo.CanFormCrossFactionParties()
end

---
---@return boolean allowedToInvite 
---@since Patch 8.2.5 (2019-09-24): Added. This was previously a FrameXML function. [1]
function C_PartyInfo.CanInvite()
end

---Returns whether it's possible to start a vote at this time
---@return boolean canStart 
function C_PartyInfo.CanStartInstanceAbandonVote()
end

---
---@return boolean restrictionsActive 
function C_PartyInfo.ChallengeModeRestrictionsActive()
end

---Immediately convert to raid with no regard for potentially destructive actions.
---@since Patch 8.2.5 (2019-09-24): Added.
function C_PartyInfo.ConfirmConvertToRaid()
end

---
---@param targetName string 
---@param targetGUID string 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_PartyInfo.ConfirmInviteTravelPass(targetName, targetGUID)
end

---Immediately invites the named unit to a party, with no regard for potentially destructive actions.
---@param targetName string 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_PartyInfo.ConfirmInviteUnit(targetName)
end

---Immediately leave the party with no regard for potentially destructive actions.
---@param category number ?
---@since Patch 8.2.5 (2019-09-24): Added.
function C_PartyInfo.ConfirmLeaveParty(category)
end

---Immediately request an invite into the target party, this is the confirmation function to call after RequestInviteFromUnit, or if you would like to skip the confirmation process.
---@param targetName string 
---@param tank boolean ?
---@param healer boolean ?
---@param dps boolean ?
---@since Patch 8.2.5 (2019-09-24): Added.
function C_PartyInfo.ConfirmRequestInviteFromUnit(targetName, tank, healer, dps)
end

---Converts a raid group with 5 or less members to a party.
---@since Patch 8.2.5 (2019-09-24): Moved to C_PartyInfo.ConvertToParty()
function C_PartyInfo.ConvertToParty()
end

---
---@since Patch 8.2.5 (2019-09-24): Moved to C_PartyInfo.ConvertToRaid()
function C_PartyInfo.ConvertToRaid()
end

---
function C_PartyInfo.DelveTeleportOut()
end

---Countdown timer sent to all party members. Has no effect if not in a group/instance.
---@param seconds number 
---@return boolean success 
---@since Patch 10.2.7 (2024-05-07): Added success return value.
function C_PartyInfo.DoCountdown(seconds)
end

---
---@return number categories []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_PartyInfo.GetActiveCategories()
end

---
---@return Enum.LootMethod methods []
function C_PartyInfo.GetAvailableLootMethods()
end

---Returns the total duration of the shutdown time after a vote passes and how much time is left before it ends
---@return number durationSeconds ? = 0
---@return number timeLeftSeconds ? = 0
function C_PartyInfo.GetInstanceAbandonShutdownTime()
end

---Returns values controlling the vote
---@return number votesRequired ? = 0
---@return number keystoneOwnerVoteWeight ? = 0
function C_PartyInfo.GetInstanceAbandonVoteRequirements()
end

---Returns how the player voted, nil for not yet
---@return boolean response ?
function C_PartyInfo.GetInstanceAbandonVoteResponse()
end

---Returns the total duration of the vote and how much time is left before it ends
---@return number durationSeconds ? = 0
---@return number timeLeftSeconds ? = 0
function C_PartyInfo.GetInstanceAbandonVoteTime()
end

---
---@param inviteGUID string 
---@return  invalidQueues unknown QueueSpecificInfo[]
---@since Patch 7.2.0 (2017-03-28): Added.
function C_PartyInfo.GetInviteConfirmationInvalidQueues(inviteGUID)
end

---Returns info for Quick join invites.
---@param inviteGUID string 
---@return string outReferredByGuid 
---@return string outReferredByName 
---@return  outRelationType Enum.PartyRequestJoinRelation
---@return boolean outIsQuickJoin 
---@return string outClubId 
---@since Patch 8.1.0 (2018-12-11): Moved to C_PartyInfo.GetInviteReferralInfo. The previous alias is deprecated. [1]
function C_PartyInfo.GetInviteReferralInfo(inviteGUID)
end

---
---@return Enum.LootMethod method 
function C_PartyInfo.GetLootMethod()
end

---
---@param avgItemLevelCategory Enum.AvgItemLevelCategories - The active party is always used
---@return number minItemLevel 
---@return string playerNameWithLowestItemLevel 
function C_PartyInfo.GetMinItemLevel(avgItemLevelCategory)
end

---
---@param category number ? - If not provided, the active party is used
---@return number minLevel 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_PartyInfo.GetMinLevel(category)
end

---Returns how many players have voted either way
---@return number count 
function C_PartyInfo.GetNumInstanceAbandonGroupVoteResponses()
end

---
---@return Enum.RestrictPingsTo restrictTo 
---@since Patch 11.0.0 (2024-07-23): Changed return value from boolean restrictToAssistants to enum.
function C_PartyInfo.GetRestrictPings()
end

---Invites a player to your group.
---@param name string - The name of the player you would like to invite.
---@since Patch 8.2.5 (2019-09-24): Moved to C_PartyInfo.InviteUnit(). The previous alias is deprecated. [1]. Replaces the InviteToGroup() FrameXML function.
function C_PartyInfo.InviteUnit(name)
end

---
---@return boolean active 
function C_PartyInfo.IsChallengeModeActive()
end

---
---@return boolean isKeystoneOwner 
function C_PartyInfo.IsChallengeModeKeystoneOwner()
end

---
---@param category number ? - If not provided, the active party is used
---@return boolean isCrossFactionParty 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_PartyInfo.IsCrossFactionParty(category)
end

---
---@return boolean isDelveComplete 
function C_PartyInfo.IsDelveComplete()
end

---
---@return boolean isDelveComplete 
function C_PartyInfo.IsDelveInProgress()
end

---
---@param category number ? - If not provided, the active party is used.
---@return boolean isFull 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_PartyInfo.IsPartyFull(category)
end

---
---@return boolean isPartyInJailersTower 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_PartyInfo.IsPartyInJailersTower()
end

---
---@return boolean isPartyWalkIn 
function C_PartyInfo.IsPartyWalkIn()
end

---
---@param category number ?
If omitted, defaults to INSTANCE if applicable, HOME otherwise.
---@since Patch 8.2.5 (2019-09-24): Moved to C_PartyInfo.LeaveParty()
function C_PartyInfo.LeaveParty(category)
end

---Attempt to request an invite into the target party, requires confirmation in some cases (e.g. there is a party sync in progress).
---@param targetName string 
---@param tank boolean ?
---@param healer boolean ?
---@param dps boolean ?
---@since Patch 8.2.5 (2019-09-24): Moved to C_PartyInfo.RequestInviteFromUnit(). The previous alias is deprecated. [1]
function C_PartyInfo.RequestInviteFromUnit(targetName, tank, healer, dps)
end

---Vote on whether to abandon instance, true for yes, false for no
---@param response boolean 
function C_PartyInfo.SetInstanceAbandonVoteResponse(response)
end

---
---@param method Enum.LootMethod 
---@return boolean success 
function C_PartyInfo.SetLootMethod(method)
end

---
---@param restrictTo Enum.RestrictPingsTo 
---@since Patch 11.0.0 (2024-07-23): Changed argument from boolean restrictToAssistants to enum.
function C_PartyInfo.SetRestrictPings(restrictTo)
end

---
function C_PartyInfo.StartInstanceAbandonVote()
end
