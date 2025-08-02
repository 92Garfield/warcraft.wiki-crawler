-- _Global API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---The player abandons a skill.
---@param skillLineID number - The Skill Line ID (can be found with API GetProfessionInfo())
function AbandonSkill(skillLineID)
end

---Signs up for the Spirit Healer's resurrection timer in battlegrounds when in range.
function AcceptAreaSpiritHeal()
end

---#protected - This can only be called from secure code.
---@param index number - The battlefield in queue to enter.
---@param accept boolean - Whether or not to accept entry to the battlefield.
---@since Patch 4.1.0 (2011-04-26): Protected; requires a hardware event.
function AcceptBattlefieldPort(index, accept)
end

---Accepts a duel challenge.
function AcceptDuel()
end

---Accepts the invitation from a group.
function AcceptGroup()
end

---Accepts a guild invite.
function AcceptGuild()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
function AcceptProposal()
end

---Accepts the currently offered quest.
function AcceptQuest()
end

---Accepts a resurrection offer.
function AcceptResurrect()
end

---Confirms pending gems for socketing.
function AcceptSockets()
end

---#protected - This can only be called from secure code.
---@param spellID number - spell ID of the prompt to confirm.
---@since Patch 10.0.7 (2023-03-21): Protected.
function AcceptSpellConfirmationPrompt(spellID)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
function AcceptTrade()
end

---Acknowledges that the currently-offered auto-accept quest has been accepted by the player.
---@since Patch 5.0.4 (2012-08-28): Added.
function AcknowledgeAutoAcceptQuest()
end

---Returns true if the action has has a range requirement.
---@param slotID number - The slot ID to test.
---@return boolean hasRange - True if the specified slot contains an action which has a numeric range requirement.
function ActionHasRange(slotID)
end

---Adds a notification to the ObjectiveTrackerFrame that a quest is available or completed.
---@param questID number - the quest id
---@param type string - popup type, one of "OFFER" or "COMPLETE"
function AddAutoQuestPopUp(questID, type)
end

---Enables messages from a chat channel index for a chat window.
---@param windowId number - index of the chat window/frame (ascending from 1) to add the channel to.
---@param channelName string - name of the chat channel to add to the frame.
function AddChatWindowChannel(windowId, channelName)
end

---Enables messages from the chat message type (e.g. "SAY") for a chat window.
---@param index number - The chat window index, ascending from 1.
---@param messageGroup string - Message group to add to the chat window, e.g. "SAY", "EMOTE", "MONSTER_BOSS_EMOTE".
function AddChatWindowMessages(index, messageGroup)
end

---Returns a version of a character-realm string suitable for use in a given context.
---@param fullName string - character-realm for a character, e.g. "Shion-DieAldor"
---@param context string - context the name will be used in, one of: "all", "guild", "mail", "none", or "short".
---@return string name - character or character-realm name combination that would be equivalent to fullName in the specified context.
---@since Patch 5.4.2 (2013-12-10): Added.
function Ambiguate(fullName, context)
end

---
---@param index number 
function ArchaeologyGetIconInfo(index)
end

---Updates and returns the amount of digsites in a zone.
---@param uiMapID number UiMapID
---@return number numSites - How many digsites the player can  [Survey] in a zone. The player must actually be in a zone that can be surveyed.
---@since Patch 5.4.0 (2013-09-10): Added.
function ArchaeologyMapUpdateAll(uiMapID)
end

---Returns the blob ID for an archaeology map landmark.
---@param index number - Ranging from 1 to ArchaeologyMapUpdateAll numSites return.
---@return number blobID - The ID of the blob texture shown on the map for this dig site.
function ArcheologyGetVisibleBlobID(index)
end

---If true, UnitGetAvailableRoles results should be treated as suggested role, not hard limits on what role the current player can display as.
---@return boolean result 
function AreClassRolesSoftSuggestions()
end

---
---@return boolean allowed 
function AreDangerousScriptsAllowed()
end

---Called when the player releases the jump key.
function AscendStop()
end

---#protected - This can only be called from secure code.Use the "assist" action type of SecureActionButtonTemplate, or the /assist slash command.
---@param unit string UnitId
---@since Patch 2.0.1 (2006-12-05): Protected.
function AssistUnit(unit)
end

---#protected - This can only be called from secure code.Use the /startattack slash command.
---@since Patch 2.0.1 (2006-12-05): Protected
function AttackTarget()
end

---Equips the item currently held by the cursor.
function AutoEquipCursorItem()
end

---Withdraws an item from the Guild Bank to the character's inventory.
---@param tab number - The index of the tab in the guild bank
---@param slot number - The index of the slot in the chosen tab.
function AutoStoreGuildBankItem(tab, slot)
end

---Returns true if the WoW Client is connected to Battle.net.
---@return boolean connected - true if connected, false if not
function BNConnected()
end

---Returns info for the specified friend of a Battle.net friend.
---@param mutual boolean - Should the list include mutual friends (I.e. people who you and the person referenced by presenceID are both friends with).
---@param nonMutual boolean - Should the list include non-mutual friends.
---@param index number - The index of the entry in the list to retrieve (1 to BNGetNumFOF(...))
---@return number friendID - a unique numeric identifier for this friend for this session
---@return string accountName - a Kstring representing the friend's name (As of 4.0)
---@return boolean isMutual - true if this person is a direct friend of yours, false otherwise.
function BNGetFOFInfo(mutual, nonMutual, index)
end

---Returns the index in the friend frame of the given Battle.net friend.
---@param presenceID number - A unique numeric identifier for the friend's battle.net account during this session.
---@return number index - The Battle.net friend's index on the friends list
---@since Patch 6.2.4 (2016-03-22): Replaced presenceID with bnetIDAccount.
function BNGetFriendIndex(presenceID)
end

---Returns info for a Battle.net friend invite.
---@param inviteIndex number - Ranging from 1 to BNGetNumFriendInvites()
---@return number inviteID - Also known as the presence id.
---@return number accountName - Protected string for the friend account name, e.g. "|Kq4|k".
---@return boolean isBattleTag 
---@return string message ? - Appears to be always nil now.
---@return number sentTime - The unix time when the invite was sent/received.
---@since Patch 3.3.5 (2010-06-22): Added.
function BNGetFriendInviteInfo(inviteIndex)
end

---Returns the player's own Battle.net info.
---@return number presenceID ? - Your presenceID - appears to be always nil in 8.1.5
---@return string battleTag - A nickname and number that when combined, form a unique string that identifies the friend (e.g., "Nickname#0001")
---@return number toonID - Your toonID
---@return string currentBroadcast - the current text in your broadcast box
---@return boolean bnetAFK - true if you're flagged "Away"
---@return boolean bnetDND - true if you're flagged "Busy"
---@return boolean isRIDEnabled 
function BNGetInfo()
end

---Returns the amount of (online) Battle.net friends.
---@return number numBNetTotal - amount of Battle.net friends on the friends list
---@return number numBNetOnline - online Battle.net friends
---@return number numBNetFavorite - favorite battle.net friends
---@return number numBNetFavoriteOnline - favorite online battle.net friends
---@since Patch 8.2.0 (2019-06-25): Added numBNetFavorite and numBNetFavoriteOnline. This fixes the friends list sorting.
function BNGetNumFriends()
end

---Sends a hidden addon message to a Battle.net friend.
---@param gameAccountID number - The game account ID of the friend during this session.
---@param prefix string - An addon messaging prefix previously registered with C_ChatInfo.RegisterAddonMessagePrefix.
---@param text string - The data to be sent. Limited to 4078 bytes or less.
---@since Patch 5.4.7 (2014-02-18): Added.
function BNSendGameData(gameAccountID, prefix, text)
end

---Sends a whisper to Battle.net friends.
---@param bnetAccountID number - A unique numeric identifier for the friend during this session. You can get bnetAccountID from C_BattleNet.GetFriendAccountInfo()
---@param message string - Message text. Must be less than 4096 bytes.
function BNSendWhisper(bnetAccountID, message)
end

---Sets the player's online AFK status.
---@param bool boolean - true set your battle.net status to afk and false unset it.
function BNSetAFK(bool)
end

---Sends a broadcast message to your Real ID friends.
---@param text string - message to be broadcasted (max 127 chars)
function BNSetCustomMessage(text)
end

---Sets the player's online DND status.
---@param bool boolean - true set your battle.net status to dnd and false unset it.
function BNSetDND(bool)
end

---Favorites a Battle.net friend.
---@param id number - account Id
---@param isFavorite boolean 
---@since Patch 8.2.0 (2019-06-25): Added.
function BNSetFriendFavoriteFlag(id, isFavorite)
end

---Sets the Friend Note for a specific Battle.Net friend.
---@param bnetIDAccount number - A unique numeric identifier for the friend's battle.net account during this session.
---@param noteText string - The text you wish to set as the battle.net friend's new note.
function BNSetFriendNote(bnetIDAccount, noteText)
end

---Accepts an offer to start trading with another player.
function BeginTrade()
end

---Divides digits into groups using a localized delimiter character.
---@param value number - The number to convert into a localized string
---@return string valueString - The whole-number portion converted into a string if greater than 1000, or truncated to two decimals if less than 1000.
---@since Patch 6.0.2 (2014-10-14): Transferred from FrameXML to userdata in the game engine; no impact on functionality.[1]
function BreakUpLargeNumbers(value)
end

---Purchases a  [Guild Charter].
---@param guildName string - Name of the guild you wish to purchase a guild charter for.
function BuyGuildCharter(guildName)
end

---Buys an item from a merchant.
---@param index number - The index of the item in the merchant's inventory
---@param quantity number ? - Quantity to buy.
function BuyMerchantItem(index, quantity)
end

---Buys a trainer service (e.g. class skills and profession recipes).
---@param index number - The index of the service to train.
function BuyTrainerService(index)
end

---Buys back an item from the merchant.
---@param slot number - the slot from topleft to bottomright of the Merchant Buyback window.
function BuybackItem(slot)
end

---
---@param firstString stringView 
---@param secondString stringView 
---@return number distance 
function CalculateStringEditDistance(firstString, secondString)
end

---- C_PetJournal.SummonPetByGUID- C_MountJournal.SummonByID
---@param type string - The type of companion to summon or dismiss: "CRITTER" or "MOUNT".
---@param id number - The companion index to summon or dismiss, ascending from 1.
---@since Patch 5.0.4 (2012-08-28): Companions are now account-wide. This function only works for non-combat companions (battle pets) your character had acquired before the account-wide merge, as well as all mounts. For summoning battle pets, use the C_PetJournal API.
function CallCompanion(type, id)
end

---#protected - This can only be called from secure code.
---@since Patch 2.0.1 (2006-12-05): Protected.
function CameraOrSelectOrMoveStart()
end

---#protected - This can only be called from secure code.
---@param stickyFlag boolean ? - If present and set then any camera offset is 'sticky' and remains until explicitly cancelled.
---@since Patch 2.0.1 (2006-12-05): Protected.
function CameraOrSelectOrMoveStop(stickyFlag)
end

---
---@param increment number = 1
function CameraZoomIn(increment)
end

---Zooms the camera out.
---@param increment number = 1
function CameraZoomOut(increment)
end

---Returns true if the unit can be marked with a raid target icon.
---@param unit string UnitToken
---@return boolean canBeRaidTarget - true if raid target markers can be assigned to the queried unit, false otherwise.
---@since Patch 4.0.1 (2010-10-12): Added.
function CanBeRaidTarget(unit)
end

---Returns true if an in-game cinematic/cutscene can be canceled.
---@return boolean cancel 
function CanCancelScene()
end

---
---@return boolean canChange 
---@return boolean notOnCooldown 
function CanChangePlayerDifficulty()
end

---Returns whether a mail can be reported as spam.
---@param mailID number -  Index of a mail in the player's inbox (between 1 and GetInboxNumItems
---@return boolean canComplain ? - True if the mail can be reported as spam; otherwise false
function CanComplainInboxItem(mailID)
end

---Returns whether the player can  [Dual Wield] weapons.
---@return boolean canDualWield - This returns true if One-Hand weapons can be equipped into both INVSLOT_MAINHAND and INVSLOT_OFFHAND.
function CanDualWield()
end

---Returns true if the player can edit the guild message of the day.
---@return boolean canEdit - Returns true if the player can edit the guild MOTD
function CanEditMOTD()
end

---
---@param virtualSeatIndex number 
---@return boolean canEject 
function CanEjectPassengerFromSeat(virtualSeatIndex)
end

---Returns true if the player can demote guild members.
---@return boolean canDemote - Returns true if the player can demote.
function CanGuildDemote()
end

---Returns true if the player can invite new members to the guild.
---@return boolean canInvite - Whether you can invite people to your current guild
function CanGuildInvite()
end

---Returns true if the player can promote guild members.
---@return boolean canPromote - Returns 1 if the player can promote, nil if not.
function CanGuildPromote()
end

---Returns true if the player can inspect the unit.
---@param unit string UnitId
---@param showError boolean ? - If true, the function will display an error message ("You can't inspect that unit") if you cannot inspect the specified unit.
---@return boolean canInspect - True if you can inspect the specified unit
function CanInspect(unit, showError)
end

---Returns true if the item can be socketed to an artifact.
---@param itemID number 
---@return boolean canSocket 
function CanItemBeSocketedToArtifact(itemID)
end

---Returns true if the player can join a battlefield with a group.
---@return boolean isTrue - returns true, if the player can join the battlefield as group
function CanJoinBattlefieldAsGroup()
end

---
---@param targetUnit string WOWGUID
---@return boolean hasLoot 
---@return boolean canLoot 
function CanLootUnit(targetUnit)
end

---
---@param mapID number ?
---@return boolean canChange 
function CanMapChangeDifficulty(mapID)
end

---Returns true if the merchant can repair items.
---@return boolean canRepair - True if the merchant can repair, false otherwise.
function CanMerchantRepair()
end

---Returns whether you can impeach the Guild Master due to inactivity.
---@return boolean canReplace - true if you can replace the Guild Master.
---@since Patch 4.3.0 (2011-11-29): Added.
function CanReplaceGuildMaster()
end

---Returns true if the character is on a digsite.
---@return boolean onSite - true if the player is currently on a digsite (and can use  [Survey]), false otherwise.
---@since Patch 5.4.0 (2013-09-10): Added.
function CanScanResearchSite()
end

---Returns if the AchievementUI can be displayed.
---@return boolean canShow - true if the achievement data is available (and hence the AchievementUI can be displayed), false otherwise.
---@since Patch 3.0.2 (2008-10-14): Added.
function CanShowAchievementUI()
end

---Returns true if the character can currently reset their instances.
---@return boolean canReset - true if player can reset instances
---@since Patch 1.11.0 (2006-06-19): Added.
function CanShowResetInstances()
end

---
---@return boolean result 
function CanShowSetRoleButton()
end

---Returns true if the current artifact can be solved, i.e. has enough fragments.
---@return boolean canSolve 
function CanSolveArtifact()
end

---
---@return boolean canSwitch 
function CanSwitchVehicleSeat()
end

---Returns true if the player can switch vehicle seats.
---@return boolean canSwitchSeats 
function CanSwitchVehicleSeats()
end

---
---@return boolean canUpgradeExpansion 
---@since Patch 4.3.0 (2011-11-29): Added.
function CanUpgradeExpansion()
end

---Checks if the player can view specific guild recipes.
---@param skillID number - The skill ID to view recipes of. See GetGuildTradeSkillInfo on how to fetch a skill ID.
---@return boolean canView - Returns 1 if the player can promote, nil if not.
function CanViewGuildRecipes(skillID)
end

---Cancels the Spirit Healer's resurrection in battlegrounds.
function CancelAreaSpiritHeal()
end

---Forfeits the current duel or declines a duel invitation.
function CancelDuel()
end

---#protected - This can only be called from secure code.Use the "cancelaura" action type of SecureActionButtonTemplate with the "target-slot" attribute set to weapon slot ID.
---@param weaponHand number - 1 for Main Hand, 2 for Off Hand.
---@since Patch 4.0.1 (2010-10-12): Protected.
function CancelItemTempEnchantment(weaponHand)
end

---#protected - This can only be called from secure code.
function CancelLogout()
end

---Cancels a pending equip confirmation.
---@param slot number - equipment slot to cancel equipping an item to.
function CancelPendingEquip(slot)
end

---
---@param movieId number 
function CancelPreloadingMovie(movieId)
end

---Cancels an in-game cinematic/cutscene involving NPC actors and scenescripts.
function CancelScene()
end

---#protected - This can only be called from secure code.Use the /cancelform or /cancelaura slash commands.
---@since Patch 3.0.2 (2008-10-14): Protected.
function CancelShapeshiftForm()
end

---Declines the current trade offer.
function CancelTrade()
end

---#nocombat - This cannot be called while in combat.Restricted since patch 4.0.1; Use /cancelaura Buff Name in macros, or SecureAuraHeaderTemplate if re-implementing buff frames.
---@param unit string UnitToken - The unit to cancel the buff from, must be under the player's control.
---@param buffIndex number - index of the buff to cancel, ascending from 1.
---@param filter string ? - any of combination of "HELPFUL|HARMFUL|PLAYER|RAID|CANCELABLE|NOT_CANCELABLE".
---@since Patch 8.0.1 (2018-07-17): Removed ability to cancel by name and rank. Functionality replaced by CancelSpellByName.
function CancelUnitBuff(unit, buffIndex, filter)
end

---Converts a string with accented letters to lowercase.
---@param name string - The string to be converted to lowercase.
---@return string lower - A lowercased equivalent of the input string.
---@since Patch 6.2.0 (2015-06-23): Added.
function CaseAccentInsensitiveParse(name)
end

---#protected - This can only be called from secure code.The "pet" action type of SecureActionButtonTemplate can be used to call this function.
---@param index number - pet action bar slot index, ascending from 1.
---@param target string ? : UnitToken - The unit to cast the action on; defaults to "target".
---@since Patch 2.0.1 (2006-12-05): Protected.
function CastPetAction(index, target)
end

---#protected - This can only be called from secure code.Use the /cast slash command.
---@param index number - specifies which shapeshift form to activate or toggle; generally equivalent to the index of the form on the stance bar.
---@since Patch 2.0.1 (2006-12-05): Protected.
function CastShapeshiftForm(index)
end

---#protected - This can only be called from secure code.Use the "spell" action type of SecureActionButtonTemplate or the /cast slash command.
---@param spellIndex number - index of the spell to cast.
---@param spellbookType string - spellbook to cast the spell from; one of
---@since Patch 2.0.1 (2006-12-05): Protected.
function CastSpell(spellIndex, spellbookType)
end

---#protected - This can only be called from secure code.Use the "spell" action type of SecureActionButtonTemplate or the /cast slash command.
---@param name string - Name of the spell to cast, e.g. "Alchemy".
---@param target string ? : UnitId - The unit to cast the spell on. If omitted, "target" is assumed for spells that require a target.
---@since Patch 2.0.1 (2006-12-05): Protected.
function CastSpellByName(name, target)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0
---@param page number - Which page of your action bar to switch to. Expects an integer 1-6.
function ChangeActionBarPage(page)
end

---Updates the color for a type of chat message.
---@param channelName string - Name of the channel as given in chat-cache.txt files.
---@param red number - RGB values (0-1, floats).
---@param green number 
---@param blue number 
function ChangeChatColor(channelName, red, green, blue)
end

---Bans a player from the specified channel.
---@param channelName string - The name of the channel to ban on
---@param playerName string - The name of the player to ban
function ChannelBan(channelName, playerName)
end

---Invites the specified user to the channel.
---@param channelName string - The name of the channel to invite to
---@param playerName string - The name of the player to invite
function ChannelInvite(channelName, playerName)
end

---Kicks a player from the specified channel.
---@param channelName string - The name of the channel to kick from
---@param playerName string - The name of the player to kick
function ChannelKick(channelName, playerName)
end

---Sets the specified player as the channel moderator.
---@param channelName string - The name of the channel to set moderator status on
---@param playerName string - The name of the player to set as a moderator
function ChannelModerator(channelName, playerName)
end

---Toggles the channel to display announcements either on or off.
---@param channelName string - The name of the channel to toggle announcements on
---@param playerName string 
function ChannelToggleAnnouncements(channelName, playerName)
end

---Unbans a player from the specified channel.
---@param channelName string - The name of the channel to remove the ban on
---@param playerName string - The name of the player to unban
function ChannelUnban(channelName, playerName)
end

---Takes the specified user away from the moderator status.
---@param channelName string - The name of the channel to remove moderator status on
---@param playerName string - The name of the player to remove moderator status from
function ChannelUnmoderator(channelName, playerName)
end

---Queries the server for mail.
function CheckInbox()
end

---#nocombat - This cannot be called while in combat.Restricted since patch 10.2.0.
---@param unit string UnitId - The unit to compare distance to.
---@param distIndex  5 = Pet-battle Duel, 7 yards
---@return boolean inRange - 1 if you are in range to perform the interaction, nil otherwise.
---@since Hotfix (2023-12-11): Partially unrestricted. Querying enemy units while in combat is once again permitted.  (Build: 10.2.0.52485)
function CheckInteractDistance(unit, distIndex)
end

---
---@return boolean result 
function CheckTalentMasterDist()
end

---
---@param movieType Enum.CinematicType 
function CinematicFinished(movieType)
end

---
---@param movieType Enum.CinematicType 
function CinematicStarted(movieType)
end

---
---@param expansionLevel number 
---@return boolean isAtLeast 
function ClassicExpansionAtLeast(expansionLevel)
end

---
---@param expansionLevel number 
---@return boolean isAtMost 
function ClassicExpansionAtMost(expansionLevel)
end

---Clears any objects from the cursor.
function ClearCursor()
end

---
function ClearCursorHoveredItem()
end

---Clears the focus target.
(/clearfocus still works however.)
function ClearFocus()
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0
---@param owner Frame🔗 - The frame to clear override bindings for.
function ClearOverrideBindings(owner)
end

---
function ClearPendingBindConversionItem()
end

---Clears the text and item attachments in the Send Mail tab.
function ClearSendMail()
end

---#protected - This can only be called from secure code.Use SecureActionButtonTemplate's "target" action type, or the /cleartarget slash command.
---@return boolean willMakeChange 
---@since Patch 10.1.7 (2023-09-05): As of 2023-09-19 this appeared to be unprotected (build 53313) but was hotfixed shortly after.
function ClearTarget()
end

---Drops or picks up an item from the cursor to the Send Mail tab.
---@param itemIndex number ? - The index of the item (1-ATTACHMENTS_MAX_SEND(12))
---@param clearItem boolean ? - Clear the item already in this slot. (Done by right clicking an item)
function ClickSendMailItemButton(itemIndex, clearItem)
end

---Close an open item text (book, plaque, etc).
function CloseItemText()
end

---Close the loot window.
---@param errNum number ? - A reason for the window closing.  Unsure whether/how the game deals with error codes passed to it.
function CloseLoot(errNum)
end

---Closes the mail window.
function CloseMail()
end

---Closes the merchant window.
function CloseMerchant()
end

---Closes the current petition.
function ClosePetition()
end

---This appears to fire ARCHAEOLOGY_CLOSED.
function CloseResearch()
end

---Cancels pending gems for socketing.
function CloseSocketInfo()
end

---Closes the Flight Map.
function CloseTaxiMap()
end

---Closes the trade window.
function CloseTrade()
end

---Closes the trainer window.
function CloseTrainer()
end

---
---@param gameObjectID number 
---@return number xPos 
---@return number yPos 
---@return number distance 
function ClosestGameObjectPosition(gameObjectID)
end

---Returns the unit position of the closest creature by ID. Only works for mobs in the starting zones.
---@param creatureID number - NPC ID of a GUID of a creature.
---@return number xPos 
---@return number yPos 
---@return number distance - Relative distance in yards.
---@since Patch 8.0.1 (2018-07-17): Added.
function ClosestUnitPosition(creatureID)
end

---Collapses a quest log header.
---@param index number - Position in the quest log from 1 at the top, including collapsed and invisible content.
---@param isAuto boolean - Used when resetting the quest log to a default state.
function CollapseQuestHeader(index, isAuto)
end

---Advances the combat log selection by the given amount of entries.
---@param count number - number of entries to traverse within the combat log, see details below. Can be negative.
---@param ignoreFilter boolean ? - set to true to ignore combat log filters
---@return boolean isValidIndex - will return false if the new index does not exist in the combat log, but will still set the entry regardless. Otherwise, returns true for valid indices.
function CombatLogAdvanceEntry(count, ignoreFilter)
end

---Returns the combat log entry that is currently selected by CombatLogSetCurrentEntry().
function CombatLogGetCurrentEntry()
end

---Returns the current COMBAT_LOG_EVENT payload.
---@since Patch 8.0.1 (2018-07-17): Added. [2]
function CombatLogGetCurrentEventInfo()
end

---Sets the currently selected combat log entry to the given value, to be retrieved using CombatLogGetCurrentEntry().
---@param index number - see details below
---@param ignoreFilter boolean ? - set to true to ignore combat log filters
---@return boolean isValidIndex - will return false if the index does not exist in the combat log, but will still set the entry. Otherwise, returns true for valid indices.
function CombatLogSetCurrentEntry(index, ignoreFilter)
end

---Returns whether a unit from the combat log matches a given filter.
---@param unitFlags number - UnitFlag bitfield, i.e. sourceFlags or destFlags from COMBAT_LOG_EVENT.
---@param mask number - COMBATLOG_FILTER constant.
---@return boolean isMatch - True if a bitfield in each of the four main categories matches.
---@since Patch 2.4.2 (2008-05-13): Added.
function CombatLog_Object_IsA(unitFlags, mask)
end

---Changes the entity for which COMBAT_TEXT_UPDATE events fire.
---@param unit string UnitId - The the entity you want to receive notifications for.
function CombatTextSetActiveUnit(unit)
end

---Continues the quest dialog to the reward selection step.
function CompleteQuest()
end

---Accepts a quest started by a group member (e.g. escort quests).
function ConfirmAcceptQuest()
end

---
---@param presenceID number 
---@param tank boolean ?
---@param healer boolean ?
---@param dps boolean ?
---@since Patch 8.2.5 (2019-09-24): Added.
function ConfirmBNRequestInviteFriend(presenceID, tank, healer, dps)
end

---Confirms a loot roll.
---@param rollID number - As passed by the event. (The number increases with every roll you have in a party)
---@param roll  3 : Disenchant roll
function ConfirmLootRoll(rollID, roll)
end

---Confirms looting of a BoP item.
---@param slot number - the loot slot of a BoP loot item that is waiting for confirmation
function ConfirmLootSlot(slot)
end

---Responds to a ready check.
---@param isReady number ? - 1 if the player is ready, nil if the player is not ready
function ConfirmReadyCheck(isReady)
end

---
function ConfirmTalentWipe()
end

---
---@param command string 
---@param addToHistory boolean ? = false
---@param prefix string ?
---@return boolean result 
function ConsoleEcho(command, addToHistory, prefix)
end

---Execute a console command.
---@param command string - The console command to execute.
function ConsoleExec(command)
end

---
---@return ConsoleCommandInfo commands []
function ConsoleGetAllCommands()
end

---
---@param colorType Enum.ConsoleColorType 
---@return colorRGB color 🔗
function ConsoleGetColorFromType(colorType)
end

---
---@return number fontHeightInPixels 
function ConsoleGetFontHeight()
end

---
---@return boolean consoleIsActive 
function ConsoleIsActive()
end

---
---@param partialCommandText string 
function ConsolePrintAllMatchingCommands(partialCommandText)
end

---
---@param fontHeightInPixels number 
function ConsoleSetFontHeight(fontHeightInPixels)
end

---
function ConvertItemToBindToAccount()
end

---#protected - This can only be called from secure code.
---@param text string 
---@param removeMarkup boolean ? = false
---@return number length 
function CopyToClipboard(text, removeMarkup)
end

---Creates a Font object.
---@param name string - Globally-accessible name to be assigned for use as _G["name"]
---@return Font🔗 fontObject - Reference to the new font object.
function CreateFont(name)
end

---
---@param name string 
---@param members CreateFontFamilyMemberInfo []
---@return Font🔗 fontFamily 
function CreateFontFamily(name, members)
end

---Creates a Frame object.
---@param frameType string - Type of the frame; e.g. "Frame" or "Button".
---@param name string ? - Globally accessible name to assign to the frame, or nil for an anonymous frame.
---@param parent Frame?🔗 - Parent object to assign to the frame, or nil to be parentless; cannot be a string. Can also be set with Region:SetParent()
---@param template string ? - Comma-delimited list of virtual XML templates to inherit; see also a complete list of FrameXML templates.
---@param id number ? - ID to assign to the frame. Can also be set with Frame:SetID()
---@return Frame🔗 frame - The created Frame object or one of the other frame type objects.
---@since Patch 2.0.1 (2006-12-05): The fourth argument, inheritFrame, now accepts comma-separated values.
function CreateFrame(frameType, name, parent, template, id)
end

---Copies (or mixes in) children from one or more tables into another.
---@since Patch 11.2.0 (2025-08-05): Implementation moved to a native client function.
function CreateFromMixins()
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0.1
---@param name string - The name of the macro to be displayed in the UI. The current UI imposes a 16-character limit.
---@param iconFileID number |string - A FileID or string identifying the icon texture to use. The available icons can be retrieved by calling GetMacroIcons() and GetMacroItemIcons(); other textures inside Interface\ICONS may also be used.
---@param body string ? - The macro commands to be executed. If this string is longer than 255 characters, only the first 255 will be saved.
---@param perCharacter boolean ? - true to create a per-character macro, nil to create a general macro available to all characters.
---@return number macroId - The 1-based index of the newly-created macro, as displayed in the "Create Macros" UI.
---@since Patch 3.0.2 (2008-10-14): Macros are now saved on the server by default. The positions of perCharacter and localStore arguments were switched.
function CreateMacro(name, iconFileID, body, perCharacter)
end

---
---@param popupStyle boolean ? = true
---@param topMost boolean ? = false
---@return SimpleWindow window ?
---@since Patch 11.1.0 (2025-02-25): Added topMost argument.
function CreateWindow(popupStyle, topMost)
end

---Returns true if the cursor currently holds an item.
---@return boolean hasItem - Whether the cursor is holding an item.
function CursorHasItem()
end

---
---@return boolean result 
function CursorHasMacro()
end

---
---@return boolean result 
function CursorHasMoney()
end

---
---@return boolean result 
function CursorHasSpell()
end

---Returns a table representing the last five damaging combat events against the player.
---@param recapID number - The specific death to view, from 1 to the most recent death. If this is not given, the most recent ID is used.
---@return table events - A table of events for the chosen death, or nil if the player has not died this session.
---@since Patch 6.1.0 (2015-02-24): Added
function DeathRecap_GetEvents(recapID)
end

---Returns a boolean for if the player has any available death events.
---@return boolean hasEvents - Whether or not DeathRecap_GetEvents can return a useful value.
---@since Patch 6.1.0 (2015-02-24): Added
function DeathRecap_HasEvents()
end

---Declines an invitation to join a specific chat channel.
---@param channel string - name of the channel the player was invited to but does not wish to join.
---@since Patch 5.2.0 (2013-03-05): Added.
function DeclineChannelInvite(channel)
end

---Declines an invitation to a group.
function DeclineGroup()
end

---Declines a guild invite.
function DeclineGuild()
end

---Returns suggested declensions for a Russian name.
---@param name string - Nominative form of the player's or pet's name (string)
---@param gender Enum.UnitSex ? - Gender for the returned names (for declensions of the player's name, should match the player's gender; for the pet's name, should be neuter).
---@return string genitive 
---@return string dative 
---@return string accusative 
---@return string instrumental 
---@return string prepositional 
function DeclineName(name, gender)
end

---Declines the currently offered quest.
function DeclineQuest()
end

---Declines a resurrection offer.
function DeclineResurrect()
end

---#protected - This can only be called from secure code.
---@param spellID number - spell ID of the prompt to decline.
---@since Patch 10.0.7 (2023-03-21): Protected.
function DeclineSpellConfirmationPrompt(spellID)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.* Limited to deleting a single item per hardware event.
---@since Patch 9.1.5 (2021-11-02): Protected when called from a (macro) script. Limited to deleting a single item per hardware event.
function DeleteCursorItem()
end

---Requests the server to remove a mailbox message.
---@param index number - the index of the message (1 is the first message)
function DeleteInboxItem(index)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0.1
---@param indexOrName number |string - Index ranging from 1 to 120 for account-wide macros and 121 to 138 for character-specific ones or name of the macro to delete.
---@since Patch 2.0.1 (2006-12-05): Protected during combat,[1] but now also accepts a macro's name as an argument.[2]
function DeleteMacro(indexOrName)
end

---#protected - This can only be called from secure code.
---@since Patch 2.1.0 (2007-05-22): Added; SitOrStand split into SitStandOrDescendStart and this function.
function DescendStop()
end

---#protected - This can only be called from secure code.
---@param slot number - The totem type to be destroyed, where Fire is 1, Earth is 2, Water is 3 and Air is 4.
function DestroyTotem(slot)
end

---Pretty prints a variable or value. Equivalent to the /dump macro.
---@param value any - The value to be printed. Multiple values can be printed at once by wrapping them in a table.
---@param startKey any ?
function DevTools_Dump(value, startKey)
end

---Dismisses the current companion.
---@param type string - type of companion to dismiss, either "MOUNT" or "CRITTER".
---@since Patch 3.0.2 (2008-10-14): Added.
function DismissCompanion(type)
end

---Dismounts the character.
---@since Patch 2.0.3 (2007-01-09): Added.
function Dismount()
end

---Prints the name of the owner of the specified channel.
---@param channelName string 
function DisplayChannelOwner(channelName)
end

---Similar to /hello, if you are targeting something "You greet %s with a hearty hello!", otherwise "You greet everyone with a hearty hello!"
---@param token string EmoteToken - The emote to perform.
---@param unit string ? : UnitToken : - Who the emote will be performed on. Defaults to the current target.
---@param hold boolean ? - Supposedly holds the emote animation until canceled, like for the /read emote.
---@return boolean restricted - If an emote is restricted this tells the UI to show it as an unrecognized chat command.[1] For example DoEmote("FORTHEHORDE") while being alliance.
function DoEmote(token, unit, hold)
end

---Initiates a ready check.
function DoReadyCheck()
end

---
---@return boolean regionSellsExpansions 
---@since Patch 7.3.2 (2017-10-24): Added.
function DoesCurrentLocaleSellExpansionLevels()
end

---Drops money held by the cursor back into your bag.
function DropCursorMoney()
end

---Clears the encounter journal search results.
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_ClearSearch()
end

---Ends any active encounter journal search.
---@since Patch 7.0.3 (2016-07-19): Added.
function EJ_EndSearch()
end

---Returns the currently selected content tuning ID for BFA instances per EJ_SelectInstance.
---@return number tuningID : ContentTuning.ID
---@since Patch 8.0.1 (2018-07-17): Added.
function EJ_GetContentTuningID()
end

---Returns encounter boss info.
---@param index number - Creature index, up to nine for encounters with multiple bosses.
---@param encounterID number ? : JournalEncounterID - if omitted this will default to the currently viewed encounter.
---@return number id : JournalEncounterCreature.ID
---@return string name 
---@return string description 
---@return number displayInfo : displayID
---@return number iconImage : FileID
---@return number uiModelSceneID : ModelSceneID
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_GetCreatureInfo(index, encounterID)
end

---Returns the currently active encounter journal tier index.
---@return number index - the current tier index
---@since Patch 5.0.4 (2012-08-28): Added.
function EJ_GetCurrentTier()
end

---Returns the currently viewed difficulty in the journal.
---@return number difficultyId 
---@since Patch 4.3.0 (2011-11-29): Added.
function EJ_GetDifficulty()
end

---Returns encounter info from the journal.
---@param journalEncounterID number JournalEncounterID
---@return string name 
---@return string description 
---@return number journalEncounterID : JournalEncounterID - IDs for the Encounter Journal
---@return number rootSectionID : JournalEncounterSection.ID - The first section article that describes the boss abilities
---@return string link : journalLink
---@return number journalInstanceID : JournalInstance.ID - The dungeon instance as used by the Encounter Journal
---@return number dungeonEncounterID : DungeonEncounterID - IDs from ENCOUNTER_START
---@return number instanceID : InstanceID - The map instance
---@since Patch 8.2.0 (2019-06-25): Added dungeonEncounterID, instanceID returns.[1]
function EJ_GetEncounterInfo(journalEncounterID)
end

---Returns encounter info from the journal.
---@param journalEncounterID number JournalEncounterID
---@return string name 
---@return string description 
---@return number journalEncounterID : JournalEncounterID - IDs for the Encounter Journal
---@return number rootSectionID : JournalEncounterSection.ID - The first section article that describes the boss abilities
---@return string link : journalLink
---@return number journalInstanceID : JournalInstance.ID - The dungeon instance as used by the Encounter Journal
---@return number dungeonEncounterID : DungeonEncounterID - IDs from ENCOUNTER_START
---@return number instanceID : InstanceID - The map instance
---@since Patch 8.2.0 (2019-06-25): Added dungeonEncounterID, instanceID returns.[1]
function EJ_GetEncounterInfoByIndex(journalEncounterID)
end

---Returns instance info for the Encounter Journal.
---@param index number 
---@param isRaid boolean - whether to return raid or normal instances.
---@return number 1. instanceID : JournalInstance.ID
---@return string 2. name 
---@return string 3. description 
---@return number 4. bgImage : FileID
---@return number 5. buttonImage1 : FileID
---@return number 6. loreImage : FileID
---@return number 7. buttonImage2 : FileID
---@return number 8. dungeonAreaMapID : UiMapID - 0 for raids before Siege of Orgrimmar (not including Timewalking raids), raid world bosses, and dungeons.
---@return string 9. link : journalLink
---@return boolean 10. shouldDisplayDifficulty 
---@return number 11. mapID - The InstanceID for the instance.
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_GetInstanceByIndex(index, isRaid)
end

---Returns any corresponding instance ID for a UiMapID.
---@param mapID number UiMapID
---@return number instanceID : JournalInstance.ID
---@since Patch 8.0.1 (2018-07-17): Added. Replaces EJ_GetCurrentInstance.
function EJ_GetInstanceForMap(mapID)
end

---Returns instance info for the Encounter Journal.
---@param journalInstanceID number ? : JournalInstance.ID - If omitted, defaults to the currently selected instance from EJ_SelectInstance()
---@return string 1. name 
---@return string 2. description 
---@return number 3. bgImage : FileID
---@return number 4. buttonImage1 : FileID
---@return number 5. loreImage : FileID
---@return number 6. buttonImage2 : FileID
---@return number 7. dungeonAreaMapID : UiMapID - 0 for raids before Siege of Orgrimmar (not including Timewalking raids), raid world bosses, and dungeons.
---@return string 8. link : journalLink
---@return boolean 9. shouldDisplayDifficulty 
---@return number 10. mapID - The InstanceID for the instance.
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_GetInstanceInfo(journalInstanceID)
end

---Returns the sort order for an inventory type.
---@param invType number Enum.InventoryType
---@return number sortOrder 
---@since Patch 7.0.3 (2016-07-19): Added.
function EJ_GetInvTypeSortOrder(invType)
end

---Returns the currently used loot filter.
---@return number classID 
---@return number specID 
---@since Patch 5.0.4 (2012-08-28): Added.
function EJ_GetLootFilter()
end

---Returns boss pin locations on instance maps.
---@param uiMapID number UiMapID
---@param index number - index of the boss pins.
---@param fromJournal boolean ? - this function seems to only return results when passing true.
---@return number x - x coordinate
---@return number y - y coordinate
---@return number instanceID : JournalInstance.ID
---@return string name 
---@return string description 
---@return number encounterID : JournalEncounterID
---@return number rootSectionID : JournalEncounterSection.ID
---@return string link : journalLink
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_GetMapEncounter(uiMapID, index, fromJournal)
end

---Returns the amount of encounters that drop the same loot item.
---@param index number - ranging from 1 to EJ_GetNumLoot.
---@return number numLoot 
---@since Patch 7.0.3 (2016-07-19): Added.
function EJ_GetNumEncountersForLootByIndex(index)
end

---Returns the amount of loot for the currently selected instance or encounter per EJ_SelectInstance.
---@return number numLoot 
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_GetNumLoot()
end

---Returns the number of search results for the Encounter Journal.
---@return number numResults 
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_GetNumSearchResults()
end

---Returns the number of valid encounter journal tier indices.
---@return number numTiers - The number of encounter journal tier indices.
---@since Patch 5.0.4 (2012-08-28): Added.
function EJ_GetNumTiers()
end

---Returns the search bar's progress ratio.
---@return number searchProgress - up to EJ_GetSearchSize.
---@since Patch 7.0.3 (2016-07-19): Added.
function EJ_GetSearchProgress()
end

---Returns search results for the Encounter Journal.
---@param index number - search result index, ascending from 1 to EJ_GetNumSearchResults().
---@return number id - ID of the matching loot/encounter/creature/section or instance.
---@return number stype - result type; ascending from 0 for loot, encounter, creature, section, and instance respectively.
---@return number difficultyID : DifficultyID
---@return number instanceID : JournalInstance.ID
---@return number encounterID : JournalEncounterID
---@return string itemLink : ItemLink
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_GetSearchResult(index)
end

---Returns the amount of Encounter Journal objects to search through.
---@return number searchSize 
---@since Patch 7.0.3 (2016-07-19): Added.
function EJ_GetSearchSize()
end

---Returns the parent Section ID if available.
---@param sectionID number 
---@return number sectionID : JournalEncounterSection.ID
---@return number parentSectionID ?
---@return number grandParentSectionID ?
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_GetSectionPath(sectionID)
end

---Get some information about the encounter journal tier for index.
---@param index number - The index of the tier. Ranging from 1 to EJ_GetNumTiers(). See below for details.
---@return string name - The (localized) tier name.
---@return string link - The (localized) tier link.
function EJ_GetTierInfo(index)
end

---Returns the supplementary instance and encounter ID for an encounter or section ID.
---@param journalType number 
---@param id number - depending on journal type; 0=instanceID, 1=encounterID, 2=sectionID
---@return number instanceID : JournalInstance.ID
---@return number encounterID ? : JournalEncounterID
---@return number sectionID ? : JournalEncounterSection.ID
---@return number tierIndex ?
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_HandleLinkPath(journalType, id)
end

---Returns whether the selected instance is a raid.
---@return boolean isRaid 
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_InstanceIsRaid()
end

---Returns whether the loot list is out of date in relation to any filters when getting new loot data.
---@return boolean listOutOfDate 
---@since Patch 7.0.3 (2016-07-19): Added.
function EJ_IsLootListOutOfDate()
end

---Returns whether the current search has finished.
---@return boolean isFinished 
---@since Patch 7.0.3 (2016-07-19): Added.
function EJ_IsSearchFinished()
end

---Returns whether the difficultyID is valid for use in the journal.
---@param difficultyID number - the following IDs should be valid
---@return boolean isValid 
---@since Patch 7.0.3 (2016-07-19): Added.
function EJ_IsValidInstanceDifficulty(difficultyID)
end

---Clears any current loot filter in the journal.
---@since Patch 5.0.4 (2012-08-28): Added.
function EJ_ResetLootFilter()
end

---Selects an encounter for the Encounter Journal API state.
---@param encounterID number JournalEncounterID
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_SelectEncounter(encounterID)
end

---Selects an instance for the Encounter Journal API state.
---@param journalInstanceID number JournalInstance.ID
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_SelectInstance(journalInstanceID)
end

---Selects a tier for the Encounter Journal API state.
---@param index number - ranging from 1 to EJ_GetNumTiers.
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_SelectTier(index)
end

---Sets the encounter difficulty shown in the Encounter Journal.
---@param difficultyID number - ID of the difficulty to display ability/loot/encounter information for, as per GetDifficultyInfo.
---@since Patch 5.4.0 (2013-09-10): This function now uses standard instance difficulty IDs rather than its own enumeration.
function EJ_SetDifficulty(difficultyID)
end

---Sets the loot filter for a specialization.
---@param classID number 
---@param specID number 
---@since Patch 5.0.4 (2012-08-28): Added.
function EJ_SetLootFilter(classID, specID)
end

---Starts a search in the journal.
---@param text string 
---@since Patch 4.2.0 (2011-06-28): Added.
function EJ_SetSearch(text)
end

---#nocombat - This cannot be called while in combat.
---@param macroInfo number |string - The index or name of the macro to be edited. Index ranges from 1 to 120 for account-wide macros and 121 to 138 for character-specific.
---@param name string ? - The name to assign to the macro. The current UI imposes a 16-character limit. The existing name remains unchanged if this argument is nil.
---@param icon number |string? : FileID - The path to the icon texture to assign to the macro. The existing icon remains unchanged if this argument is nil.
---@param body string ? - The macro commands to be executed. If this string is longer than 255 characters, only the first 255 will be saved.
---@return number macroID - The new index of the macro, as displayed in the "Create Macros" UI. Same as argument "index" unless the macro name is changed, as they are sorted alphabetically.
function EditMacro(macroInfo, name, icon, body)
end

---
---@param virtualSeatIndex number 
function EjectPassengerFromSeat(virtualSeatIndex)
end

---Returns the frame which follows the current frame.
---@param currentFrame Frame?🔗 - The current frame. If omitted, returns the first frame.
---@return Frame?🔗 nextFrame - The frame following currentFrame. Returns nil if there are no more frames.
function EnumerateFrames(currentFrame)
end

---Returns a list of all available server channels (zone dependent).
---@return string channel1, channel2, ... containing all available server channels in this zone
function EnumerateServerChannels()
end

---Equips the currently picked up item to a specific inventory slot.
---@param slot number - The InventorySlotId to place the item into.
function EquipCursorItem(slot)
end

---Equips the currently pending Bind-on-Equip or Bind-on-Pickup item from the specified inventory slot.
---@param invSlot number InventorySlotId - The slot ID of the item being equipped
function EquipPendingItem(invSlot)
end

---Expands a quest log header.
---@param index number - Position in the quest log from 1 at the top, including collapsed and invisible content.
---@param isAuto boolean - Used when resetting the quest log to a default state.
---@since Patch 7.0.3 (2016-07-19): Added isAuto optional argument.[1]
function ExpandQuestHeader(index, isAuto)
end

---Returns the ID for the base spell.
---@param spellID number - The override spell ID
---@return number baseSpellID 
---@since Patch 8.0.1 (2018-07-17): Added.
function FindBaseSpellByID(spellID)
end

---Returns the ID for the override spell.
---@param spellID number - The base spell ID
---@return number overrideSpellID 
---@since Patch 8.0.1 (2018-07-17): Added.
function FindSpellOverrideByID(spellID)
end

---Flashes the game client icon in the Operating System.
---@param briefly boolean ? = false
---@since Patch 11.1.5 (2025-04-22): Added briefly argument.
function FlashClientIcon(briefly)
end

---Rotates the camera around the Z-axis.
---@param angle number 
function FlipCameraYaw(angle)
end

---Returns whether a flyout contains a specific spell.
---@param flyoutID number - flyout ID (as returned by GetSpellBookItemInfo or GetActionInfo).
---@param spellID number - spell ID.
---@return boolean hasSpell - true if the flyout contains the specified spell, false otherwise.
---@since Patch 5.1.0 (2012-11-27): Added.
function FlyoutHasSpell(flyoutID, spellID)
end

---#protected - This can only be called from secure code.Use the "focus" action type of SecureActionButtonTemplate or the /focus slash command.
---@param name string ? : UnitId - The unit to focus.
function FocusUnit(name)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param unit string UnitId - The unit to follow.
function FollowUnit(unit)
end

---#protected - This can only be called from secure code.
function ForceLogout()
end

---#protected - This can only be called from secure code.
---@since Patch 7.3.2 (2017-10-24): Protected.
function ForceQuit()
end

---
function GMRequestPlayerInfo()
end

---Returns the text of a specific question from a GM survey.
---@param index number 
function GMSurveyQuestion(index)
end

---Returns the expansion level the account has been flagged for.
---@return number expansionLevel - The expansion the player's game license has been flagged for.
---@since Patch 2.0.1 (2006-12-05): Added.
function GetAccountExpansionLevel()
end

---Returns the category number the requested achievement belongs to.
---@param achievementID number - ID of the achievement to retrieve information for.
---@return number categoryID - ID of the achievement's category.
---@since Patch 3.0.2 (2008-10-14): Added.
function GetAchievementCategory(achievementID)
end

---Returns information about the comparison unit's achievements.
---@param achievementID number - ID of the achievement to retrieve information for.
---@return boolean completed - Returns true/false depending on whether the unit has completed the achievement or not.
---@return number month - Month in which the unit has completed the achievement. Returns nil if completed is false.
---@return number day - Day of the month in which the unit has completed the achievement. Returns nil if completed is false.
---@return number year - Year (two digits, 21st century is assumed) in which the unit has completed the achievement. Returns nil if completed is false.
---@since Patch 3.0.2 (2008-10-14): Added.
function GetAchievementComparisonInfo(achievementID)
end

---Returns info for the specified achievement criteria.
---@param achievementID number - Achievement ID the queried criteria belongs to.
---@param criteriaIndex number - Index of the criteria to query, ascending from 1 up to GetAchievementNumCriteria(achievementID).
---@param countHidden boolean 
---@return string 1. criteriaString - The name of the criteria.
---@return number 2. criteriaType - Criteria type; specifies the meaning of the assetID.
---@return boolean 3. completed - True if you've completed this criteria; false otherwise.
---@return number 4. quantity - Quantity requirement imposed by some criteriaType.
---@return number 5. reqQuantity - The required quantity for the criteria. Used mostly in achievements with progress bars. Usually 0.
---@return string 6. charName - The name of the character that completed this achievement.
---@return number 7. flags - Some flags. Currently unknown purpose.
---@return number 8. assetID - Criteria data whose meaning depends on the type.
---@return string 9. quantityString - The string used to display the current quantity. Usually the string form of the quantity return.
---@return number 10. criteriaID - Unique criteria ID.
---@return boolean 11. eligible - True if the criteria is eligible to be completed; false otherwise. Used to determine whether to show the criteria line in the objectives tracker in red or not.
---@return number 12. duration 
---@return number 13. elapsed 
---@since Patch 5.0.4 (2012-08-28): Added GetAchievementCriteriaInfoByID()
function GetAchievementCriteriaInfo(achievementID, criteriaIndex, countHidden)
end

---Returns info for the specified achievement criteria.
---@param achievementID number - Achievement ID the queried criteria belongs to.
---@param criteriaIndex number - Index of the criteria to query, ascending from 1 up to GetAchievementNumCriteria(achievementID).
---@param countHidden boolean 
---@return string 1. criteriaString - The name of the criteria.
---@return number 2. criteriaType - Criteria type; specifies the meaning of the assetID.
---@return boolean 3. completed - True if you've completed this criteria; false otherwise.
---@return number 4. quantity - Quantity requirement imposed by some criteriaType.
---@return number 5. reqQuantity - The required quantity for the criteria. Used mostly in achievements with progress bars. Usually 0.
---@return string 6. charName - The name of the character that completed this achievement.
---@return number 7. flags - Some flags. Currently unknown purpose.
---@return number 8. assetID - Criteria data whose meaning depends on the type.
---@return string 9. quantityString - The string used to display the current quantity. Usually the string form of the quantity return.
---@return number 10. criteriaID - Unique criteria ID.
---@return boolean 11. eligible - True if the criteria is eligible to be completed; false otherwise. Used to determine whether to show the criteria line in the objectives tracker in red or not.
---@return number 12. duration 
---@return number 13. elapsed 
---@since Patch 5.0.4 (2012-08-28): Added GetAchievementCriteriaInfoByID()
function GetAchievementCriteriaInfoByID(achievementID, criteriaIndex, countHidden)
end

---
---@param id number 
---@return boolean requiresRep 
---@return boolean hasRep 
---@return number repLevel 
function GetAchievementGuildRep(id)
end

---Returns info for an achievement.
---@param achievementID number ID of the achievement to retrieve information for.
---@since Patch 7.3.0 (2017-08-29): Tenth return value (the icon) changed from a string texture path to a fileID.
function GetAchievementInfo(achievementID)
end

---Returns an achievement link.
---@param id number - The ID of the Achievement.
---@return string link - The achievementLink to this achievement.
---@since Patch 3.0.2 (2008-10-14): Added.
function GetAchievementLink(id)
end

---Returns the number of criteria for an achievement.
---@param achievementID number - Uniquely identifies each achievement
---@return number numCriteria - The number of criteria required for the given Achievement
---@since Patch 3.0.2 (2008-10-14): Added.
function GetAchievementNumCriteria(achievementID)
end

---Returns the current action bar page.
---@return number index - integer index of the current action bar page, ascending from 1.
function GetActionBarPage()
end

---Returns the enabled states for the extra action bars.
---@return boolean bar1 - True if the left-hand bottom action bar is shown, false otherwise.
---@return boolean bar2 - True if the right-hand bottom action bar is shown, false otherwise.
---@return boolean bar3 - True if the first (outer) right side action bar is shown, false otherwise.
---@return boolean bar4 - True if the second (inner) right side action bar is shown, false otherwise.
---@return boolean bar5 
---@return boolean bar6 
---@return boolean bar7 
function GetActionBarToggles()
end

---Returns information about the charges of a charge-accumulating player ability.
---@param slot number - The action slot to retrieve data from.
---@return number currentCharges - The number of charges of the ability currently available.
---@return number maxCharges - The maximum number of charges the ability may have available.
---@return number cooldownStart - Time (per GetTime) at which the next charge cooldown began, or 2^32 / 1000 if the spell is not currently recharging.
---@return number cooldownDuration - Time (in seconds) required to gain a charge.
---@return number chargeModRate - The rate at which the charge cooldown widget's animation should be updated.
---@since Patch 7.1.0 (2016-10-25): The chargeModRate return value was added.
function GetActionCharges(slot)
end

---Returns cooldown info for the specified action slot.
---@param slot number - The action slot to retrieve data from.
---@return number start - The time at which the current cooldown period began (relative to the result of GetTime), or 0 if the cooldown is not active or not applicable.
---@return number duration - The duration of the current cooldown period in seconds, or 0 if the cooldown is not active or not applicable.
---@return number enable - Indicate if cooldown is enabled, is greater than 0 if a cooldown could be active, and 0 if a cooldown cannot be active. This lets you know when a shapeshifting form has ended and the actual countdown has started.
---@return number modRate - The rate at which the cooldown widget's animation should be updated.
---@since Patch 7.1.0 (2016-10-25): The modRate return value was added.
function GetActionCooldown(slot)
end

---Returns the available number of uses for an action.
---@param actionSlot number - An action slot ID.
---@return number text - How often an item-based action (see details) may be performed; or always zero for other action types.
---@since Patch 1.13.3 (2019-12-10): Now returns zero for spells that require a reagent from your inventory; but still returns the normal value for consumables.
function GetActionCount(actionSlot)
end

---Returns info for an action.
---@param slot number - Action slot to retrieve information about.
---@return string actionType - Type of action button. (e.g. spell, item, macro, companion, equipmentset, flyout)
---@return number id |string - Appropriate identifier for the action specified by actionType -- e.g. spell IDs for spells, item IDs for items, equipment set names for equipment sets.
---@return string subType - Additional identifier for the action specified by actionType -- e.g. whether the companion ID is for a MOUNT or a CRITTER companion.
function GetActionInfo(slot)
end

---Returns information about a loss-of-control cooldown affecting an action.
---@param slot number - action slot to query information about.
---@return number start - time at which the cooldown began, per GetTime.
---@return number duration - duration of the cooldown in seconds; 0 if the action is not currently affected by a loss-of-control cooldown.
---@since Patch 5.1.0 (2012-11-27): Added.
function GetActionLossOfControlCooldown(slot)
end

---Returns the label text for an action.
---@param actionSlot number - The queried ActionSlot.
---@return string text The action's text, if present.  Macro actions use their names for their action text.
nil, if the slot has no action text, or is empty.  Most standard WoW action icons don't have action text.
function GetActionText(actionSlot)
end

---Returns the icon texture for an action.
---@param actionSlot number - The queried ActionSlot.
---@return number texture ? : fileID - Returns nil if the slot is empty.
function GetActionTexture(actionSlot)
end

---Returns the active Archaeology artifact for a race.
---@param branchIndex number - Index of the race to pick the artifact from.
---@param artifactIndex number 
---@return string artifactName - The name of the artifact.
---@return string artifactDescription - The description displayed on the artifact detail page. Only visible after completion for rare artifacts.
---@return string artifactRarity - The rarity of the artifact, 0 for Common and 1 for Rare.
---@return string artifactIcon - The path to the artifact's icon texture.
---@return string hoverDescription - The description shown in the tooltip when hovering over the completed artifact. Not visible before the artifact is completed. Not readily available on function call, see SpellMixin:ContinueOnSpellLoad.[1]
---@return number keystoneCount - The number of Keystone slots this artifact has. Only visible when this is the in progress artifact.
---@return string bgTexture - The path to the artifact's background texture. Only displayed when the artifact is rare.
---@since Patch 8.0.1 (2018-07-17): Fifth return value is only available after information loads on demand.[1]
function GetActiveArtifactByRace(branchIndex, artifactIndex)
end

---Returns the total time used for an addon.
---@param name number |string : uiAddon - The name of the addon to be queried, or an index from 1 to GetNumAddOns. The state of Blizzard addons can only be queried by name.
---@return number time - The total time used by the specified AddOn, in milliseconds.
---@since Patch 10.1.0 (2023-05-02): Will now raise an error if a secure addon is queried.
function GetAddOnCPUUsage(name)
end

---Returns the memory used for an addon.
---@param name number |string : uiAddon - The name of the addon to be queried, or an index from 1 to GetNumAddOns. The state of Blizzard addons can only be queried by name.
---@return number mem - Memory usage of the addon in kilobytes.
---@since Patch 10.1.0 (2023-05-02): Will now raise an error if a secure addon is queried.
function GetAddOnMemoryUsage(name)
end

---
---@return boolean allowLowLevel 
function GetAllowLowLevelRaid()
end

---Returns the localized name for the Archaeology profession.
---@return string localizedName - Localized name of the Archaeology secondary skill
function GetArchaeologyInfo()
end

---Returns the information for a specific race used in Archaeology.
---@param raceIndex number - Index of the race to query, between 1 and GetNumArchaeologyRaces().
---@return string raceName - Name of the race.
---@return number raceTexture (fileID) - The texture used by this race in the Archaeology UI.
---@return number raceItemID - Item ID of the Keystone used for the race's archaeology projects. Will be nil for Fossil as no such item exists.
---@return number numFragmentsCollected - Number of collected fragments for this race.
---@return number numFragmentsRequired - Number of fragments required to solve the current artifact
---@return number maxFragments - Maximum number of fragments that can be carried
---@since Patch 8.0.1 (2018-07-17): Added Zandalari and Drust
function GetArchaeologyRaceInfo(raceIndex)
end

---Returns info for an Archaeology race.
---@param branchID number - ID of the research branch (race) to query from ResearchBranch. The following are the valid IDs
---@return string raceName - Name of the race.
---@return number raceTextureID (fileID) - The texture used by this race in the Archaeology UI.
---@return number raceItemID - The itemID of the Keystone the race uses. Will be nil for Fossil because no such item exists.
---@return number numFragmentsCollected - Number of collected fragments for this race.
---@return number numFragmentsRequired - Number of fragments required to solve the current artifact
---@return number maxFragments - Maximum number of fragments that can be carried
---@since Patch 8.0.1 (2018-07-17): Added Zandalari and Drust to branchID list
function GetArchaeologyRaceInfoByID(branchID)
end

---Returns the time left in seconds until the next Spirit Healer resurrection in battlegrounds.
---@param nil  
---@return number timeleft - Seconds until the Spirit Guide casts its next Area Resurrection.  Returns 0 if player is not dead.
function GetAreaSpiritHealerTime(nil)
end

---
---@return string areaText 
---@since Patch 8.3.7 (2020-07-23): Added.
function GetAreaText()
end

---
---@param id number - 1 to GetNumArenaOpponentSpecs()
---@return number specID : SpecializationID
---@return number gender 
function GetArenaOpponentSpec(id)
end

---Returns the information for a specific race's artifact.
---@param raceIndex number - Index of the race to pick the artifact from.
---@param artifactIndex number - Index of the artifact.
---@return string artifactName - The name of the artifact.
---@return string artifactDescription - The description displayed on the artifact detail page. Only visible after completion for rare artifacts.
---@return number artifactRarity - The rarity of the artifact, 0 for Common and 1 for Rare.
---@return string artifactIcon - The path to the artifact's icon texture.
---@return string hoverDescription - The description shown in the tooltip when hovering over the completed artifact. Not visible before the artifact is completed. Not readily available on function call, see SpellMixin:ContinueOnSpellLoad.
---@return number keystoneCount - The number of Keystone slots this artifact has. Only visible when this is the in progress artifact.
---@return string bgTexture - The path to the artifact's background texture. Only displayed when the artifact is rare.
---@return number firstCompletionTime - The first time the artifact was ever completed, in the same format as time().
---@return number completionCount - The number of times this artifact has been completed.
---@since Patch 4.0.6 (2011-02-08): Behavior changed
As of patch 4.0.6, the artifact in progress for the race is no longer necessarily index 1, if the artifact is not solved for the first time. For this functionality see GetActiveArtifactByRace.
function GetArtifactInfoByRace(raceIndex, artifactIndex)
end

---Returns progress info for the selected Archaeology artifact.
---@return number numFragmentsCollected - Number of collected fragments for selected artifact.
---@return number numFragmentsAdded - Number of fragments currently added through keystones for selected artifact.
---@return number numFragmentsRequired - Number of fragments required to solve the selected artifact.
---@since Patch 4.0.1 (2010-10-12): Added.
function GetArtifactProgress()
end

---Returns the amount of attack power contributed by a specific amount of a stat.
---@param stat number - Index of the stat (Strength, Agility, ...) to check the bonus AP of.
1: LE_UNIT_STAT_STRENGTH
2: LE_UNIT_STAT_AGILITY
3: LE_UNIT_STAT_STAMINA
4: LE_UNIT_STAT_INTELLECT
5: LE_UNIT_STAT_SPIRIT (not anymore available in 9.0.5)
---@return number attackPower - Amount of attack power granted by the specified amount of the specified stat.
function GetAttackPowerForStat(stat)
end

---Returns a table of realm names for auto-completion.
---@param realmNames table ? - If a table is provided, it will be populated with realm names; otherwise, a new table will be created.
---@return table realmNames - An array of realm names the player can interact with through Connected Realms. Realm names will be in normalized format without spaces or hyphens (see GetNormalizedRealmName).
---@since Patch 5.4.0 (2013-09-10): Added.
function GetAutoCompleteRealms(realmNames)
end

---Returns possible player names matching a given prefix string and specified requirements.
---@param text string - First characters of the possible names to be autocompleted
---@param numResults number - Number of results desired.
---@param cursorPosition number - Position of the cursor within the editbox (i.e. how much of the text string should be matching).
---@param allowFullMatch boolean 
---@param includeBitField number - Bit mask of filters that the results must match at least one of.
---@param excludeBitField number - Bit mask of filters that the results must not match any of.
---@return table results [] - Auto-completed names of players that satisfy the requirements.
---@since Patch 3.2.0 (2009-08-04): Added.
function GetAutoCompleteResults(text, numResults, cursorPosition, allowFullMatch, includeBitField, excludeBitField)
end

---Returns true if guild invites are being automatically declined.
---@return boolean autoDecline 
---@since Patch 4.0.1 (2010-10-12): Added.
function GetAutoDeclineGuildInvites()
end

---Returns info for a popup quest notification.
---@param index number - which popup to get information about, between 1 and GetNumAutoQuestPopUps()
---@return number questID - the quest id
---@return string type - Notification type.  One of "OFFER" (new quest added) or "COMPLETE" (quest finished).
---@since Patch 4.0.1 (2010-10-12): Added.
function GetAutoQuestPopUp(index)
end

---
---@return number result 
function GetAvailableBandwidth()
end

---Returns the available locales as a table.
---@param ignoreLocaleRestrictions boolean ? - If true, returns the complete list of locales.
---@return table locales []
---@since Patch 8.3.0 (2020-01-14): Added (Build 33724, Mar 17 2020).
function GetAvailableLocaleInfo(ignoreLocaleRestrictions)
end

---Returns the available locale strings.
---@param ignoreLocalRestrictions boolean ? - If true, returns the complete list of locales.
---@return string locale1, ... 
function GetAvailableLocales(ignoreLocalRestrictions)
end

---Returns info for an available quest.
---@param index number - Index of the available quest to query, starting from 1.
---@return boolean isTrivial - true if the quest is trivial (too low-level compared to the character), false otherwise.
---@return number frequency - 1 if the quest is a normal quest, LE_QUEST_FREQUENCY_DAILY (2) for daily quests, LE_QUEST_FREQUENCY_WEEKLY (3) for weekly quests.
---@return boolean isRepeatable - true if the quest is repeatable, false otherwise.
---@return boolean isLegendary - true if the quest is a legendary quest, false otherwise.
---@return number questID - quest ID of the quest.
---@return boolean isImportant - true if the quest is considered important, false otherwise.
---@since Patch 11.0.2 (2024-08-13): Added isImportant return value.[1]
function GetAvailableQuestInfo(index)
end

---Returns the character's average item level.
---@return number avgItemLevel - The average item level of the player. This value is not rounded off to any significant digits.
---@return number avgItemLevelEquipped - The average equipped item level of the player. This value is not rounded off to any significant digits.
---@return number avgItemLevelPvp - The average equipped item level your character is considered to have under PvP situations. Item slots are weighted and gems are taken in account to compute this value. It is likely used to derive PvP Scaling coefficient.
function GetAverageItemLevel()
end

---Returns the player's avoidance percentage.
---@return number avoidance - the actual avoidance bonus in percent; e.g. 5.13452
function GetAvoidance()
end

---
---@return number result 
function GetBackgroundLoadingStatus()
end

---Returns the faction played during a cross faction battleground.
---@return number myFaction - Faction played, 0 for horde, 1 for alliance
function GetBattlefieldArenaFaction()
end

---Returns the estimated queue time to enter the battlefield.
---@return number waitTime - Milliseconds until a battlefield will be available.
---@since Patch 1.4.0 (2005-04-19): Added.[1]
function GetBattlefieldEstimatedWaitTime()
end

---Get shutdown timer for the battlefield instance.
---@return number expiration - the number of milliseconds before the Battlefield will close after a battle is finished.  This is 0 before the battle is finished.
function GetBattlefieldInstanceExpiration()
end

---Returns the time passed since the battlefield started.
---@return number time - miliseconds passed since the battle started
function GetBattlefieldInstanceRunTime()
end

---Returns the remaining seconds before the battlefield port expires.
---@param index number - Index of queue to get the expiration from
---@return number expiration - Remaining time of battlefield port in seconds
function GetBattlefieldPortExpiration(index)
end

---Returns info for a player's score in battlefields.
---@param index number - The characters index in battlegrounds, going from 1 to GetNumBattlefieldScores().
---@return string name - The player's name, with their server name attached if from a different server to the player.
---@return number killingBlows - Number of killing blows.
---@return number honorableKills - Number of honorable kills.
---@return number deaths - The number of deaths.
---@return number honorGained - The amount of honour gained so far (Bonus Honour).
---@return number faction - (Battlegrounds: Horde = 0, Alliance = 1 / Arenas: Green Team = 0, Yellow Team = 1).
---@return string race - The players race (Orc, Undead, Human, etc).
---@return string class - The players class (Mage, Hunter, Warrior, etc).
---@return string classToken - The player's class name in english given in all capitals (MAGE , HUNTER, WARRIOR, etc)
---@return number damageDone - The amount of damage done.
---@return number healingDone - The amount of healing done.
---@return number bgRating - Personal battleground rating at the start of the match
---@return number ratingChange - Amount of rating gained/lost during the match
---@return number preMatchMMR - After 4.2 update is always zero
---@return number mmrChange - After 4.2 update is always zero
---@return string talentSpec - Localized name of player build
function GetBattlefieldScore(index)
end

---Returns battlefield-specific info for a player (e.g. Warsong Gulch flag captures).
---@param playerIndex number - Player you want to grab the data for; between 1 and GetNumBattlefieldScores
---@param slotIndex number - Column you want to grab the data from; between 1 and GetNumBattlefieldStats
---@return number columnData - The participant's score for the statistic
function GetBattlefieldStatData(playerIndex, slotIndex)
end

---Returns the status of the battlefield the player is either queued for or inside.
---@param index number - Index of the battlefield you wish to view, in the range of 1 to GetMaxBattlefieldID()
---@return string 1. status - Battlefield status, one of:
queued - Waiting for a battlefield to become ready, you're in the queue
confirm - Ready to join a battlefield
active - Inside an active battlefield
none - Not queued for anything in this index
error - This should never happen
---@since Patch 10.0.7 (2023-03-21): Added isSoloQueue.
function GetBattlefieldStatus(index)
end

---Returns info for an Arena team at the end of the match.
---@param index number - Which team to get information on, 0 is Green team and 1 is Gold Team
---@return string teamName - Teams name inside a rated arena match.
---@return number oldTeamRating - Old rating that the team entered with (0 is no team is found)
---@return number newTeamRating - New rating that the team is leaving with
---@return number teamRating - Formerly known as match making rating
function GetBattlefieldTeamInfo(index)
end

---Returns the time the player has waited in the queue.
---@param battlegroundQueuePosition number - The queue position.
---@return number timeInQueue - Milliseconds this player has been waiting in the queue
function GetBattlefieldTimeWaited(battlegroundQueuePosition)
end

---Returns the winner of the battlefield that the player is currently in.
---@return number winner ? - Faction/team that has won the battlefield. Results are: nil if nobody has won, 0 for Horde, 1 for Alliance and 255 for a draw in a battleground, 0 for Green Team and 1 for Yellow in an arena.
function GetBattlefieldWinner()
end

---Returns information about a battleground type.
---@param index number - battleground type index, 1 to GetNumBattlegroundTypes().
---@return string localizedName - Localized battleground name.
---@return boolean canEnter - `true` if the player can queue for this battleground, `false` otherwise.
---@return boolean isHoliday - `true` if this battleground is currently granting bonus honor due to a battleground holiday, `false` otherwise.
---@return boolean isRandom - `true` if this battleground is the random.
---@return number battleGroundID - the ID associated with the Battleground. See `BattlemasterList.db2` for full list.
---@return string mapDescription - Localized information about the battleground map.
---@return number bgInstanceID - InstanceID of the battleground map.
---@return number maxPlayers - Maximum number of players allowed in the battleground.
---@return string gameType - Type of the game (e.g., "CTF" for Capture the Flag). Empty string if none.
---@return number iconTexture - Path to the icon texture representing the battleground.
---@return string shortDescription - Short description of the battleground.
---@return string longDescription - Long description of the battleground.
---@return number hasControllingHoliday - `1` if there's a controlling holiday for the battleground, `0` otherwise.
---@since Patch 7.2.0 (2017-03-28): Added shortDescription, longDescription.
function GetBattlegroundInfo(index)
end

---[NYI] Returns battlegrounds points earned by a team.
---@param team number - team to query the points of; 0 for Horde, 1 for Alliance.
---@return number currentPoints - current battleground points earned by the team.
---@return number maxPoints - maximum amount of battleground points the team can earn.
---@since Patch 5.3.0 (2013-05-21): Added; non-functional.
function GetBattlegroundPoints(team)
end

---Returns the dungeon ID of the most appropriate Flex Raid instance for the player.
---@return number flexDungeonID - dungeon ID of the most appropriate Flex Raid instance for the player, or nil if no Flex Raids are currently appropriate.
---@since Patch 5.4.0 (2013-09-10): Added.
function GetBestFlexRaidChoice()
end

---Returns the suggested raid for the Raid Finder.
---@return number dungeonId : LfgDungeonID
function GetBestRFChoice()
end

---Returns the amount of "healthy" time left for players on Chinese realms.
---@return number secondsRemaining - Amount of time left in seconds to play as rested. See details below for clarification. Returns nil for EU and US accounts.
function GetBillingTimeRested()
end

---Returns the subzone the character's Hearthstone is set to.
function GetBindLocation()
end

---Returns the name and keys for a binding by index.
---@param index number - index of the binding to query, from 1 to GetNumBindings().
---@param alwaysIncludeGamepad boolean ? - If gamepad support is disabled, then gamepad bindings are only returned if this is true.
---@return string command - Command this binding will perform (e.g. MOVEFORWARD). For well-behaved bindings, a human-readable description is stored in the _G["BINDING_NAME_" .. command] global variable.
---@return string category - Category this binding was declared in (e.g. BINDING_HEADER_MOVEMENT). For well-behaved bindings, a human-readable title is stored in the _G[category] global variable.
---@return string key1, key2, ... ? - Key combination this binding is bound to (e.g. W, CTRL-F). key1 and key2 can be nil if there is nothing bound to the command.
function GetBinding(index, alwaysIncludeGamepad)
end

---Returns the binding name for a key (combination).
---@param binding string - The name of the key (eg. "BUTTON1", "1", "CTRL-G")
---@param checkOverride boolean ? - if true, override bindings will be checked, otherwise, only default (bindings.xml/SetBinding) bindings are consulted.
---@return string action - action command performed by the binding. If no action is bound to the key, an empty string is returned.
function GetBindingAction(binding, checkOverride)
end

---Returns the binding action performed when the specified key combination is triggered.
---@param key string - binding key to query, e.g. "G", "ALT-G", "ALT-CTRL-SHIFT-F1".
---@return string bindingAction - binding action that will be performed, e.g. "TOGGLEAUTORUN", "CLICK Purrseus:k1", or nil if no action will be performed.
function GetBindingByKey(key)
end

---Returns the keys bound to the given command.
---@param command string - The name of the command to get key bindings for (e.g. MOVEFORWARD, TOGGLEFRIENDSTAB)
---@return string key1, key2, ... - The string representation(s) of all the key(s) bound to this command (e.g. W, CTRL-F)
function GetBindingKey(command)
end

---Returns the string for the given key and prefix. Essentially a specialized getglobal() for bindings.
---@param key string ? - The name of the key (e.g. "UP", "SHIFT-PAGEDOWN")
---@param prefix string ? - The prefix of the variable name you're looking for.  Usually "KEY_" or "BINDING_NAME_".
---@param abbreviate boolean ? - Whether to return an abbreviated version of the modifier keys
---@return string text - The value of the global variable derived from the prefix and key name you specified. For example, "UP" and "KEY_" would return the value of the global variable KEY_UP which is "Up Arrow" in the english locale.  If the global variable doesn't exist for the combination specified, it appears to just return the key name you specified. Modifier key prefixes are stripped from the input and added back in to the output. The third parameter, if true, causes the function to simply substitute the abbreviations 'c', 'a', 's', and 'st' for the strings CTRL, ALT, SHIFT, and STRG (German client only) in the result.
---@since Patch 6.0.2 (2014-10-14): Added. Replaces the FrameXML version of the same name[1]
function GetBindingText(key, prefix, abbreviate)
end

---Returns the block chance percentage.
---@return number blockChance - The player's block chance in percentage.
function GetBlockChance()
end

---Returns the current bonus action bar index (e.g. for the Rogue stealth bar).
---@return number offset - The current bonus action bar index.
function GetBonusBarOffset()
end

---Returns info for the current client build.
---@return string buildVersion - Current patch version
---@return string buildNumber - Build number
---@return string buildDate - Build date
---@return number interfaceVersion - Interface (.toc) version number
---@return string localizedVersion - Localized description of the build version
---@return string buildInfo - Localized build type and machine architecture
---@return string currentVersion - Current patch version, but formatted similarly to interface version numbers (eg. "11505")
---@since Patch 10.1.0 (2023-05-02): Added localizedVersion and buildInfo return values.
function GetBuildInfo()
end

---Returns the metatable used by Button objects.
---@return table metatable - The metatable used by Button objects.
---@since Patch 10.1.0 (2023-05-02): Added.
function GetButtonMetatable()
end

---Returns info for an item that can be bought back from a merchant.
---@param slotIndex number - The index of a slot in the merchant's buyback inventory, between 1 and GetNumBuybackItems()
---@return string name ? - The name of the item.
---@return number icon ? : fileID - Icon texture of the item.
---@return number price - The price, in copper, it will cost to buy the item(s) back.
---@return number quantity - The quantity of items in the stack.
---@return number numAvailable - The number available.
---@return boolean isUsable - True if the item is usable, false otherwise.
---@return boolean isBound ?
function GetBuybackItemInfo(slotIndex)
end

---
---@return number height 
function GetCallstackHeight()
end

---
---@return number fieldOfViewDegreesDefault 
---@return number fieldOfViewDegreesPlayerMin 
---@return number fieldOfViewDegreesPlayerMax 
function GetCameraFOVDefaults()
end

---Returns the current zoom level of the camera.
---@return number zoom - the currently set zoom level
function GetCameraZoom()
end

---Returns info for an achievement category.
---@param categoryID number 
---@return string title - Title of the category.
---@return number parentCategoryID - id of the parent category or -1 if the category has no parent.
---@return number flags (bitfield)
---@since Patch 3.0.2 (2008-10-14): Added.
function GetCategoryInfo(categoryID)
end

---Returns the list of achievement categories.
---@return number idTable [] - array containing achievement category IDs, in no particular order.
---@since Patch 3.0.2 (2008-10-14): Added.
function GetCategoryList()
end

---Returns the number of achievements for a category.
---@param categoryId number - Achievement category ID, as returned by GetCategoryList.
---@param includeAll boolean ? - If true-equivalent, include all achievements, otherwise, only includes those currently visible
---@return number total - total number of achievements in the specified category.
---@return number completed - number of completed achievements in the specified category.
---@return number incompleted - number of incompleted achievements in the specified category.
---@since Patch 3.0.2 (2008-10-14): Added.
function GetCategoryNumAchievements(categoryId, includeAll)
end

---
---@return number result 
function GetCemeteryPreference()
end

---Returns info for chat channels and headers in the Chat Pane.
---@param index number - an integer between 1 and GetNumDisplayChannels() (ChannelFrame can display a combined maximum of 20 channels and headers; see MAX_CHANNEL_BUTTONS and use API GetNumDisplayChannels)
---@return string name - (for channels) channel name; (for headers) name of the header
---@return boolean header - true if this item is a header (e.g. for category "CHANNEL_CATEGORY_WORLD")
---@return boolean collapsed ? - (for headers) true if subchannels are hidden (header is collapsed), otherwise false or nil
---@return number channelNumber ? - (for channels) channel number, nil otherwise
---@return number count ? - (for channels) number of players in this channel; (for headers) number of subchannels beneath this header, nil otherwise
---@return boolean active ? - (for channels) true if channel is active (if you leave a city where you were in Trade Channel the channel will remain as inactive), nil otherwise
---@return string category - (for channels) "CHANNEL_CATEGORY_WORLD", "CHANNEL_CATEGORY_GROUP" or "CHANNEL_CATEGORY_CUSTOM"
---@return number channelType 
function GetChannelDisplayInfo(index)
end

---Returns the list of joined chat channels.
---@return number id - channel number
---@return string name - channel name
---@return boolean disabled - If the channel is disabled, e.g. the Trade channel when you're not in a city.
function GetChannelList()
end

---Returns info for a chat channel.
---@param name string |number - name of the channel to query, e.g. "Trade - City", or a channel ID to query, e.g. 1 for the chat channel currently addressable using /1.
---@return number id - The ID of the channel, or 0 if the channel is not found.
---@return string name - The name of the channel, e.g. "Trade - Stormwind", or nil if the player is not in the queried channel.
---@return number instanceID - Index used to deduplicate channels. Usually zero, unless two channels with the same name exist.
---@return boolean isCommunitiesChannel - True if this is a Blizzard Communities channel, false if not.
---@since Patch 8.0.1 (2018-07-17): Added isCommunitiesChannel return.
function GetChannelName(name)
end

---Returns the index for a chat type.
---@param messageGroup string - The type code for the chat type (One of the key values of the ChatTypeInfo table).
---@return number index - The numeric type index for that chat type, used as the ID number for coloring.
function GetChatTypeIndex(messageGroup)
end

---Returns subscribed channels for a chat window.
---@param frameId number - The frame number of the chat frame to be queried (starts at 1).
---@return string channelName1 - The name to display for the first channel.
---@return number channelId1 - The 'zone channel' number for the first channel. Has a value of 0 for non-zone channels, and a non-zero value for zone channels (such as Trade, General)
---@return list ... - Additional channelName, channelId pairs for each channel belonging to the chat window.
function GetChatWindowChannels(frameId)
end

---Returns info for a chat window.
---@param frameIndex number - The index of the chat window to get information for (starts at 1).
---@return string name - The name of the chat window, or an empty string for its default name.
---@return number fontSize - The font size for the window.
---@return number r - The red component of the window's background color (0.0 - 1.0);
---@return number g - The green component of the window's background color (0.0 - 1.0);
---@return number b - The blue component of the window's background color (0.0 - 1.0);
---@return number alpha - The alpha level (opacity) of the window background (0.0 - 1.0);
---@return boolean shown - true if the window is shown, false if it is hidden.
---@return boolean locked - true if the window is locked in place, false if it is movable.
---@return number docked - 1 to NUM_CHAT_WINDOWS; Index Order of docked tab EG: General = 1, Combat Log = 2. nil if floating.
---@return boolean uninteractable - true if the window should ignore all mouse events; otherwise false
function GetChatWindowInfo(frameIndex)
end

---Returns subscribed message types for a chat window.
---@param index number - Chat window index, ascending from 1.
---@return string type1, ... - Chat type received by the window.
function GetChatWindowMessages(index)
end

---Returns the color value associated with a given class.
function GetClassColor()
end

---Returns information about a class.
---@param classID number ClassId - Ranging from 1 to the highest classID. For Retail, that's the same as GetNumClasses().
---@return string className - Localized name, e.g. "Warrior" or "Guerrier".
---@return string classFile - Locale-independent name, e.g. "WARRIOR".
---@return number classID : ClassId
---@since Patch 5.0.4 (2012-08-28): Added.
function GetClassInfo(classID)
end

---
---@return number expansionLevel 
function GetClassicExpansionLevel()
end

---Returns the frame registered with the given object name.
---@param name string - The name of the frame to obtain.
---@return table frame ? - The table handle to the named frame if it exists, else nil.
---@since Patch 2.4.3 (2008-07-15): Added.
function GetClickFrame(name)
end

---Returns the expansion level of the game client.
---@return number expansionLevel 
---@since Patch 7.3.2 (2017-10-24): Added.
function GetClientDisplayExpansionLevel()
end

---Returns a specific combat rating.
---@param ratingIndex number - One of the following constants from FrameXML/PaperDollFrame.lua
---@return number rating - the actual rating for the combat rating.
function GetCombatRating(ratingIndex)
end

---Returns the bonus percentage for a specific combat rating.
---@param ratingIndex number - One of the following values from FrameXML/PaperDollFrame.lua
---@return number ratingBonus - the actual bonus in percent the combat rating confers; e.g. 5.13452
function GetCombatRatingBonus(ratingIndex)
end

---
---@param ratingIndex number 
---@return number ratingBonus ?
function GetCombatRatingBonusForCombatRatingValue(ratingIndex)
end

---Returns the amount of current combo points.
---@param unit string UnitId - Normally "player" or "vehicle".
---@param target string UnitId - Normally "target".
---@return number comboPoints - Number of combo points unit has on target; between 0 and 5 inclusive.
function GetComboPoints(unit, target)
end

---- C_PetJournal.GetPetInfoByIndex- C_MountJournal.GetDisplayedMountInfo
---@param type string - Companion type to query: "CRITTER" or "MOUNT".
---@param id number - Index of the slot to query. Starting at 1 and going up to GetNumCompanions("type").
---@return number creatureID - The NPC ID of the companion.
---@return string creatureName - The name of the companion.
---@return number creatureSpellID - The spell ID to cast the companion.  This is not passed to CallCompanion, but can be used with, e.g., GetSpellInfo.
---@return string icon - The texture of the icon for the companion.
---@return boolean issummoned - 1 if the companion is summoned, nil if it's not.
---@return  mountType 0x10: Can jump (turtles cannot)
---@since Patch 7.0.3 (2016-07-19): Deprecated (possibly earlier) in favor of C_MountJournal.GetMountInfoByID.
function GetCompanionInfo(type, id)
end

---Returns the specified statistic from the comparison player unit.
---@param achievementID number - The ID of the Achievement.
---@return string value - The value of the requested Statistic from the comparison unit.
---@since Patch 3.0.2 (2008-10-14): Added.
function GetComparisonStatistic(achievementID)
end

---
---@return number result 
function GetCorpseRecoveryDelay()
end

---Tracks the extent to which a player is wearing items touched by N'Zoth's influence.
---@return number corruption - the amount of corruption independent of any resistances
---@since Patch 8.3.0 (2020-01-14): Added.
function GetCorruption()
end

---Tracks how much the player has offset their exposure to dangers that result from wearing items touched by N'Zoth's influence.
---@return number corruptionResistance - Amount of corruption resistance, independent of how much corruption is actually present
---@since Patch 8.3.0 (2020-01-14): Added.
function GetCorruptionResistance()
end

---Returns the melee critical hit chance percentage.
---@return number critChance - The player's melee critical hit chance, as a percentage; e.g. 5.3783211 corresponding to a ~5.38% crit chance.
function GetCritChance()
end

---
---@return boolean critChance 
function GetCritChanceProvidesParryEffect()
end

---Returns the current arena season.
---@return number season - Current arena season.
function GetCurrentArenaSeason()
end

---Returns if either account or character-specific bindings are active.
---@return number which - One of the following values:
---@return  ACCOUNT_BINDINGS = 1 indicates that account-wide bindings are currently active.
---@return  CHARACTER_BINDINGS = 2 indicates that per-character bindings are currently active.
function GetCurrentBindingSet()
end

---Returns the current COMBAT_TEXT_UPDATE payload.
---@return string desc1 |number? - This field varies depending on the type of message.
---@return string desc2 |number? - This field varies depending on the type of message.
function GetCurrentCombatTextEventInfo()
end

---Returns the unique ID associated with the event the UI is currently handling. Requires the scriptProfile CVar to be enabled.
---@return number eventID ?
function GetCurrentEventID()
end

---Returns the currently selected graphics API.
---@return string gxAPI - Can be any of; D3D12, D3D11, D3D11_LEGACY, gll or opengl
function GetCurrentGraphicsAPI()
end

---Returns a numeric ID representing the region the player is currently logged into.
---@return number region : Cfg_Regions.Region_ID
---@since Patch 10.1.5 (2023-07-11): Test realms may no longer consistently return a value of 1 (US).
function GetCurrentRegion()
end

---Returns the name of the current region.
---@return string regionName 
---@since Patch 9.0.1 (2020-10-13): Added.
function GetCurrentRegionName()
end

---Returns the current title.
---@return number currentTitle - TitleId; Returns -1 if not using any title.
---@since Patch 2.0.1 (2006-12-05): Added.
function GetCurrentTitle()
end

---Returns the distance that the cursor has moved since the last frame.
---@return number x - Distance along the X axis that the cursor has travelled.
---@return number y - Distance along the Y axis that the cursor has travelled.
function GetCursorDelta()
end

---Returns what the mouse cursor is holding.
function GetCursorInfo()
end

---Returns the amount of money held by the cursor.
---@return number copper - Amount of money, in copper, currently held on the cursor.
function GetCursorMoney()
end

---Returns the cursor's position on the screen.
---@return number x - x coordinate unaffected by UI scale; 0 at the left edge of the screen.
---@return number y - y coordinate unaffected by UI scale; 0 at the bottom edge of the screen.
function GetCursorPosition()
end

---Returns a chat link for a specific death.
---@param recapID number - The specific death to view, from 1 to the most recent death.
---@return string recapLink : deathLink
---@since Patch 6.1.0 (2015-02-24): Added
function GetDeathRecapLink(recapID)
end

---Returns the character's default language.
---@return string language - The player's default language, usually the faction's common language (i.e. "Common" and "Orcish").
---@return number languageID : LanguageID
function GetDefaultLanguage()
end

---Returns the default UI scaling value for the current screen size.
---@return number scale - The default scale for the UI as a floating point value.
function GetDefaultScale()
end

---Returns information about a difficulty.
---@param id number - difficulty ID to query, ascending from 1.
---@return string name - Difficulty name, e.g. "10 Player (Heroic)"
---@return string groupType - Group type appropriate for this difficulty; "party" or "raid".
---@return boolean isHeroic - true if this is a heroic difficulty, false otherwise.
---@return boolean isChallengeMode - true if this is challenge mode difficulty, false otherwise.
---@return boolean displayHeroic - display the Heroic skull icon on the instance banner of the minimap
---@return boolean displayMythic - display the Mythic skull icon on the instance banner of the minimap
---@return number toggleDifficultyID - difficulty ID of the corresponding heroic/non-heroic difficulty for 10/25-man raids, if one exists.
---@return boolean isLFR - true if this is looking for raid difficulty, false otherwise.
---@return number minPlayers - minimum players needed.
---@return number maxPlayers - maximum players allowed.
---@since Patch 6.0.2 (2014-10-14): Now returns displayHeroic and displayMythic.
function GetDifficultyInfo(id)
end

---Returns the dodge chance percentage.
---@return number dodgeChance - Player's dodge chance in percentage.
function GetDodgeChance()
end

---
---@return number dodgeChance 
function GetDodgeChanceFromAttribute()
end

---
---@return number result 
function GetDownloadedPercentage()
end

---Returns the selected dungeon difficulty.
---@return number difficultyID : The player's (or group leader's) current dungeon difficulty ID preference.
---@since Patch 5.0.4 (2012-08-28): Renamed from GetDungeonDifficulty.
function GetDungeonDifficultyID()
end

---Returns the metatable used by EditBox objects.
---@return table metatable - The metatable used by EditBox objects.
---@since Patch 10.1.0 (2023-05-02): Added.
function GetEditBoxMetatable()
end

---
---@return number height ?
function GetErrorCallstackHeight()
end

---
---@param eventProfileIndex number 
---@return number totalElapsedTime 
---@return number numExecutedHandlers 
---@return string slowestHandlerName 
---@return number slowestHandlerTime 
function GetEventTime(eventProfileIndex)
end

---Returns the logo and banner textures for an expansion id.
---@param expansionLevel number 
---@return ExpansionDisplayInfo info ?
---@since Patch 7.3.2 (2017-10-24): Added.
function GetExpansionDisplayInfo(expansionLevel)
end

---
---@param playerLevel number 
---@return number expansionLevel 
---@since Patch 9.0.1 (2020-10-13): Removed useLegacy argument.
function GetExpansionForLevel(playerLevel)
end

---Returns the expansion level currently accessible by the player.
---@return number expansionLevel - The newest expansion currently accessible by the player.
---@since Patch 3.3.0 (2009-12-08): Added.
function GetExpansionLevel()
end

---
---@return boolean isExpansionTrialAccount 
---@return number expansionTrialRemainingSeconds ?
---@since Patch 8.0.1 (2018-07-17): Added.
function GetExpansionTrialInfo()
end

---Returns the player's expertise percentage for main hand, offhand and ranged attacks.
---@return number mainhandExpertise - Expertise percentage for swings with your main hand weapon.
---@return number offhandExpertise - Expertise percentage for swings with your offhand weapon.
---@return number rangedExpertise - Expertise percentage for your ranged weapon.
---@since Patch 5.0.4 (2012-08-28): GetExpertisePercent was merged into this function.
function GetExpertise()
end

---Returns your current expertise reduction to chance to be dodged or parried, in percent.
---@return number expertisePercent - Percentage reduction in dodge and parry chances for swings with your main hand weapon.
---@return number offhandExpertisePercent - Percentage reduction in dodge and parry chances for swings with your offhand weapon.
---@since Patch 11.2.0 (2025-08-05): Readded.
function GetExpertisePercent()
end

---Returns the action bar page containing the extra bar/button.
---@return number extraPage - index of the action bar page containing the extra action button.
---@since Patch 4.3.0 (2011-11-29): Added.
function GetExtraBarIndex()
end

---Returns the FileID for an Interface file path.
---@param filePath string - The path to a game file. For example Interface/Icons/Temp.blp
---@return number fileID : FileID - The internal ID corresponding to the file path. Negative integers are temporary IDs; these are not specified in the CASC root file and may change when the client is restarted.
---@since Patch 8.2.0 (2019-06-25): No longer works for non-interface Blizzard file paths. [1]
function GetFileIDFromPath(filePath)
end

---
---@return number result 
function GetFileStreamingStatus()
end

---Returns the ID of a filtered achievement by index.
---@param index number - The index of the filtered achievement to return the ID of, between 1 and GetNumFilteredAchievements().
---@return number achievementID - The ID of an achievement.
---@since Patch 7.0.3 (2016-07-19): Added.
function GetFilteredAchievementID(index)
end

---Describes an action bar flyout.
---@param flyoutID number 
---@return string name - Title line in the tooltip.
---@return string description - Second line in the tooltip.
---@return number numSlots - Maximum number of slots contained in the flyout, accessed with GetFlyoutSlotInfo().
---@return boolean isKnown 
function GetFlyoutInfo(flyoutID)
end

---Describes an action bar flyout slot.
---@param flyoutID number - The second return value of GetSpellBookItemInfo() or GetActionInfo().
---@param slot number 
---@return number flyoutSpellID 
---@return number overrideSpellID 
---@return boolean isKnown 
---@return string spellName 
---@return number slotSpecID 
---@since Patch 5.0.4 (2012-08-28): Several return values added.[1]
function GetFlyoutSlotInfo(flyoutID, slot)
end

---Returns a structured table of information about the given font object.
---@param font Font🔗 |string - Either a font object or the name of a global font object.
---@return FontScriptInfo fontInfo 
function GetFontInfo(font)
end

---Returns the metatable used by FontString objects.
---@return table metatable - The metatable used by FontString objects.
---@since Patch 10.1.0 (2023-05-02): Added.
function GetFontStringMetatable()
end

---Returns a list of available fonts.
---@return string fonts [] - a table containing font object names.
function GetFonts()
end

---Returns the total time used by and number of calls of a frame's event handlers.
---@param frame  Frame - Specifies the frame.
---@param includeChildren boolean - If false, only event handlers of the specified frame are considered. If true or omitted, the values returned will include the handlers for all of the frame's children as well.
---@return number time - The total time used by the specified event handlers, in milliseconds.
---@return number count - The total number of times the event handlers were called.
function GetFrameCPUUsage(frame, includeChildren)
end

---Returns the metatable used by Frame objects.
---@return table metatable - The metatable used by Frame objects.
---@since Patch 10.1.0 (2023-05-02): Added.
function GetFrameMetatable()
end

---Returns the current framerate.
---@return number framerate - The current framerate in frames per second.
function GetFramerate()
end

---Returns all frames registered for the specified event, in dispatch order.
---@param event string - Event for which to return registered frames, e.g. "PLAYER_LOGOUT"
---@return Frame🔗 frame1, frame2, ... - widget registered for the specified event.
---@since Patch 2.3.0 (2007-11-13): Added.
function GetFramesRegisteredForEvent(event)
end

---Get the list of available GM ticket categories.
function GetGMTicketCategories()
end

---Returns the error message for an id.
---@param messageType number - errorType index from UI_INFO_MESSAGE or UI_ERROR_MESSAGE
---@return string stringId - Name of the ERR_* globalstring
---@return number soundKitID ? - Plays a sound effect with PlaySound()
---@return number voiceID ? - Plays a voice line (Error Speech) with PlayVocalErrorSoundID()
---@since Patch 7.0.3 (2016-07-19): Added.
function GetGameMessageInfo(messageType)
end

---Returns the realm's current time in hours and minutes.
---@return number hours - The current hour (0-23).
---@return number minutes - The minutes passed in the current hour (0-59).
function GetGameTime()
end

---Returns the supported graphics APIs for the system, D3D11_LEGACY, D3D11, D3D12, etc.
---@return string cvarValues - a value for CVar gxApi.
---@since Patch 4.1.0 (2011-04-26): Added.
function GetGraphicsAPIs()
end

---
---@param achievementID number 
---@param index number 
---@return string leftMemberName ?
function GetGuildAchievementMemberInfo(achievementID, index)
end

---
---@param achievementID number 
function GetGuildAchievementMembers(achievementID)
end

---
---@param achievementID number 
---@return number numMembers 
function GetGuildAchievementNumMembers(achievementID)
end

---Returns item info for a guild bank slot.
---@param tab number - The index of the tab in the guild bank
---@param slot number - The index of the slot in the chosen tab.
---@return number texture - The id of the texture to use for the item. Returns nil if there is no item.
---@return number itemCount - The size of the item stack at the chosen slot. Returns 0 if there is no item.
---@return boolean locked - Whether or not the slot is locked. Returns nil if it's not locked or the item doesn't exist, 1 otherwise.
---@return boolean isFiltered - Returns true if the slot should be hidden because of the users filter, false otherwise.
---@return number quality - The quality of the item at the chose slot. Returns nil if there is no item.
function GetGuildBankItemInfo(tab, slot)
end

---Returns the item link for a guild bank slot.
---@param tab number - The index of the tab in the guild bank
---@param slot number - The index of the slot in the provided tab.
---@return string itemLink - The item link for the item. Returns nil if there is no item.
function GetGuildBankItemLink(tab, slot)
end

---Returns the amount of money in the guild bank.
---@return number retVal1 - money in copper
function GetGuildBankMoney()
end

---Returns info for a money transaction from the guild bank.
---@param index number - The index of the transaction to select. From 1 to GetNumGuildBankMoneyTransactions().
---@return string transactionType - The Type of transaction ("deposit" | "withdrawal" | "repair").
---@return string name - The User that performed a Transaction. A nil return indicates that this data is cached or possibly invalid! In the Blizzard UI nil users are said to be "Unknown"
---@return number amount - The Copper value of the Transaction.
---@return number years -  The number of years since this transaction took place.
---@return number months -  The number of months since this transaction took place.
---@return number days - The number of days since this transaction took place.
---@return number hours -  Hours Since the Transaction took place.
function GetGuildBankMoneyTransaction(index)
end

---Returns info for a guild bank tab.
---@param tab number - The index of the guild bank tab. (result of GetCurrentGuildBankTab())
---@return string name - Title of the bank tab.
---@return string icon - Path to the bank tab icon texture.
---@return boolean isViewable - True if the player can click on the bank tab.
---@return boolean canDeposit - True if the player can deposit items.
---@return number numWithdrawals - Available withdrawals per day.
---@return number remainingWithdrawals - Remaining withdrawals for the day.
---@return boolean filtered - True if the requested tab is filtered out.
function GetGuildBankTabInfo(tab)
end

---Gets display / player's access info. Limited data available without bank proximity.
---@param tab number - guild bank tab number
---@return boolean canView - 1 if the selected rank can view this guild bank tab, nil otherwise.
---@return boolean canDeposit - 1 if the selected rank can deposit to this guild bank tab, nil otherwise.
---@return boolean canEdit - 1 if the selected rank can edit the bank tab text, nil otherwise.
---@return number stacksPerDay - Amount of withdrawable stacks per day or 0 if none.
function GetGuildBankTabPermissions(tab)
end

---Returns info for an item transaction from the guild bank.
---@param tab number - Tab number, ascending from 1 to GetNumGuildBankTabs().
---@param index number - Transaction index, ascending from 1 to GetNumGuildBankTransactions(tab). Higher indices correspond to more recent entries.
---@return string type - Transaction type. ("deposit", "withdraw" or "move")
---@return string name - Name of player who made the transaction.
---@return string itemLink - itemLink of transaction item.
---@return number count - Amount of items.
---@return number tab1 - For type=="move", this is the origin tab.
---@return number tab2 - For type=="move", this is the destination tab.
---@return number year - The number of years since this transaction took place.
---@return number month - The number of months since this transaction took place.
---@return number day - The number of days since this transaction took place.
---@return number hour - The number of hours since this transaction took place.
function GetGuildBankTransaction(tab, index)
end

---Returns withdraw limit for currently selected rank in guild control.
---@return number dailyWithdrawLimit - amount (in GOLD) the currently selected Guild Rank can withdraw per day
function GetGuildBankWithdrawGoldLimit()
end

---Returns the amount of money the player is allowed to withdraw from the guild bank.
---@return number withdrawLimit - Amount of money the player is allowed to withdraw from the guild bank (in copper), or 2^64 if the player has unlimited withdrawal privileges (is Guild Master)
function GetGuildBankWithdrawMoney()
end

---Returns guild info for a player unit.
---@param unit string UnitId - The unit whose guild information you wish to query.
---@return string guildName - The name of the guild the unit is in (or nil?).
---@return string guildRankName - unit's rank in unit's guild.
---@return number guildRankIndex - unit's rank (index). - zero based index (0 is Guild Master, 1 and above are lower ranks)
---@return string realm ? - The name of the realm the guild is in, or nil if the guild's realm is the same as your current one
function GetGuildInfo(unit)
end

---This function returns information about the last tradeskill you were looking at when you clicked "View Crafters" on a guild listing.
---@return number professionID - this is the same value as would be returned using GetGuildTradeSkillInfo(index)
---@return number recipeID - this is the same value as is used by wowhead.com for recipe spells
---@return number numMembers - the number of crafters
function GetGuildRecipeInfoPostQuery()
end

---Renders the name and online status of a guild member having a certain recipe.
---@param index number - index, beginning with 1, of a list of members who can craft the recipe
---@return string name - crafting member name
---@return boolean online - if the user is online
function GetGuildRecipeMember(index)
end

---Returns info for a guild member.
---@param index number - Ranging from 1 to GetNumGuildMembers()
---@return string name - Name of character with realm (e.g. "Arthas-Silvermoon")
---@return string rankName - Name of character's guild rank (e.g. Guild Master, Officer, Member, ...)
---@return number rankIndex - Index of rank starting at 0 for GM (add 1 for GuildControlGetRankName(index))
---@return number level - Character's level
---@return string classDisplayName - Localized class name (e.g. "Mage", "Warrior", "Guerrier", ...)
---@return string zone - Character's location (last location if offline)
---@return string publicNote - Character's public note, returns "" if you can't view notes or no note
---@return string officerNote - Character's officer note, returns "" if you can't view notes or no note
---@return boolean isOnline - true: online - false: offline
---@return number status - 0: none - 1: AFK - 2: Busy (Do Not Disturb) (changed in 4.3.2)
---@return string class - Localization-independent class name (e.g. "MAGE", "WARRIOR", "DEATHKNIGHT", ...)
---@return number achievementPoints - Character's achievement points
---@return number achievementRank - Where the character ranks in guild if sorted by achievement points
---@return boolean isMobile - true: player logged into app with this character
---@return boolean canSoR - true: can use Scroll of Resurrection on character (deprecated)
---@return number repStanding - Standing ID for character's guild reputation
---@return string guid - Character's GUID
function GetGuildRosterInfo(index)
end

---Returns time since the guild member was last online.
---@param index number - index of the guild roster entry you wish to query.
---@return number yearsOffline - number of years since the member was last online. May return nil.
---@return number monthsOffline - number of months since the member was last online. May return nil.
---@return number daysOffline - number of days since the member was last online. May return nil.
---@return number hoursOffline - number of hours since the member was last online. May return nil.
function GetGuildRosterLastOnline(index)
end

---Returns the guild message of the day.
---@return string motd - Returns the guild MOTD, or an empty string if not set or not in a guild
function GetGuildRosterMOTD()
end

---Returns the index of the selected guild member in the roster.
---@return number index - The index of the current selected guild member in the guild roster.
function GetGuildRosterSelection()
end

---Returns true if the guild roster is showing offline members.
---@return boolean showoffline - true if online members are shown, false otherwise.
function GetGuildRosterShowOffline()
end

---Returns File IDs of tabard textures used in guild bank logo.
---@return number tabardBackgroundUpper : FileID
---@return number tabardBackgroundLower : FileID
---@return number tabardEmblemUpper : FileID
---@return number tabardEmblemLower : FileID
---@return number tabardBorderUpper : FileID
---@return number tabardBorderLower : FileID
---@since Patch 8.2.0 (2019-06-25): Replaced texture paths with FileDataIDs.
function GetGuildTabardFiles()
end

---Returns info for a profession in the guild roster.
---@param index number - The index of the tradeskill from GetNumGuildTradeSkill().
---@return number 1. skillID - The ID for the tradeskill
---@return boolean 2. isCollapsed - If the tradeskill is a header, whether or not it is expanded in the guild UI
---@return string 3. iconTexture - The icon for the tradeskill
---@return string 4. headerName - If the tradeskill is a header, this is the text ("Alchemy", "Jewelcrafting", etc)
---@return number 5. numOnline - If the tradeskill is a header, this is the number of characters in the guild who have this tradeskill and are online
---@return number 6. numVisible - If the tradeskill is a header, this is the number of characters in the guild who have this tradeskill and visible (depends on the view offline members checkbox)
---@return number 7. numPlayers - If the tradeskill is a header, this is the number of characters in the guild who have this tradeskill
---@return string 8. playerName - If the tradeskill is not a header, this is the name of the character who has this tradeskill
---@return string 9. playerNameWithRealm - Same as playerName but includes realm, as "name-realm" (with embedded spaces removed)
---@return string 10. class - If the tradeskill is not a header, this is the (localized?) class of the character who has the tradeskill
---@return boolean 11. online - If the tradeskill is not a header, this is whether or not the character who has the tradeskill is online
---@return string 12. zone - If the tradeskill is not a header, this is the zone the character who has the tradeskill is currently in
---@return number 13. skill - If the tradeskill is not a header, this is the character tradeskill level
---@return string 14. classFileName - If the tradeskill is not a header, this is the class of the character who has the tradeskill
---@return boolean 15. isMobile - If the tradeskill is not a header, this is whether or not the character is online with the Armory App
---@return number 16. isAway - If the tradeskill is not a header, this is whether or not the character is away
---@since Patch 5.4.2 (2013-12-10): Added playerNameWithRealm return.
function GetGuildTradeSkillInfo(index)
end

---Returns the player's haste percentage.
---@return number haste 
function GetHaste()
end

---Returns the amount of Melee Hit %, not from Melee Hit Rating, that your character has.
---@return number hitMod - hit modifier (e.g. 16 for 16%)
function GetHitModifier()
end

---Returns names of characters in your home (non-instance) party.
---@param homePlayers table - table to populate and return; a new table is created if this argument is omitted.
---@return table homePlayers - array containing your (non-instance) party members' names, or nil if you're not in any non-instance party.
---@since Patch 5.1.0 (2012-11-27): Added.
function GetHomePartyInfo(homePlayers)
end

---Returns info for a message in the mailbox.
---@param index number - the index of the message (ascending from 1).
---@return string packageIcon - texture path for package icon if it contains a package (nil otherwise).
---@return string stationeryIcon - texture path for mail message icon.
---@return string sender - name of the player who sent the message.
---@return string subject - the message subject.
---@return number money - The amount of money attached.
---@return number CODAmount - The amount of COD payment required to receive the package.
---@return number daysLeft - The number of days (fractional) before the message expires.
---@return number hasItem - Either the number of attachments or nil if no items are present.  Note that items that have been taken from the mailbox continue to occupy empty slots, but hasItem is the total number of items remaining in the mailbox.  Use ATTACHMENTS_MAX_RECEIVE for the total number of attachments rather than this.
---@return boolean wasRead - 1 if the mail has been read, nil otherwise.  Using GetInboxText() marks an item as read.
---@return boolean wasReturned - 1 if the mail was returned, nil otherwise.
---@return boolean textCreated - 1 if a letter object has been created from this mail, nil otherwise.
---@return boolean canReply - 1 if this letter can be replied to, nil otherwise.
---@return boolean isGM - 1 if this letter was sent by a GameMaster.
function GetInboxHeaderInfo(index)
end

---Returns info for an auction house invoice.
---@param index number - The index of the message, starting from 1.
---@return string invoiceType ? - One of "buyer", "seller" or "seller_temp_invoice"; or nil if there is no invoice.
---@return string itemName ? - The name of the item sold/bought, or nil if there is no invoice.
---@return string playerName ? - The player that sold/bought the item, or nil if there were multiple buyers/sellers involved. Will also return nil if there is no invoice.
---@return number bid - The amount of money bid on the item.
---@return number buyout - The amount of money set as buyout for the auction.
---@return number deposit - The amount paid as deposit for the auction.
---@return number consignment - The fee charged by the auction house for selling your consignment.
---@since Patch 2.1.0 (2007-05-22): seller_temp_invoice added.
function GetInboxInvoiceInfo(index)
end

---Returns info for an item attached to a message in the mailbox.
---@param index number - The index of the message to query, in the range [1,GetInboxNumItems()]
---@param itemIndex number - The index of the item to query, in the range [1,ATTACHMENTS_MAX_RECEIVE]
---@return string name - The localized name of the item
---@return number itemID - Numeric ID of the item.
---@return string texture - The path to the icon texture for the item
---@return number count - The number of items in the stack
---@return number quality - The quality index of the item
---@return boolean canUse - 1 if the player can use the item, or nil otherwise
---@since Patch 7.0.3 (2016-07-19): itemID return added between name and texture.
function GetInboxItem(index, itemIndex)
end

---Returns the item link of an item attached to a message in the mailbox.
---@param message number - The index of the message to query, in the range of [1,GetInboxNumItems()]
---@param attachment number - The index of the attachment to query, in the range of [1,ATTACHMENTS_MAX_RECEIVE]
---@return string itemLink - The ItemLink for the specified item
function GetInboxItemLink(message, attachment)
end

---Returns the number of messages in the mailbox.
---@return number numItems 
---@return number totalItems 
---@since Patch 3.2.0 (2009-08-04): Added totalItems return.
function GetInboxNumItems()
end

---Returns the text of a message in the mailbox.
---@param index number - the index of the message (1 is the first message)
---@return string bodyText - the text of the message.
---@return string stationaryMiddle - the texture for the middle of the stationary.
---@return string stationaryEdge - the texture for the edge of the stationary.
---@return boolean isTakeable - whether the copy of the mail text has been taken.
---@return boolean isInvoice - not nil if the message is an auction house Invoice. see GetInboxInvoiceInfo()
---@return boolean isConsortium - indicates the message relates to crafting work orders. see C_Mail.GetCraftingOrderMailInfo()
---@since Patch 10.0.2 (2022-11-15): Return value isConsortium added.
function GetInboxText(index)
end

---Returns the inspected unit's rated PvP stats.
---@param bracketId number - rated PvP bracket to query, ascending from 1 for 2v2, 3v3, and 5v5 arenas, and Rated Battlegrounds respectively.
---@return number rating - inspected unit's current personal rating in the specified bracket.
---@return number seasonPlayed - number of games played in the bracket during the current season.
---@return number seasonWon - number of games won in the bracket during the current season.
---@return number weeklyPlayed - number of games played in the bracket during the current week.
---@return number weeklyWon - number of games won in the bracket during the current week.
---@since Patch 5.4.0 (2013-09-10): Added, replaced GetInspectArenaTeamData.
function GetInspectArenaData(bracketId)
end

---Returns honor info for the inspected player unit.
---@return number todayHK - Honor kills made today.
---@return number todayHonor - Honor rewarded today.
---@return number yesterdayHK - Amount of honor kills made yesterday.
---@return number yesterdayHonor - The honor rewarded yesterday.
---@return number lifetimeHK - Total lifetime honor kills.
---@return number lifetimeRank - Highest PvP rank ever attained.
function GetInspectHonorData()
end

---Returns the specialization for the inspected player unit.
---@param unit string UnitId - The player to inspect.
---@return number id - SpecializationID.
---@since Patch 5.0.4 (2012-08-28): Added.
function GetInspectSpecialization(unit)
end

---
---@return number result 
function GetInstanceBootTimeRemaining()
end

---Returns info for the map instance the character is currently in.
---@return string 1. name - The localized name of the instance—otherwise, the continent name (e.g., Eastern Kingdoms, Kalimdor, Outland, Northrend, Pandaria).
---@return string 2. instanceType - "none" if the player is not in an instance, "scenario" for scenarios, "party" for dungeons, "raid" for raids, "arena" for arenas, and "pvp" for battlegrounds.  Many of the following return values will be nil or otherwise useless in the case of "none".
---@return number 3. difficultyID - The DifficultyID of the instance. Will return 0 while not in an instance.
---@return string 4. difficultyName - The localized name for the instance's difficulty ("10 Player", "25 Player (Heroic)", etc.).
---@return number 5. maxPlayers - Maximum number of players permitted within the instance at the same time.
---@return number 6. dynamicDifficulty - The difficulty of dynamic enabled instances. This no longer appears to be used.
---@return boolean 7. isDynamic - If the instance difficulty can be changed while zoned in. This is true for most raids after and including Icecrown Citadel.
---@return number 8. instanceID - The InstanceID for the instance or continent.
---@return number 9. instanceGroupSize - The number of players within your instance group.
---@return number 10. LfgDungeonID - The LfgDungeonID for the current instance group, nil if not in a dungeon finder group.
---@since Patch 8.0.1 (2018-07-17): Now returns a LfgDungeonID, in addition to the previous returns. (Unsure when this was added, guessing 8.0.1 but could have been way earlier.)
function GetInstanceInfo()
end

---Returns info for the instance lock timer for the current instance.
---@return number lockTimeLeft - Seconds until lock period ends.
---@return boolean isPreviousInstance - Whether this instance has yet to be entered since last lockout expired (allowing for lock extension options).
---@return number encountersTotal - Total number of bosses in the instance.
---@return number encountersComplete - Number of bosses already dead in the instance.
---@since Patch 3.2.0 (2009-08-04): isPreviousInstance return value added.
function GetInstanceLockTimeRemaining()
end

---Returns information about bosses in the instance the player is about to be saved to.
---@param id number - Index of the boss to query, ascending from 1 to encountersTotal return value from GetInstanceLockTimeRemaining.
---@return string bossName - Name of the boss.
---@return string texture - ?
---@return boolean isKilled - true if the boss has been killed.
function GetInstanceLockTimeRemainingEncounter(id)
end

---Returns the durability status of an equipped item.
---@param index string - one of the following
---@return number alertStatus - 0 for normal (6 or more durability points left), 1 for yellow (5 to 1 durability points left), 2 for broken (0 durability points left).
function GetInventoryAlertStatus(index)
end

---Returns true if an inventory item has zero durability.
---@param unit string UnitToken - The unit whose inventory is to be queried.
---@param invSlotId number InventorySlotId - to be queried, obtained via GetInventorySlotInfo.
---@return boolean isBroken - Returns true if the specified item is broken, false otherwise.
function GetInventoryItemBroken(unit, invSlotId)
end

---Get cooldown information for an inventory item.
---@param unit string UnitId - The unit whose inventory is to be queried.
---@param invSlotId number InventorySlotId - to be queried, obtained via GetInventorySlotInfo.
---@return number start - The start time of the cooldown period, or 0 if there is no cooldown (or no item in the slot)
---@return number duration - The duration of the cooldown period (NOT the remaining time). 0 if the item has no use/cooldown or the slot is empty.
---@return number enable - Returns 1 or 0. 1 if the inventory item is capable of having a cooldown, 0 if not.
function GetInventoryItemCooldown(unit, invSlotId)
end

---Determine the quantity of an item in an inventory slot.
---@param unit string UnitId - The unit whose inventory is to be queried.
---@param invSlotId number InventorySlotId - to be queried, obtained via GetInventorySlotInfo.
---@return number count - Returns 1 on empty slots (Thus, on empty ammo slot, 1 is returned). For containers (Bags, etc.), this returns the number of items stored inside the container (Thus, empty containers return 0). Under all other conditions, this function returns the amount of items in the specified slot.
function GetInventoryItemCount(unit, invSlotId)
end

---Returns the durability of an equipped item.
---@param invSlotId number InventorySlotId
---@return number current - current durability value.
---@return number maximum - maximum durability value.
function GetInventoryItemDurability(invSlotId)
end

---Returns the item ID for an equipped item.
---@param unit string UnitId - The unit whose inventory is to be queried.
---@param invSlotId number InventorySlotId - to be queried, obtained via GetInventorySlotInfo.
---@return number itemId - item id of the item in the inventory slot; nil if there is no item.
---@return number unknown - ?
function GetInventoryItemID(unit, invSlotId)
end

---Returns the item link for an equipped item.
---@param unit string UnitId - The unit whose inventory is to be queried.
---@param invSlotId number InventorySlotId - The inventory slot to be queried.
---@return string itemLink ? : ItemLink - The item link for the specified item.
function GetInventoryItemLink(unit, invSlotId)
end

---Returns the quality of an equipped item.
---@param unit string UnitId - The unit whose inventory is to be queried.
---@param invSlotId number InventorySlotId - The slot ID to be queried, obtained via GetInventorySlotInfo().
---@return Enum.ItemQuality quality 🔗
function GetInventoryItemQuality(unit, invSlotId)
end

---Returns the texture for an equipped item.
---@param unit string UnitToken
---@param invSlotId number InventorySlotId
---@return number texture : fileID
function GetInventoryItemTexture(unit, invSlotId)
end

---Returns a list of items that can be equipped in a given inventory slot.
---@param slot number InvSlotId - The inventory slot ID.
---@param returnTable table - The table that will be populated with available items.
---@param transmogrify boolean ?
---@return table returnTable - A keyvalue table ItemLocation bitfield -> ItemLink.
function GetInventoryItemsForSlot(slot, returnTable, transmogrify)
end

---Returns info for an equipment slot.
---@param invSlotName string - InventorySlotName to query (e.g. "HEADSLOT").
---@return number invSlotId : InventorySlotId - The ID to use to refer to that slot in the other GetInventory functions.
---@return string textureName - The texture to use for the empty slot on the paper doll display.
---@return boolean checkRelic 
function GetInventorySlotInfo(invSlotName)
end

---Retrieves information about a player that could be invited.
---@param guid unknown - return value of function GetNextPendingInviteConfirmation
---@return number confirmationType - Integer value related to constants like LE_INVITE_CONFIRMATION_REQUEST
---@return string name - name of the player
---@return string guid - a string containing the hexadecimal representation of the player's GUID. Player-[server ID]-[player UID] (Example: "Player-976-0002FD64")
---@return boolean rolesInvalid - The player has no valid roles.
---@return boolean willConvertToRaid - Inviting this player or group will convert your party to a raid.
---@return number level - player level
---@return number spec - player specialization id. The player specialization name can be requested by GetSpecializationInfoByID.
---@return number itemLevel - player item level
function GetInviteConfirmationInfo(guid)
end

---
---@return number r [0.0-1.0]
---@return number g [0.0-1.0]
---@return number b [0.0-1.0]
function GetItemLevelColor()
end

---
---@return number level 
function GetJailersTowerLevel()
end

---Returns info for a LFG votekick in progress.
---@return boolean inProgress - true if a Kick vote is currently in progress, false otherwise.
---@return boolean didVote - true if you have already voted, false otherwise.
---@return boolean myVote - true if you've voted to kick the player, false otherwise.
---@return string targetName - name of the player being voted on.
---@return number totalVotes - total votes cast so far.
---@return number bootVotes - votes in favor of kicking the player cast so far.
---@return number timeLeft - amount of time left to vote.
---@return string reason - reason given for initiating a vote kick vote against a player.
function GetLFGBootProposal()
end

---Returns the time at which you may once again use the dungeon finder after prematurely leaving a group.
---@return number expiryTime ? - time (GetTime() value) at which you may once again use the dungeon finder; nil if you're not currently under the effects of the deserter penalty.
---@since Patch 3.3.3 (2010-03-23): Added.
function GetLFGDeserterExpiration()
end

---Returns info about a specific encounter in an LFG/RF dungeon.
---@param dungeonID number - Ranging from 1 to around 2000 in patch 8.1.5
---@param encounterIndex number - Index from 1 to GetLFGDungeonNumEncounters(). For multi-part raids, many bosses will never be accessible to players because they were in an earlier 'wing'.
---@return string bossName - The localized name of the encounter in question
---@return string texture - The file path for a texture associated with the encounter, usually an achievement icon. If Blizzard hasn't designated one for the encounter, expect this return to be nil.
---@return boolean isKilled - True if you have killed/looted the boss since the last reset period
---@return boolean unknown4 - Unused by Blizzard, has an unknown purpose, and seems to always be false
---@since Patch 4.3.0 (2011-11-29): Added.
function GetLFGDungeonEncounterInfo(dungeonID, encounterIndex)
end

---Returns info for a LFG dungeon.
---@param dungeonID number LfgDungeonID
---@return string 1. name - The name of the dungeon/event
---@return number 2. typeID - 1=TYPEID_DUNGEON or LFR, 2=raid instance, 4=outdoor area, 6=TYPEID_RANDOM_DUNGEON
---@return number 3. subtypeID - 0=Unknown, 1=LFG_SUBTYPEID_DUNGEON, 2=LFG_SUBTYPEID_HEROIC, 3=LFG_SUBTYPEID_RAID, 4=LFG_SUBTYPEID_SCENARIO, 5=LFG_SUBTYPEID_FLEXRAID
---@return number 4. minLevel - Earliest level permitted to walk into the instance portal
---@return number 5. maxLevel - Highest level permitted to walk into the instance portal
---@return number 6. recLevel - Recommended level to queue for this dungeon
---@return number 7. minRecLevel - Earliest level to queue for this dungeon
---@return number 8. maxRecLevel - Highest level to queue for this dungeon
---@return number 9. expansionLevel - Refers to GetAccountExpansionLevel() values
---@return number 10. groupID - Unknown
---@return string 11. textureFilename - For example "Interface\LFDFRAME\LFGIcon-%s.blp" where %s is the textureFilename value
---@return number 12. difficulty : DifficultyID
---@return number 13. maxPlayers - Maximum players allowed
---@return string 14. description - Usually empty for most dungeons but events contain descriptions of the event, like Love is in the Air daily or Brewfest, e.g. (string)
---@return boolean 15. isHoliday - If true then this is a holiday event
---@return number 16. bonusRepAmount - Unknown
---@return number 17. minPlayers - Minimum number of players (before the group disbands?); usually nil
---@return boolean 18. isTimeWalker - If true then it's Timewalking Dungeon (false during Turbulent Timeways events)
---@return string 19. name2 - Currently unknown.  Note: seems to show the alternative name used by the Instance Lockout interface, as returned by GetSavedInstanceInfo().
---@return number 20. minGearLevel - The minimum average item level to queue for this dungeon; may be 0 if item level is ignored.
---@return boolean 21. isScalingDungeon 
---@return number 22. lfgMapID : InstanceID
---@since Patch 8.3.0 (2020-01-14): Added lfgMapID return.
function GetLFGDungeonInfo(dungeonID)
end

---Returns the number of encounters and number of completed encounters for a specified dungeon ID.
---@param dungeonID number LfgDungeonID
---@return number numEncounters - Number of encounters in the specified dungeon.
---@return number numCompleted - Number of completed encounters in the specified dungeon.
---@since Patch 4.3.0 (2011-11-29): Added.
function GetLFGDungeonNumEncounters(dungeonID)
end

---Returns the weekly limits reward for a currency (e.g. Valor Point Cap).
---@param dungeonID number id of the dungeon type for which information is being sought.
---@return number currencyID - ID for the currency
---@return number dungeonID - ID for the dungeon type
---@return number quantity - Quantity gained from basic dungeons
---@return number limit - Limit gained from basic dungeons
---@return number overallQuantity - Quantity gained from high end dungeons (Zandalari)
---@return number overallLimit - Limit gained from high end dungeons (Zandalari)
---@return number periodPurseQuantity - Quantity gained from all sources (raids)
---@return number periodPurseLimit - Limit gained from all sources (raids)
---@return number purseQuantity - Currently possessed amount
---@return number purseLimit - Limit for possessed amount
function GetLFGDungeonRewardCapBarInfo(dungeonID)
end

---Returns information about the current LFD group invite.
---@return boolean proposalExists - true if your character has a pending LFD invitation, nil otherwise.
---@return number id - dungeonID (?)
---@return number typeID - LFG type ID - one of TYPEID_DUNGEON (1), TYPEID_RANDOM_DUNGEON (6).
---@return number subtypeID - One of the LFG_SUBTYPEID_* values:
function GetLFGProposal()
end

---Returns info for the current LFG queue.
---@param category number - Depending on which type of LFG you're looking for.
---@param activeID number ? - Specific LFG 'forming group' ID
---@return boolean 1. hasData - indicates if you are in queue
---@return boolean 2. leaderNeeds - if group still needs a leader designated
---@return boolean 3. tankNeeds - waiting for a tank
---@return boolean 4. healerNeeds - waiting for a designated healer
---@return boolean 5. dpsNeeds - needing more DPS'ers
---@return number 6. totalTanks - total tanks needed for this queue
---@return number 7. totalHealers - total healers needed for this queue
---@return number 8. totalDPS - total DPS'ers needed for this queue
---@return number 9. instanceType - unknown relation
---@return number 10. instanceSubType - unknown relation
---@return string 11. instanceName - as selected in LFD Finder
---@return number 12. averageWait - average wait for an entire group to be assembled
---@return number 13. tankWait - average wait time for queuing Tanks
---@return number 14. healerWait - average wait time for queuing Healers
---@return number 15. dpsWait - average wait time for queuing DPS'ers
---@return number 16. myWait - predicted wait time for you
---@return number 17. queuedTime - appears to be the absolute time of when the queue began.  Use against GetTime()
---@return number 18. activeID 
---@since Patch 5.4.0 (2013-09-10): Added activeID argument/return.
function GetLFGQueueStats(category, activeID)
end

---Returns the time at which you may once again queue for a random dungeon.
---@return number expiryTime ? - time (GetTime() value) at which you may once again queue for a random dungeon if you're currently unable to do so, nil otherwise.
---@since Patch 3.3.3 (2010-03-23): Added.
function GetLFGRandomCooldownExpiration()
end

---Returns info for a LFG random dungeon.
---@param index number - index of a LFG random dungeon, from 1 to GetNumRandomDungeons()
---@return number 1. id 
---@return string 2. name - The name of the dungeon/event
---@return number 3. typeID - 1=TYPEID_DUNGEON or LFR, 2=raid instance, 4=outdoor area, 6=TYPEID_RANDOM_DUNGEON
---@return number 4. subtypeID - 0=Unknown, 1=LFG_SUBTYPEID_DUNGEON, 2=LFG_SUBTYPEID_HEROIC, 3=LFG_SUBTYPEID_RAID, 4=LFG_SUBTYPEID_SCENARIO, 5=LFG_SUBTYPEID_FLEXRAID
---@return number 5. minLevel - Earliest level permitted to walk into the instance portal
---@return number 6. maxLevel - Highest level permitted to walk into the instance portal
---@return number 7. recLevel - Recommended level to queue for this dungeon
---@return number 8. minRecLevel - Earliest level to queue for this dungeon
---@return number 9. maxRecLevel - Highest level to queue for this dungeon
---@return number 10. expansionLevel - Refers to GetAccountExpansionLevel() values
---@return number 11. groupID - Unknown
---@return string 12. textureFilename - For example "Interface\LFDFRAME\LFGIcon-%s.blp" where %s is the textureFilename value
---@return number 13. difficultyID : DifficultyID
---@return number 14. maxPlayers - Maximum players allowed
---@return string 15. description - Usually empty for most dungeons but events contain descriptions of the event, like Love is in the Air daily or Brewfest, e.g. (string)
---@return boolean 16. isHoliday - If true then this is a holiday event
---@return number 17. bonusRepAmount - Unknown
---@return number 18. minPlayers - Minimum number of players (before the group disbands?); usually nil
---@return boolean 19. isTimeWalker - If true then it's Timewalking Dungeon
---@return string 20. name2 - Currently unknown.  Note: seems to show the alternative name used by the Instance Lockout interface, as returned by GetSavedInstanceInfo().
---@return number 21. minGearLevel - The minimum average item level to queue for this dungeon; may be 0 if item level is ignored.
---@return boolean 22. isScalingDungeon 
function GetLFGRandomDungeonInfo(index)
end

---Returns info for the LFG Call to Arms rewards.
---@param dungeonID number LfgDungeonID - The type of the dungeons to queue for. See table below.
---@param shortageSeverity number - A number from 1 to LFG_ROLE_NUM_SHORTAGE_TYPES. See below for specific shortage types.
---@return boolean eligible - Unknown. Possibly whether there are any shortages of this type, possibly whether the player is somehow eligible to participate
---@return boolean forTank - Whether this shortage type applies to the tank role
---@return boolean forHealer - Whether this shortage type applies to the healer role
---@return boolean forDamage - Whether this shortage type applies to the damage role
---@return number itemCount - Unknown. Related to the potential rewards
---@return number money - Unknown. Most likely the amount of money you get as a reward
---@return number xp - Unknown. Most likely the amount of xp you get as a reward
function GetLFGRoleShortageRewards(dungeonID, shortageSeverity)
end

---Returns the name of the battleground queue triggering a role check.
---@return string queueName - name of the battleground queue triggering a role check.
---@since Patch 5.3.0 (2013-05-21): Added.
function GetLFGRoleUpdateBattlegroundInfo()
end

---Returns the objectives you are currently flagged to as LFG.
---@param index number 
---@return number dungeonID : LfgDungeonID
---@return number dungeonType 
---@return number dungeonSubType 
function GetLFGRoleUpdateSlot(index)
end

---Returns the roles the player signed up for in the Dungeon Finder.
---@return boolean isLeader - if you signed up as a candidate for group leader
---@return boolean isTank - if you signed up as a tank
---@return boolean isHealer - if you signed up as a healer
---@return boolean isDPS - if you signed up as DPS
function GetLFGRoles()
end

---Seems to be for used ordering the LFR list.
---@param LFRRaidList table - ?
---@return table raidList - Key = ?; Value = Dungeon ID
function GetLFRChoiceOrder(LFRRaidList)
end

---Returns the languages that the character can speak by index.
---@param index number - Ranging from 1 up to GetNumLanguages()
---@return string language 
---@return number languageID : LanguageID
function GetLanguageByIndex(index)
end

---Returns up to three senders of unread mail.
---@return string sender1 ? - Name of the sender ("Bob", "Alliance Auction House", ...), or nil if unavailable.
---@return string sender2 ?
---@return string sender3 ?
function GetLatestThreeSenders()
end

---
---@return number result ?
function GetLegacyRaidDifficultyID()
end

---Returns the player's leech percentage.
---@return number leech - the actual leech bonus in percent; e.g. 5.13452
function GetLifesteal()
end

---
---@return number hour 
---@return number minute 
function GetLocalGameTime()
end

---Returns the game client locale.
---@return string locale 
function GetLocale()
end

---Returns a table with all of the loot info for the current loot window.
---@return table info []
---@since Patch 6.0.2 (2014-10-14): Added.
function GetLootInfo()
end

---Returns information about the loot event with rollID.
---@param rollID number - The number increments by 1 for each new roll. The count is not reset by reloading the UI.
---@return string texture - The path of the texture of the item icon.
---@return string name - The name of the item.
---@return number count - The quantity of the item.
---@return number quality - The quality of the item. Starting with 1 for common, going up to 5 for legendary.
---@return boolean bindOnPickUp - Returns 1 when the item is bind on pickup, nil otherwise.
---@return boolean canNeed - Returns 1 when you can roll need on the item, nil otherwise.
---@return boolean canGreed - Returns 1 when you can roll greed on the item, nil otherwise.
---@return boolean canDisenchant - Returns 1 when you can  [Disenchant] the item, nil otherwise.
---@return number reasonNeed - See details.
---@return number reasonGreed - See details.
---@return number reasonDisenchant - See details.
---@return number deSkillRequired - Required skill in enchanting to disenchant the item.
---@return boolean canTransmog - Returns 1 when you can transmogrify the item, nil otherwise.
---@since Patch 1.11.0 (2006-06-19): Added bindOnPickUp return.
function GetLootRollItemInfo(rollID)
end

---Retrieves the itemlink of an item being rolled on.
---@param id number - id is a number used by the server to keep track of items being rolled on.  It is generated server side and transmitted to the client.
---@return string itemLink : ItemLink
function GetLootRollItemLink(id)
end

---
---@param rollID number .
---@return number timeLeft ? - Seconds left in Milliseconds or nil.
function GetLootRollTimeLeft(rollID)
end

---Returns info for a loot slot.
---@param slot number - the index of the loot (1 is the first item, typically coin)
---@return string lootIcon - The path of the graphical icon for the item.
---@return string lootName - The name of the item.
---@return number lootQuantity - The quantity of the item in a stack. Note: Quantity for coin is always 0.
---@return number currencyID - The identifying number of the currency loot in slot, if applicable. Note: Returns nil for slots with coin and regular items.
---@return number lootQuality The Enum.ItemQuality code for the item.
---@return boolean locked - Whether you are eligible to loot this item or not. Locked items are by default shown tinted red.
---@return boolean isQuestItem - Self-explanatory.
---@return number questID - The identifying number for the quest.
---@return boolean isActive - True if the item starts a quest that you are not currently on.
---@since Patch 8.0.1 (2018-07-17): Added new fourth return value (currencyID); moved subsequent return values down one
function GetLootSlotInfo(slot)
end

---Returns the item link for a loot slot.
---@param index number - The index of the item in the list to retrieve info from (1 to GetNumLootItems())
---@return string itemLink - The itemLink for the specified item, or nil if index is invalid.
function GetLootSlotLink(index)
end

---Returns an integer loot type for a given loot slot.
---@param slotIndex number - Position in loot window to query, from 1 - GetNumLootItems().
---@return number slotType - Type ID indicating slot content type:
function GetLootSlotType(slotIndex)
end

---Returns information about the source of the objects in a loot slot.
---@param lootSlot number - index of the loot slot, ascending from 1 up to GetNumLootItems()
---@return string guid - GUID of the source being looted. Can also return GameObject guids for objects like ore veins and herbs, and Item guids for containers like lockboxes.
---@return number quantity - Quantity of the object being looted from this source.
---@since Patch 5.0.4 (2012-08-28): Added.
function GetLootSourceInfo(lootSlot)
end

---Returns the player's current loot specialization.
---@return number specID : SpecializationID - The current loot specialization, or 0 if loot specialization is not set (and the player receives loot based on their current specialization).
---@since Patch 5.3.0 (2013-05-21): Added.
function GetLootSpecialization()
end

---Returns the loot threshold quality for e.g. master loot.
---@return number threshold - The minimum quality of item which will be rolled for or assigned by the master looter. The value is 0 to 7, which represents Poor to Heirloom.
function GetLootThreshold()
end

---Returns the body (macro text) of a macro.
---@param macro number |string - Macro index or name.
---@return string body ? - The macro body or nothing if the macro doesn't exsist.
function GetMacroBody(macro)
end

---Returns the index for a macro by name.
---@param name string - Macro name to query.
---@return number macroSlot - Macro slot index containing a macro with the queried name, or 0 if no such slot exists.
function GetMacroIndexByName(name)
end

---Returns info for a macro.
---@param macro number |string - Macro slot index or the name of the macro. Slots 1 through 120 are general macros; 121 through 150 are per-character macros.
---@return string name - The name of the macro.
---@return number icon : fileID - Macro icon texture.
---@return string body - Macro contents.
---@since Patch 3.0.2 (2008-10-14): Removed isLocal return.
function GetMacroInfo(macro)
end

---Returns information about the item a given macro is set to use.
---@param name number |string - The macro index to query, or the name of the macro to query.
---@return string itemName - The localized name of the item.
---@return string itemLink : ItemLink - The localized link of the item.
function GetMacroItem(name)
end

---Returns information about the spell a given macro is set to cast.
---@param name number |string - The macro index to query, or the name of the macro to query.
---@return number id - The ability's spellId.
---@since Patch 8.0.1 (2018-07-17): Removed original two return values, name and rank.[1][2]
function GetMacroSpell(name)
end

---Returns the mana regeneration per second.
---@return number baseManaRegen - Mana regeneration per second when not casting spells.
---@return number castingManaRegen - Mana regeneration per second while casting spells.
function GetManaRegen()
end

---Returns the name of an eligible player for receiving master loot by index.
---@param slot number - The loot slot number of the item you want to get information about
---@param index number - The number of the player whose name you wish to return. Typically between 1 and 40.
---@return string candidate - The name of the player.
function GetMasterLootCandidate(slot, index)
end

---Returns the base mastery percentage.
---@return number mastery - sum of player's base and rating bonus mastery.
function GetMastery()
end

---Returns the effective mastery percentage.
---@return number masteryEffect - Current effect of the player's mastery, typically a damage increase percentage, or a percentage chance to trigger some specialization-specific effect.
---@return number bonusCoefficient - A spec-dependent coefficient multiplied onto the player's raw mastery effect (as returned by GetMastery) to yield the actual effect of the mastery.
---@since Patch 5.0.4 (2012-08-28): Added.
function GetMasteryEffect()
end

---Returns the max number of battlefields you can queue for.
---@return number maxBattlefieldID - Max number of Battlefields
function GetMaxBattlefieldID()
end

---
---@param ratingIndex number 
---@return number rating ?
function GetMaxCombatRatingBonus(ratingIndex)
end

---Maps an expansion level to a maximum character level for that expansion.
---@param expansionLevel number 
---@return number maxLevel 
---@since Patch 9.0.1 (2020-10-13): Removed useModernLevelMapping
function GetMaxLevelForExpansionLevel(expansionLevel)
end

---Returns the highest reachable character level for the latest expansion.
---@return number maxLevel 
---@since Patch 9.0.1 (2020-10-13): Added.
function GetMaxLevelForLatestExpansion()
end

---Returns the highest reachable character level for the players' owned expansion level.
---@return number maxLevel 
---@since Patch 9.0.1 (2020-10-13): Added.
function GetMaxLevelForPlayerExpansion()
end

---
---@return number maxPlayerLevel 
function GetMaxPlayerLevel()
end

---Returns the number of available talent tiers.
---@return number tiers - number of talent tiers available to the player's character, based on the character's level.
---@since Patch 5.0.4 (2012-08-28): added
function GetMaxTalentTier()
end

---
---@return number expansionLevel 
---@since Patch 8.0.1 (2018-07-17): Added.
function GetMaximumExpansionLevel()
end

---Returns the player's melee haste percentage.
---@return number haste 
function GetMeleeHaste()
end

---Returns "alternative currency" information about an item.
---@param index number - The index of the item in the merchant's inventory
---@return number itemCount - The number of different types of items required to purchase the item.
function GetMerchantItemCostInfo(index)
end

---Returns info for the currency cost for a merchant item.
---@param index number - Slot in the merchant's inventory to query.
---@param itemIndex number - The index for the required item cost type, ascending from 1 to itemCount returned by GetMerchantItemCostInfo.
---@return string itemTexture - The texture that represents the item's icon
---@return number itemValue - The number of that item required
---@return string itemLink - An itemLink for the cost item, nil if a currency.
---@return string currencyName - Name of the currency required, nil if an item.
function GetMerchantItemCostItem(index, itemIndex)
end

---Returns the itemID of an item of the current merchant window.
---@param index number 
---@return number itemID - itemID of Merchant Item
function GetMerchantItemID(index)
end

---Returns the item link for a merchant item.
---@param index number - The index of the item in the merchant's inventory
---@return string link ? - Returns an ItemLink
function GetMerchantItemLink(index)
end

---Returns the maximum stack size for a merchant item.
---@param index number - The index of the item in the merchant's inventory.
---@return number maxStack - The maximum stack size for the item.
function GetMerchantItemMaxStack(index)
end

---Returns the number of different items a merchant sells.
---@return number numItems - the number of items the merchant carries, or 0 if not currently interacting with an item merchant.
function GetMerchantNumItems()
end

---Returns the zone text that is displayed over the minimap.
---@return string zone - name of the (sub-)zone currently shown above the minimap, e.g. "Trade District".
function GetMinimapZoneText()
end

---
---@return number expansionLevel 
---@since Patch 7.3.2 (2017-10-24): Added.
function GetMinimumExpansionLevel()
end

---Returns info for the mirror timer, e.g. fatigue, breath and feign death.
---@param id number - timer index, from 1 to MIRRORTIMER_NUMTIMERS (3 as of 3.2). In general, the following correspondence holds: 1 = Fatigue, 2 = Breath, 3 = Feign Death.
---@return string timer - A string identifying timer type; "EXHAUSTION", "BREATH", and "FEIGNDEATH", or "UNKNOWN" indicating that the timer corresponding to that index is not currently active, and other return values are invalid.
---@return number initial - Value of the timer when the it started.
---@return number maxvalue - Maximum value of the timer.
---@return number scale - Change in timer value per second.
---@return boolean paused - 0 if the timer is currently running, a value greater than zero if it is not.
---@return string label - Localized timer name.
function GetMirrorTimerInfo(id)
end

---Returns the current value of the mirror timer.
---@param timer string - the first return value from GetMirrorTimerInfo, identifying the timer queried. Valid values include "EXHAUSTION", "BREATH" and "FEIGNDEATH".
function GetMirrorTimerProgress(timer)
end

---
---@return number reduction 
function GetModResilienceDamageReduction()
end

---Returns the modifier key assigned to the given action.
---@param action  AUTOLOOTTOGGLE, CHATLINK, COMPAREITEMS, DRESSUP, FOCUSCAST, OPENALLBAGS, PICKUPACTION, QUESTWATCHTOGGLE, SELFCAST, SHOWITEMFLYOUT, SOCKETITEM, SPLITSTACK, STICKYCAMERA, TOKENWATCHTOGGLE
---@return  key ALT, CTRL, SHIFT, NONE
function GetModifiedClick(action)
end

---Returns the amount of money the player character owns.
---@return number money - The amount of money the player's character has.
function GetMoney()
end

---Returns the mouse button responsible during an OnClick event (e.g. "RightButton").
---@return string buttonName - name of the button responsible for the innermost OnClick event. For example, "LeftButton"
function GetMouseButtonClicked()
end

---
---@param button mouseButton 
---@return string buttonName 
function GetMouseButtonName(button)
end

---Returns the frames that currently have mouse focus.
---@return ScriptRegion regions []
function GetMouseFoci()
end

---
---@param movieId number 
---@return boolean inProgress 
---@return number downloaded : BigUInteger
---@return number total : BigUInteger
function GetMovieDownloadProgress(movieId)
end

---Returns a list of valid spells for a totem bar slot.
---@param slot number - The totem bar slot number
---@return number totem1 - The spell Id of the first valid spell for the slot
---@return number totem2 - The spell Id of the second valid spell for the slot
---@return number totem3 - The spell Id of the third valid spell for the slot
---@return number totem4 - The spell Id of the fourth valid spell for the slot
---@return number totem5 - The spell Id of the fifth valid spell for the slot
---@return number totem6 - The spell Id of the sixth valid spell for the slot
---@return number totem7 - The spell Id of the seventh valid spell for the slot
function GetMultiCastTotemSpells(slot)
end

---
---@return number nativeRealmID 
function GetNativeRealmID()
end

---Produces a table describing all the harmful consequences of wearing corrupted gear without resistance.
---@return CorruptionEffectInfo corruptionEffects []
---@since Patch 8.3.0 (2020-01-14): Added.
function GetNegativeCorruptionEffectInfo()
end

---
---@return ConnectionIptype ipTypes - 1=IPv4, 2=IPv6
function GetNetIpTypes()
end

---Returns bandwidth and latency network information.
---@return number bandwidthIn - Current incoming bandwidth (download) usage, measured in KB/s.
---@return number bandwidthOut - Current outgoing bandwidth (upload) usage, measured in KB/s.
---@return number latencyHome - Average roundtrip latency to the home realm server (only updated every 30 seconds).
---@return number latencyWorld - Average roundtrip latency to the current world server (only updated every 30 seconds).
---@since Patch 4.0.6 (2011-02-08): Now returns both home and world latency, instead of just world latency.
function GetNetStats()
end

---Returns the next achievement in a chain.
---@param achievementID number - The ID of the Achievement
---@return number nextID ? - The ID of the next Achievement in chain, nil otherwise
---@return boolean completed ? - True if the next achievement has been completed, nil otherwise
---@since Patch 3.0.2 (2008-10-14): Added.
function GetNextAchievement(achievementID)
end

---Returns the realm name.
---@return string realm - The name of the realm.
---@return string normalizedRealm ? - The name of the realm without spaces, - hyphens, or . periods.
---@since Patch 5.4.1 (2013-10-29): CVar realmName was removed[2].
function GetNormalizedRealmName()
end

---Returns the number of quests which can be turned in at a non-gossip quest giver.
---@return number numActiveQuests - The number of active quests from a non-gossip quest NPC.
function GetNumActiveQuests()
end

---Returns the number of Archaeology races in the game.
---@return number numRaces - The number of Archaeology races in the game.
function GetNumArchaeologyRaces()
end

---Returns the amount of artifacts the player has acquired from the provided race.
---@param raceIndex number - Index of the race to be selected.
---@return number numProjects - Number of artifacts for that race.
function GetNumArtifactsByRace(raceIndex)
end

---Returns the number of displayed popup quest notifications.
---@return number numPopups - number of popup quest notifications
function GetNumAutoQuestPopUps()
end

---Returns the number of available quests at a non-gossip quest giver.
---@return number nbrAvailableQuests - The number of available quests.
function GetNumAvailableQuests()
end

---Returns the number of players listed in the battlefield scoreboard.
---@return number numBattlefieldScores - total number of players in the group (either party or raid), 0 if not in a group.
function GetNumBattlefieldScores()
end

---Returns the number of battleground types.
---@return number numBattlegrounds - the number of distinct battleground types offered by the server. The player may not be able to join all of those due to level restrictions.
function GetNumBattlegroundTypes()
end

---Returns the number of bindings and headers in the key bindings window.
---@return number numKeyBindings - The total number of key bindings (including headers) listed in the key bindings window.
function GetNumBindings()
end

---Returns the number of items available for buyback.
---@return number numItems - the number of items available for buyback; the maximum index for GetBuybackItemInfo().
function GetNumBuybackItems()
end

---Returns the number of player classes in the game.
---@return number numClasses 
---@since Patch 5.0.4 (2012-08-28): Added.
function GetNumClasses()
end

---- C_PetJournal.GetNumPets- C_MountJournal.GetNumDisplayedMounts
---@param type string - Type of companions to count: "CRITTER", or "MOUNT".
---@return number count - The number of companions of a specific type.
---@since Patch 5.0.4 (2012-08-28): Companions are now account-wide. This function only returns the correct value for mounts -- the non-combat companion count is based on the companions the character has acquired prior to the patch. Use the C_PetJournal API to query battle pet-related information.
function GetNumCompanions(type)
end

---Returns the number of completed achievements for the comparison player.
---@param achievementID number - ID of the achievement to retrieve information for.
---@return number total - Total number of achievements currently in the game.
---@return number completed - Number of achievements completed by the comparison unit.
---@since Patch 3.0.2 (2008-10-14): Added.
function GetNumComparisonCompletedAchievements(achievementID)
end

---Returns the total and completed number of achievements.
---@return number total - total number of available achievements
---@return number completed - total number of completed achievements
---@since Patch 3.0.2 (2008-10-14): Added.
function GetNumCompletedAchievements()
end

---Returns the number of suggested declension sets for a Russian name.
---@param name string 
---@param gender Enum.UnitSex ?
---@return number numDeclensionSets - Used for DeclineName()
function GetNumDeclensionSets(name, gender)
end

---
---@return number channelCount - the number of channels and headers currently displayed by ChannelFrame.
function GetNumDisplayChannels()
end

---
---@return number numExpansions - e.g. returned 9 during the Shadowlands pre-patch
---@since Patch 7.3.5 (2018-01-16): Added.
function GetNumExpansions()
end

---Returns the number of achievements after filtering.
---@return number numFiltered - The number of achievements that match the search string.
---@since Patch 7.0.3 (2016-07-19): Added.
function GetNumFilteredAchievements()
end

---Returns the number of available Flexible Raid instances.
---@return number numInstances - number of instances available for flexible raid groups.
---@since Patch 5.4.0 (2013-09-10): Added.
function GetNumFlexRaidDungeons()
end

---Returns the number of players in the group.
---@param groupType number ?
If omitted, defaults to INSTANCE if applicable, HOME otherwise.
---@return number numMembers - total number of players in the group (either party or raid), 0 if not in a group.
---@since Patch 5.0.4 (2012-08-28): Replaced GetNumRaidMembers and GetRealNumRaidMembers.
function GetNumGroupMembers(groupType)
end

---Returns the number of total and online guild members.
---@return number numTotal - Total number of players in the guild, or 0 if not in a guild.
---@return number numOnline - Number of players currently online, or 0 if not in a guild.
---@since Patch 10.2.0 (2023-11-07): Removed numOnlineAndMobileMembers return value.
function GetNumGuildMembers()
end

---Returns the number of languages your character can speak.
---@return number numLanguages 
function GetNumLanguages()
end

---Returns the number of items in the loot window.
---@return number numLootItems - The slot number of the last item in the loot window.
function GetNumLootItems()
end

---Returns the number of account and character macros.
---@return number global - Number of macros accessible to all characters.
---@return number perChar - Number of macros accessible to the current character only.
function GetNumMacros()
end

---Returns the number of signatures on the current petition.
---@return number numNames - The number of names that have signed the petition
function GetNumPetitionNames()
end

---Returns the number of available rewards for the current quest.
---@return number numChoices - number of rewards the player can choose between.
function GetNumQuestChoices()
end

---Returns the number of required items to complete the current quest.
---@return number numRequiredItems - The number of required items for the quest
function GetNumQuestItems()
end

---Returns the number of objectives for a quest.
---@param questID number ? - Identifier of the quest. If not provided, default to the currently selected Quest, via SelectQuestLogEntry().
---@return number numObjectives - The number of objectives this quest possesses (Can be 0).
function GetNumQuestLeaderBoards(questID)
end

---Returns the number of options someone has when getting a quest item.
---@param questID number 
---@param includeCurrencies boolean ?
---@return number numQuestChoices - The number of quest item options for this quest
function GetNumQuestLogChoices(questID, includeCurrencies)
end

---Returns the number of unconditional rewards for the current quest in the quest log.
---@param questID number ?
---@return number numQuestRewards - The number of rewards for this quest
function GetNumQuestLogRewards(questID)
end

---Returns the number of unconditional rewards at a quest giver.
---@return number numRewards - number of unconditional item rewards.
function GetNumQuestRewards()
end

---Returns the number of available Raid Finder dungeons.
---@return number numRFDungeons - Number of Raid Finder dungeons
function GetNumRFDungeons()
end

---Returns the number of available LFG random dungeons.
---@return number numRandomDungeons - Number of LFG random dungeons
function GetNumRandomDungeons()
end

---Returns the number of instances for which the character is locked out.
---@return number numInstances - number of instances with available lockouts, 0 if none.
---@since Patch 1.11.0 (2006-06-19): Added.
function GetNumSavedInstances()
end

---Returns the number of world bosses the player currently cannot receive loot from.
---@return number numSavedWorldBosses - number of world bosses the player is saved for.
---@since Patch 5.4.0 (2013-09-10): Added.
function GetNumSavedWorldBosses()
end

---Returns the number of shapeshift buttons (stances for Warriors, auras for Paladins, forms for Druids, etc) the player currently has.
---@return number numForms - Number of abilities to be presented on the stance/shapeshift bar
function GetNumShapeshiftForms()
end

---Returns the number of sockets for an item in the socketing window.
---@return number numSockets - The number of sockets in the item currently in the item socketing window. If the item socketing window is closed, 0.
function GetNumSockets()
end

---Returns the number of specialization group (dual specs) the player has.
---@param b boolean - In theory this returns information for the inspected target instead of the player. In practice, this seems to return 0 if true. Defaults to false.
---@return number numSpecGroups - number of available specialization groups; 1 for characters that have not learned dual-specializations, 2 for those that have.
---@since Patch 5.0.4 (2012-08-28): Replaced GetNumTalentGroups.
function GetNumSpecGroups(b)
end

---Returns the number of available specializations.
---@param isInspect boolean ? - if true, return information for the inspected unit; false by default
---@param isPet boolean ? - if true, return information for the player's pet; false by default
---@return number numSpecializations - number of available specializations.
---@since Patch 5.0.4 (2012-08-28): Replaced GetNumTalentTabs.
function GetNumSpecializations(isInspect, isPet)
end

---Returns the number of other players in the party or raid subgroup.
---@param groupType number ?
If omitted, defaults to INSTANCE if applicable, HOME otherwise.
---@return number numSubgroupMembers - number of players in the player's sub-group, excluding the player.
---@since Patch 5.0.4 (2012-08-28): Replaced GetNumPartyMembers and GetRealNumPartyMembers.
function GetNumSubgroupMembers(groupType)
end

---Returns the number of titles, specifically the highest title ID.
---@return number numTitles - TitleId
---@since Patch 2.0.1 (2006-12-05): Added.
function GetNumTitles()
end

---Returns the number of trainer services.
---@return number numTrainerServices - Total number of trainer services (used like index). Note that if you are working with an invalid target (for example, a merchant) the return value will be the last valid value, rather than 0.
function GetNumTrainerServices()
end

---Returns the number of unspent talents.
---@return number numUnspentTalents - Number of unspent talents -- level-appropriate talent tiers in which the player has not selected a talent.
---@since Patch 5.0.4 (2012-08-28): Replaced GetUnspentTalentPoints.
function GetNumUnspentTalents()
end

---Returns the locale of the Operating System.
---@return string locale - Recognized values are:[1]
function GetOSLocale()
end

---Returns true if the player is automatically passing on all loot.
---@return boolean optedOut - 1 if the player is currently passing on all loot, nil otherwise.
function GetOptOutOfLoot()
end

---
---@return number overrideAP 
function GetOverrideAPBySpellPower()
end

---
---@return number overrideSpellPower 
function GetOverrideSpellPowerByAP()
end

---Returns true if the player has enabled their PvP flag.
---@return boolean desired 
function GetPVPDesired()
end

---
---@return boolean statRules 
function GetPVPGearStatRules()
end

---Returns the character's lifetime PvP statistics.
---@return number lifetimeHonorableKills - The number of honorable kills you have made
---@return Enum.PvPRanks lifetimeMaxPVPRank - The highest rank you have achieved (Use GetPVPRankInfo(highestRank) to get the name of the rank)
---@since Removed dishonorableKills return value in an unknown patch.
function GetPVPLifetimeStats()
end

---Returns which roles the player is willing to perform in PvP battlegrounds.
---@return boolean tank - true if the player is marked as willing to tank, false otherwise.
---@return boolean healer - true if the player is marked as willing to heal, false otherwise.
---@return boolean dps - true if the player is marked as willing to deal damage, false otherwise.
---@since Patch 5.3.0 (2013-05-21): Added.
function GetPVPRoles()
end

---Returns the character's Honor statistics for this session.
---@return number honorableKills - Amount of honorable kills you have today, returns 0 if you havn't killed anybody today.
---@return number dishonorableKills - Note: Not sure if this is dishonorable kills or estimated honor points for today
function GetPVPSessionStats()
end

---Returns the time left in milliseconds until the player is unflagged for PvP.
---@return number timer - Amount of time (in milliseconds) until your PVP flag wears off.
function GetPVPTimer()
end

---Returns the character's Honor statistics for yesterday.
---@return number honorableKills - The number of honorable kills
---@return number dishonorableKills - The number of dishonorable kills
---@since Removed contribution (third return value) in an unknown patch.
function GetPVPYesterdayStats()
end

---Returns the parry chance percentage.
---@return number parryChance - Player's parry chance in percentage.
function GetParryChance()
end

---
---@return number parryChance 
function GetParryChanceFromAttribute()
end

---Returns true if a group member is assigned the main tank/assist role.
---@param assignment string - The role to search, either "MAINTANK" or "MAINASSIST" (not case-sensitive).
---@param raidmember string ? : UnitId
---@param exactMatch boolean ?
---@return boolean isAssigned 
---@since Patch 2.0.1 (2006-12-05): Added.
function GetPartyAssignment(assignment, raidmember, exactMatch)
end

---Returns information about the player's personal PvP rating in a specific bracket.
---@param index number - PvP bracket index ascending from 1 for 2v2, 3v3, 5v5 and 10v10 rated battlegrounds.
---@return number rating - the player's current rating.
---@return number seasonBest - the player's season best rating.
---@return number weeklyBest - the player's weekly best rating.
---@return number seasonPlayed - number of games played in this bracket this season.
---@return number seasonWon - number of games won in this bracket this season.
---@return number weeklyPlayed - number of games played in this bracket this week.
---@return number weeklyWon - number of games won in this bracket this season.
---@return number cap - projected conquest cap in points.
---@since Patch 5.4.0 (2013-09-10): Added.
function GetPersonalRatedInfo(index)
end

---Returns cooldown info for an action on the pet action bar.
---@param index number - The index of the pet action button you want to query for cooldown info.
---@return number startTime - The time when the cooldown started (as returned by GetTime()) or zero if no cooldown
---@return number duration - The number of seconds the cooldown will last, or zero if no cooldown
---@return number enable - 0 if no cooldown, 1 if cooldown is in effect (probably)
function GetPetActionCooldown(index)
end

---Returns info for an action on the pet action bar.
---@param index number - The index of the pet action button you want to query.
---@return string name - The name of the action (or its global ID if isToken is true).
---@return string texture - The name (or its global ID, if isToken is true) of the texture for the action.
---@return boolean isToken - Indicates if the action is a reference to a global action, or not (guess)
---@return boolean isActive - Returns true if the ability is currently active.
---@return boolean autoCastAllowed - Returns true if this ability can use autocast.
---@return boolean autoCastEnabled - Returns true if autocast is currently enabled for this ability.
---@return number spellID - Returns the spell ID associated with this ability.
---@return boolean checksRange - Returns true if this ability has a numeric range requirement.
---@return boolean inRange - Returns true if this ability is currently in range.
function GetPetActionInfo(index)
end

---Indicates if the current player's pet can currently use the specified pet action.
---@param index number - The index of the pet action button you want to query.
---@return boolean isUsable - Returns true if the pet action is currently usable, false otherwise.
function GetPetActionSlotUsable(index)
end

---Returns the pet's current and total XP required for the next level.
---@return number currXP - The current XP total
---@return number nextXP - The XP total required for the next level
function GetPetExperience()
end

---Returns the food types the pet can eat.
---@return string food1, ... - A list of food types.
function GetPetFoodTypes()
end

---
---@return number meleeHaste 
function GetPetMeleeHaste()
end

---
---@return number spellBonus 
function GetPetSpellBonusDamage()
end

---Returns info for the petition being viewed.
---@return string petitionType - The type of petition (ex. "guild" or "arena")
---@return string title - The title of the group being created
---@return string bodyText - The body text of the petition
---@return number maxSigs - The maximum number of signatures allowed on the petition
---@return string originator - The name of the person who started the petition
---@return boolean isOriginator - Whether the player is the originator of the petition
---@return number minSigs - The minimum number of signatures required for the petition
function GetPetitionInfo()
end

---Returns physical screen size of game.
---@return number width - game physical screen width.
---@return number height - game physical screen height.
---@since Patch 7.1.0 (2016-10-25): Added.
function GetPhysicalScreenSize()
end

---#noinstance - This only works outdoors and not in instanced content (dungeons/raids/battlegrounds/arena).
---@return number facing - Direction the player is facing in radians, in the [0, 2π] range, where 0 is North and values increase counterclockwise.
---@since Patch 7.1.0 (2016-10-25): Returns nil while in a restricted area (instance/battleground/arena).
function GetPlayerFacing()
end

---Returns character info for another player from their GUID.
---@param guid string - The GUID of the player you're querying.
---@return string localizedClass - Localized class name.
---@return string englishClass - Localization-independent class name.
---@return string localizedRace - Localized race name.
---@return string englishRace - Localization-independent race name.
---@return number sex - Gender ID of the character. 2 for male, or 3 for female.
---@return string name - The name of the character.
---@return string realmName - Normalized realm name of the character. Returns an empty string if the character is from the same realm as the player.
---@since Patch 3.2.0 (2009-08-04): Added.
function GetPlayerInfoByGUID(guid)
end

---Returns the amount of money the player has in the trade window.
---@return number tradeMoney - Amount in copper.
function GetPlayerTradeMoney()
end

---Returns info for an action on the possession bar.
---@param index number - The slot of the possess bar to check, ascending from 1.
---@return string texture - The icon texture used for this slot, nil if the slot is empty
---@return number spellID - The name of the action in this slot, nil if the slot is empty.
---@return boolean enabled - true if there is an action in this slot, nil otherwise.
---@since Patch 8.0.1 (2018-07-17): The second parameter was changed from spell name to spell ID. [1]
function GetPossessInfo(index)
end

---
---@return number basePowerRegen 
---@return number castingPowerRegen 
function GetPowerRegen()
end

---
---@param powerType number 
---@return number basePowerRegen 
---@return number castingPowerRegen 
function GetPowerRegenForPowerType(powerType)
end

---Returns the previous achievement in a chain.
---@param achievementID number - The ID of the Achievement
---@return number previousAchievementID or nil - The ID of the previous Achievement in chain.
---@since Patch 3.0.2 (2008-10-14): Added.
function GetPreviousAchievement(achievementID)
end

---Gets details on a profession from its index including name, icon, and skill level.
---@param index number - The spell tab index from GetProfessions
---@return string name - The localized skill name
---@return string icon - the location of the icon image
---@return number skillLevel - the current skill level
---@return number maxSkillLevel - the current skill cap (75 for apprentice, 150 for journeyman etc.)
---@return number numAbilities - The number of abilities/icons listed. These are the icons you put on your action bars.
---@return number spelloffset - The offset id of the first Spell of this profession. (you can CastSpell(spelloffset + 1, "Spell") to use the first spell of this profession)
---@return number skillLine - Reference to the profession.
---@return number skillModifier - Additional modifiers to your profession levels. IE: Lures for Fishing.
---@return number specializationIndex - A value indicating which specialization is known (ie. Transmute specialist for Alchemist)
---@return number specializationOffset - Haven't figured this one out yet
---@since Patch 4.0.1 (2010-10-12): Added.
function GetProfessionInfo(index)
end

---Returns the spell tab indices of the character's current professions.
---@return number prof1 - spell tab index for the first primary profession, or nil if not learned.
---@return number prof2 - spell tab index for the second primary profession, or nil if not learned.
---@return number archaeology - spell tab index for Archaeology, or nil if not learned.
---@return number fishing - spell tab index for Fishing, or nil if not learned.
---@return number cooking - spell tab index for Cooking, or nil if not learned.
---@since Patch 8.0.1 (2018-07-17): Removed firstAid return.
function GetProfessions()
end

---Returns quest progress text at a quest giver.
---@return string progress - The progress text
function GetProgressText()
end

---Returns the effect of PvP Power on damage dealt to players.
---@return number powerDamage : Percentage increase in damage dealt to players in their pets due to PvP Power, e.g. 4.2 for 4.2%.
---@since Patch 5.1.0 (2012-11-27): Added.
function GetPvpPowerDamage()
end

---Returns the effect of PvP power on Healing Power.
---@return number powerHealing - Percentage increase in Healing Power (in outdoor and PvP zones) due to PvP Power, e.g. 4.2 for 4.2%.
---@since Patch 5.1.0 (2012-11-27): Added
function GetPvpPowerHealing()
end

---Returns information about a PvP (honor) talent.
---@param talentID number - Talent ID.
---@param specGroupIndex number ? - Index of active specialization group (GetActiveSpecGroup); if nil, the selected/available return values will always be false.
---@param isInspect boolean ? - If non-nil, returns information based on inspectedUnit.
---@param inspectedUnit string ? - Inspected unitId.
---@return number 1. talentID - Talent ID.
---@return string 2. name - Talent name.
---@return number 3. icon - FileID
---@return boolean 4. selected - true if the talent is chosen, false otherwise.
---@return boolean 5. available - true if the talent tier is chosen, or if it is level-appropriate for the player and the player has no talents selected in that tier, false otherwise.
---@return number 6. spellID - Spell ID that is added to the spellbook.
---@return boolean 7. unlocked - Whether the talent is unlocked.
---@return number 8. row - The row the talent is from.
---@return number 9. column - The column the talent is from.
---@return boolean 10. known - true if the talent is known, false otherwise.
---@return boolean 11. grantedByAura - true if the talent is granted by an aura (i.e., an effect on an item), false otherwise. The  [Conflict and Strife] Azerite Essence uses this instead of selected.
---@since Patch 8.0.1 (2018-07-17): PvP talents are no longer organized into a row/column table.
function GetPvpTalentInfoByID(talentID, specGroupIndex, isInspect, inspectedUnit)
end

---Returns the background texture for the displayed quest.
---@return string material ? - The material string for this quest, or nil if the default, "Parchment", is to be used.
function GetQuestBackgroundMaterial()
end

---
---@param questID number - Unique QuestID.
---@return number factionGroup 
---@since Patch 6.0.2 (2014-10-14): Added.[1]
function GetQuestFactionGroup(questID)
end

---Returns the ID of the displayed quest at a quest giver.
---@return number questID - quest ID of the offered/discussed quest.
function GetQuestID()
end

---Returns info for a required/reward/choice quest item.
---@param type string - type of the item to query. One of the following values:
"required": Items the quest requires the player to gather.
"reward": Unconditional quest rewards.
"choice": One of the possible quest rewards.
---@return string name - The item's name.
---@return number texture : FileID - The item's icon texture.
---@return number count - Amount of the item required or awarded by the quest.
---@return Enum.ItemQuality quality 🔗
---@return boolean isUsable - True if the quest item is usable by the current player.
---@return number itemID - The item's ID.
---@since Patch 9.0.2 (2020-11-17): Added itemID return.[1]
function GetQuestItemInfo(type)
end

---Returns the item link for a required/reward/choice quest item.
---@param type string - "required", "reward" or "choice"
---@param index number - Quest reward item index.
---@return string itemLink - The ItemLink to the quest item specified.
function GetQuestItemLink(type, index)
end

---Returns a link for a quest.
---@param questID number - Unique identifier for a quest.
---@return string questLink - The link to the quest specified. Returns nil if the QuestID is invalid or if the specified QuestID is not currently in the player's quest log.
---@since At an unknown point between patches 6.2 and 7.3.2, this function's argument was changed to take a QuestID instead of a quest log index.
function GetQuestLink(questID)
end

---Returns a bunch of data about a quest reward choice from the quest log.
---@param index number - Index of a quest reward choice (between 1 and GetNumQuestLogChoices)
---@param questID number ?
---@return string itemName - The name of the quest item
---@return number itemTexture : fileID - The texture of the quest item
---@return number quantity - How many of the quest item
---@return Enum.ItemQuality quality 🔗 - Quality of the quest item
---@return boolean isUsable - If the quest item is usable by the current player
---@return number itemID 
function GetQuestLogChoiceInfo(index, questID)
end

---Returns item link for selected quest reward/choice/required item from quest log.
---@param type string - "required", "reward" or "choice"
---@param index table - Integer - Quest reward item index (starts with 1).
---@return string itemLink - The link to the quest item specified
function GetQuestLogItemLink(type, index)
end

---Returns info for a quest objective in the quest log.
---@param objIndex number - Index of the quest objective to query, ascending from 1 to GetNumQuestLeaderBoards(questIndex).
---@param questIndex number ? - Index of the quest log entry to query, ascending from 1 to GetNumQuestLogEntries. If not provided or invalid, defaults to the currently selected quest (via SelectQuestLogEntry)
---@return string description - Text description of the objective, e.g. "0/3 Monsters slain"
---@return string objectiveType - A token describing objective type, one of "item", "object", "monster", "reputation", "log", "event", "player", or "progressbar".
---@return boolean isCompleted - true if sub-objective is completed, false otherwise
function GetQuestLogLeaderBoard(objIndex, questIndex)
end

---Returns the description and objective text in the quest log.
---@param questLogIndex number ?
---@return string questDescription - The quest description
---@return string questObjectives - The quest objective
function GetQuestLogQuestText(questLogIndex)
end

---Returns info for an unconditional quest reward item in the quest log.
---@param itemIndex number - Index of the item reward to query, up to GetNumQuestLogRewards
---@param questID number ? - Unique identifier for a quest.
---@return string itemName - The name of the quest item
---@return string itemTexture - The texture of the quest item
---@return number numItems - How many of the quest item
---@return number quality - Quality of the quest item
---@return boolean isUsable - If the quest item is usable by the current player
---@return number itemID - Unique identifier for the item
---@return number itemLevel - Scaled item level of the reward, based on the character's item level
function GetQuestLogRewardInfo(itemIndex, questID)
end

---Returns the amount of money rewarded for a quest.
---@param questID number ? - Unique identifier for a quest.
---@return number money - The amount of copper this quest gives as a reward
function GetQuestLogRewardMoney(questID)
end

---Returns cooldown information about a special quest item based on a given index
---@param questLogIndex number - The index of the quest to query. The number of quests can be retrieved with GetNumQuestLogEntries()
---@return number start - The value of GetTime() when the quest items's cooldown began (or 0 if the item is off cooldown).
---@return number duration - The duration of the items's cooldown (is 0 if the item is ready).
---@return number enable - 1 if the item is enabled, otherwise 0 (needs verification)
function GetQuestLogSpecialItemCooldown(questLogIndex)
end

---Returns information about a special quest item based on a given index
---@param questLogIndex number - The index of the quest to query. The number of quests can be retrieved with GetNumQuestLogEntries()
---@return string link ? : ItemLink
---@return number item - The icon ID
---@return number charges - The number of charges, or 0 if unlimited. If the item is consumed on use this seems to be -1 (e.g., Mana Remnants)
---@return boolean showItemWhenComplete - Whether the item remains visible when complete
function GetQuestLogSpecialItemInfo(questLogIndex)
end

---Returns the time left in seconds for the current quest.
---@return number timeLeft - The seconds remaining to finish the timed quest.
function GetQuestLogTimeLeft()
end

---Returns information about a quest objective.
---@param questID number - QuestID
---@param objectiveIndex number - Index of the quest objective to query, ascending from 1 to GetNumQuestLeaderBoards(questIndex) or to numObjectives from GetTaskInfo(questID).
---@param displayComplete boolean - Pass 'true' to return as if the objective were complete. You want false generally
---@return string text - Text description of the objective, e.g. "0/3 Monsters slain"
---@return string objectiveType - A token describing objective type, one of "item", "object", "monster", "reputation", "log", "event", "player" or "progressbar".
---@return boolean finished - true if sub-objective is completed, false if incomplete.
---@return number fulfilled - quantity of the objectives completed
---@return number required - quantity of objectives needed to finish the quest.
---@since Patch 6.0.2 (2014-10-14): Added.
function GetQuestObjectiveInfo(questID, objectiveIndex, displayComplete)
end

---Returns a quest's objective completion percentage.
---@param questID number - QuestID
---@return number percent - Percentage of quest progress towards completion, from 0 to 100.
function GetQuestProgressBarPercent(questID)
end

---Returns the number of seconds until daily quests reset.
---@return number nextReset - Number of seconds until the next daily quest reset.
function GetQuestResetTime()
end

---Completes the quest and chooses a quest reward, if applicable.
---@param itemChoice number - The quest reward chosen
function GetQuestReward(itemChoice)
end

---Returns the index of the collapsible category the queried quest belongs to
---@param questLogIndex number - The index of the quest to query. The number of quests can be retrieved with GetNumQuestLogEntries()
---@return number sortIndex - The index of the category starting from 1
function GetQuestSortIndex(questLogIndex)
end

---Returns info about a Raid Finder dungeon by index. Limited by player level and other factors, so only Raid Finder dungeons listed in the LFG tool can be looked up.
---@param index number - index of a Raid Finder dungeon, from 1 to GetNumRFDungeons()
---@return number 1. id - Dungeon ID
---@return string 2. name - The name of the dungeon/event
---@return number 3. typeID - 1=TYPEID_DUNGEON or LFR, 2=raid instance, 4=outdoor area, 6=TYPEID_RANDOM_DUNGEON
---@return number 4. subtypeID - 0=Unknown, 1=LFG_SUBTYPEID_DUNGEON, 2=LFG_SUBTYPEID_HEROIC, 3=LFG_SUBTYPEID_RAID, 4=LFG_SUBTYPEID_SCENARIO, 5=LFG_SUBTYPEID_FLEXRAID
---@return number 5. minLevel - Earliest level you can enter this dungeon (using the portal, not LFD)
---@return number 6. maxLevel - Highest level you can enter this dungeon (using the portal, not LFD)
---@return number 7. recLevel - Recommended level to queue up for this dungeon
---@return number 8. minRecLevel - Earliest level you can queue up for the dungeon
---@return number 9. maxRecLevel - Highest level you can queue up for the dungeon
---@return number 10. expansionLevel - Referring to GetAccountExpansionLevel() values
---@return number 11. groupID - Unknown
---@return string 12. textureFilename - For example "Interface\LFDFRAME\LFGIcon-%s.blp" where %s is the textureFilename value
---@return number 13. difficulty - 0 for Normal and 1 for Heroic
---@return number 14. maxPlayers - Maximum players allowed
---@return string 15. description - Usually empty for most dungeons but events contain descriptions of the event, like Love is in the Air daily or Brewfest, e.g. (string)
---@return boolean 16. isHoliday - If true then this is a holiday event
---@return number 17. bonusRepAmount - Unknown
---@return number 18. minPlayers - Minimum number of players (before the group disbands?); usually nil
---@return boolean 19. isTimeWalking - If true then it's Timewalking Dungeon
---@return string 20. name2 - Returns the name of the raid
---@return number 21. minGearLevel - The minimum average item level to queue for this dungeon; may be 0 if item level is ignored.
---@return boolean 22. isScaling 
---@return number 23. lfgMapID : InstanceID
---@since Patch 5.4.0 (2013-09-10): Now returns subtypeID, bonusRepAmount and minPlayers.
function GetRFDungeonInfo(index)
end

---Returns the player's currently selected raid difficulty.
---@return number difficultyID : The player's (or group leader's) current raid difficulty ID preference. See GetDifficultyInfo for a list of possible difficultyIDs.
---@since Patch 5.2.0 (2013-03-05): Renamed from GetRaidDifficulty, return values changed.
function GetRaidDifficultyID()
end

---Returns info for a member of your raid.
---@param raidIndex number - The index of a raid member between 1 and MAX_RAID_MEMBERS (40). It's discouraged to use GetNumGroupMembers() since there can be "holes" between raid1 to raid40.
---@return string name - raid member's name. Returns "Name-Server" for cross-realm players.
---@return number rank - Returns 2 if the raid member is the leader of the raid, 1 if the raid member is promoted to assistant, and 0 otherwise.
---@return number subgroup - The raid party this character is currently a member of.  Raid subgroups are numbered as on the standard raid window.
---@return number level - The level of the character.  If this character is offline, the level will show as 0 (not nil).
---@return string class - The character's class (localized), with the first letter capitalized (e.g. "Priest"). This function works as normal for offline characters.
---@return string fileName - The system representation of the character's class; always in english, always fully capitalized.
---@return string zone ? - The name of the zone this character is currently in.  This is the value returned by GetRealZoneText.  It is the same value you see if you mouseover their portrait (if in group).  If the character is offline, this value will be the string "Offline".
---@return boolean online - Returns 1 if raid member is online, nil otherwise.
---@return boolean isDead - Returns 1 if raid member is dead (hunters Feigning Death are considered alive), nil otherwise.
---@return string role - The player's role within the raid ("maintank" or "mainassist").
---@return boolean isML - Returns 1 if the raid member is master looter, nil otherwise
---@return string combatRole - Returns the combat role of the player if one is selected, i.e. "DAMAGER", "TANK" or "HEALER". Returns "NONE" otherwise.
function GetRaidRosterInfo(raidIndex)
end

---Returns the raid target of a unit.
---@param unit string UnitId
---@return number index ?
---@since Patch 9.2.0 (2022-02-22): Removed invisible IDs 9 to 18.
function GetRaidTargetIndex(unit)
end

---Returns the ranged critical hit chance.
---@return number rangedCrit - The player's ranged critical hit chance, as a percentage; e.g. 5.3783211 corresponding to a ~5.38% crit chance.
function GetRangedCritChance()
end

---Returns the player's ranged haste amount granted through buffs.
---@return number rangedHaste - The player's ranged haste amount granted through buffs, as a percentage; e.g. 36.36363 corresponding to a ~36.36% increased attack speed.
function GetRangedHaste()
end

---Returns the map instance name.
---@param instanceID number ?  : InstanceID - When omitted, returns current instanceID name.
---@return string zone - The name of the map instance.
function GetRealZoneText(instanceID)
end

---
---@return number realmID 
---@since Patch 8.2.5 (2019-09-24): Added.
function GetRealmID()
end

---Returns the realm name.
---@return string realm - The name of the realm.
---@return string normalizedRealm ? - The name of the realm without spaces, - hyphens, or . periods.
---@since Patch 5.4.1 (2013-10-29): CVar realmName was removed[2].
function GetRealmName()
end

---
---@return number result 
function GetReleaseTimeRemaining()
end

---
---@return number repairAllCost - repair cost in copper
---@return boolean canRepair ? - true if repairs are currently available, otherwise nil
function GetRepairAllCost()
end

---
---@return string duration ?
function GetResSicknessDuration()
end

---Returns if the character is in a rested or normal state.
---@return number exhaustionID - Rest state index; observed values are 1 if the player is "Rested", 2 if the player is in a normal state.
---@return string name - Name of the current rest state; observed: "Rested" or "Normal".
---@return number factor - XP multiplier applied to experience gain from killing monsters in the current rest state.
function GetRestState()
end

---Returns the cap on trial character level, money and profession skill.
---@return number rLevel - character level cap, currently 20
---@return number rMoney - max amount of money in copper, currently 10000000
---@return number profCap - profession level cap, currently 0
---@since Patch 9.0.1 (2020-10-13): Changed the gold cap to 1000 gold, up from 10.
function GetRestrictedAccountData()
end

---Returns quest reward text, displayed by the NPC before the player hits "Complete Quest".
---@return string reward - The progress text
function GetRewardText()
end

---Returns the experience reward for the quest in the gossip window.
---@param xp number - Amount of experience points to be received upon completing the quest, including any bonuses to experience gain such as Rest and  [Enlightenment].
---@return  xp - Amount of experience points to be received upon completing the quest, including any bonuses to experience gain such as Rest and  [Enlightenment].
function GetRewardXP(xp)
end

---Returns the Death Knight's cooldown info for the specified rune.
---@param runeIndex number - The rune index, ranging between 1 and 6.
---@return number startTime - The value of GetTime() when the rune's cooldown began (or 0 if the rune is off cooldown).
---@return number duration - The duration of the rune's cooldown (regardless of whether or not it's on cooldown).
---@return boolean isRuneReady - Whether or not the rune is off cooldown. True if ready, false if not.
function GetRuneCooldown(runeIndex)
end

---Returns the Death Knight's number of runes for a slot.
---@param runeIndex number - Ranging from 1 to 6 which correspond to the available rune slots from left to right.
---@return number count - 1 if the rune is available and not on cooldown or 0 if the rune is on cooldown.
---@since Patch 3.0.2 (2008-10-14): Added.
function GetRuneCount(runeIndex)
end

---Returns a hyperlink for a player's raid save.
---@param index number - The index of the instance you want to query.
---@return string instanceChatLink : SavedInstanceChatLink - Returns nil if instance there is nothing to link at the index.
function GetSavedInstanceChatLink(index)
end

---Returns info about a specific encounter from a saved instance lockout.
---@param instanceIndex number - Index from 1 to GetNumSavedInstances()
---@param encounterIndex number - Index from 1 to the number of encounters in the instance. For multi-part raids, this includes bosses that are not in that raid section, so the first boss in the second wing of a Raid Finder raid could actually have an encounterIndex of '4'.
---@return string bossName - The localized name of the encounter in question
---@return number fileDataID - The ID number for a texture associated with the encounter, usually an achievement icon. If Blizzard hasn't designated one for the encounter, expect this return to be nil.
---@return boolean isKilled - True if you have killed/looted the boss since the last reset period
---@return boolean unknown4 - Unused by Blizzard, has an unknown purpose, and seems to always be false
---@since Patch 4.0.1 (2010-10-12): Added.
function GetSavedInstanceEncounterInfo(instanceIndex, encounterIndex)
end

---Returns instance lock info.
---@param index number - index of the saved instance, from 1 to GetNumSavedInstances()
---@return string 1. name - the name of the instance
---@return number 2. lockoutId - the ID of the instance lockout
---@return number 3. reset - the number of seconds remaining until the instance resets
---@return number 4. difficultyId : DifficultyID
---@return boolean 5. locked - true if the instance is currently locked, false for a historic entry
---@return boolean 6. extended - shows true if the ID has been extended
---@return number 7. instanceIDMostSig - unknown
---@return boolean 8. isRaid - shows true if it is a raid
---@return number 9. maxPlayers - shows the max players
---@return string 10. difficultyName - shows a localized string i.e. 10 Player (Heroic)
---@return number 11. numEncounters - number of boss encounters in this instance
---@return number 12. encounterProgress - farthest boss encounter in this instance for player
---@return boolean 13. extendDisabled - returns whether this instance cannot be disabled
---@return number 14. instanceId : InstanceID
---@since Patch 10.0.5 (2023-01-24): Added instanceId return value.
function GetSavedInstanceInfo(index)
end

---Returns information about the player's world boss loot lockout.
---@param index number - Index of the world boss lockout to query, ascending from 1 to GetNumSavedWorldBosses().
---@return string name - world boss lockout name, e.g. "The Four Celestials"
---@return number worldBossID - unique world boss ID, e.g. 5 for The Four Celestials.
---@return number reset - time in seconds until the loot lockout expires.
---@since Patch 5.4.0 (2013-09-10): Added.
function GetSavedWorldBossInfo(index)
end

---Returns an ordered list of all available scenario IDs.
---@param allScenarios table ? - If provided, this table will be wiped and populated with return values; otherwise, a new table will be created for the return value.
---@return table allScenarios - An array containing LFG dungeon IDs of specific scenarios. Not all of these may be level-appropriate.
---@since Patch 5.0.4 (2012-08-28): Added.
function GetScenariosChoiceOrder(allScenarios)
end

---
---@return number scale 
function GetScreenDPIScale()
end

---Returns the height of the window measured at UIParent scale (effectively the same as UIParent:GetHeight().
---@return number screenHeight - Height of window at UIParent scale
function GetScreenHeight()
end

---Returns the width of the window measured at UIParent scale (effectively the same as UIParent:GetWidth().
---@return number screenWidth - Width of window at UIParent scale
function GetScreenWidth()
end

---
---@return number remaining ?
function GetSecondsUntilParentalControlsKick()
end

---Returns info for the selected race's Archaeology artifact.
---@return string 1. artifactName - The name of the archaeology artifact being reconstructed.
---@return string 2. artifactDescription - The description displayed on the artifact detail page. Only visible after completion for rare artifacts.
---@return number 3. artifactRarity - The rarity of the artifact, 0 for Common and 1 for Rare.
---@return number 4. artifactIcon (fileID) - The artifact's icon texture.
---@return string 5. hoverDescription - The description shown in the tooltip when hovering over the completed artifact. Not visible before the artifact is completed. Not readily available on function call, see SpellMixin:ContinueOnSpellLoad.
---@return number 6. keystoneCount - The number of Keystone slots this artifact has.
---@return number 7. bgTexture (fileID) - The artifact's background texture.
---@return number 8. spellID - The ID of the spell cast when solving the artifact.
---@since Patch 8.0.1 (2018-07-17): Removed firstCompletionTime, completionCount return values (still available through GetArtifactInfoByRace).
function GetSelectedArtifactInfo()
end

---Returns the Cash-On-Delivery cost of the outgoing message.
---@return number amount - COD cost in copper.
function GetSendMailCOD()
end

---Returns info for an item attached in the outgoing message.
---@param index number - The index of the attachment to query, in the range of [1,ATTACHMENTS_MAX_SEND]
---@return string name - The localized name of the item
---@return number itemID - Numeric ID of the item
---@return number texture : fileID - The icon texture for the item
---@return number count - The number of items in the stack
---@return Enum.ItemQuality quality 🔗 - The quality index of the item
---@since Patch 7.0.3 (2016-07-19): itemID return added between name and texture.
function GetSendMailItem(index)
end

---Returns the item link of an item attached in the outgoing message.
---@param attachment number - The index of the attachment to query, in the range of [1,ATTACHMENTS_MAX_SEND]
---@return string itemLink : ItemLink - The item link for the specified item
function GetSendMailItemLink(attachment)
end

---Gets the cost for sending mail.
---@return number sendPrice - The price in copper.
function GetSendMailPrice()
end

---Returns the expansion level currently active on the server.
---@return number serverExpansionLevel 
---@since Patch 9.0.1 (2020-10-13): Added.
function GetServerExpansionLevel()
end

---Returns the server's Unix time.
---@return number timestamp - Time in seconds since the epoch.
---@since Patch 6.2.0 (2015-06-23): Added.
function GetServerTime()
end

---Returns the time since you opened the game client.
---@return number sessionTime - Time in seconds since you started the game client.
---@since Patch 4.3.2 (2012-01-31): Added.[1]
function GetSessionTime()
end

---Returns the zero-based index of current form/stance.
---@param flag boolean ? - True if return value is to be compared to a macro's conditional statement. This makes it always return zero for Presences and Auras. False or nil returns an index based on which button to highlight on the shapeshift/stance bar left to right starting at 1.
---@return number index - one of the following:
function GetShapeshiftForm(flag)
end

---Returns cooldown information for a specified form.
---@param index number - Index of the desired form
---@return number startTime - Cooldown start time (per GetTime) in seconds.
---@return number duration - Cooldown duration in seconds.
---@return number isActive - Returns 1 if the cooldown is running, nil if it isn't
function GetShapeshiftFormCooldown(index)
end

---Returns the ID of the form or stance the player is currently in.
---@return number index - one of following:
All

nil = humanoid form
function GetShapeshiftFormID()
end

---Returns info for an available form or stance.
---@param index number - index, ascending from 1 to GetNumShapeshiftForms()
---@return string icon - Path to icon texture
---@return boolean active - 1 if this shapeshift is currently active, nil otherwise
---@return boolean castable - 1 if this shapeshift form may be entered, nil otherwise
---@return number spellID - ID of the spell that activates this ability
function GetShapeshiftFormInfo(index)
end

---Returns which type of weapon the player currently has unsheathed.
---@return number sheathState - Currently unsheathed weapon type:
---@since Patch 4.3.0 (2011-11-29): Added.
function GetSheathState()
end

---Returns the block value rating.
---@return number shieldBlock - the playerr's block value.
function GetShieldBlock()
end

---Returns true if the item currently being socketed can be traded to other eligible players (BoP boss loot).
---@return boolean isBoundTradeable - 1 if the item selected for socketing is BoP but can currently be traded to other eligible players, nil otherwise.
function GetSocketItemBoundTradeable()
end

---Returns info for the item currently being socketed.
---@return string name - Localized name of the item currently being socketed, or nil if the socketing UI is not open.
---@return number icon : fileID
---@return Enum.ItemQuality quality 🔗
function GetSocketItemInfo()
end

---Returns whether the item currently being socketed is refundable.
---@return boolean isRefundable - 1 if the item selected for socketing can be returned to a merchant for a refund.
function GetSocketItemRefundable()
end

---Returns the type (color) of a socket in the item.
---@param index number - Index between 1 and GetNumSockets
---@return string gemColor - The type of the socket at position Index.  The value could be any of these (apparently unlocalized) strings:
"Red" - Red socket
"Yellow" - Yellow socket
"Blue" - Blue socket
"Meta" - Meta socket
"Socket" - Prismatic socket
function GetSocketTypes(index)
end

---Returns the number of sound entries a sound kit contains.
---@param soundKit number - A sound kit ID.
---@return number entryCount ? - The number of sound entries this sound kit contains.
---@since Patch 10.1.0 (2023-05-02): Added.
function GetSoundEntryCount(soundKit)
end

---
---@return string location 
function GetSourceLocation()
end

---Returns info for a specialization.
---@param specID number SpecializationID
---@return number id : SpecializationID
---@return string name - Specialization name, e.g. "Balance".
---@return string description - Description of the specialization, e.g. "Can take on the form of a powerful Moonkin, balancing the power of Arcane and Nature magic to destroy enemies at a distance."
---@return number icon : FileID
---@return string role - The intended role in a party: "DAMAGER", "TANK", "HEALER"
---@return string classFile - Locale-independent class name, e.g. "PRIEST"
---@return string className - Localized class name, e.g. "Priest"
function GetSpecializationInfoByID(specID)
end

---Returns info for a specialization.
---@param classID number ClassId
---@param index number luaIndex
---@param gender Enum.UnitSex ?
---@return number id : SpecializationID
---@return string name - Specialization name, e.g. "Balance".
---@return string description - Description of the specialization, e.g. "Can take on the form of a powerful Moonkin, balancing the power of Arcane and Nature magic to destroy enemies at a distance."
---@return number icon : fileID
---@return string role - The intended role in a party: "DAMAGER", "TANK", "HEALER"
---@return boolean recommended - If this specialization is recommended for beginners to the class.
---@return boolean allowedForBoost - If the player is allowed to use this specialization.
---@return number masterySpell1 ?
---@return number masterySpell2 ?
function GetSpecializationInfoForClassID(classID, index, gender)
end

---Returns info for a specialization.
---@param classID number ClassId
---@param index number luaIndex
---@param gender Enum.UnitSex ?
---@return number id : SpecializationID
---@return string name - Specialization name, e.g. "Balance".
---@return string description - Description of the specialization, e.g. "Can take on the form of a powerful Moonkin, balancing the power of Arcane and Nature magic to destroy enemies at a distance."
---@return number icon : fileID
---@return string role - The intended role in a party: "DAMAGER", "TANK", "HEALER"
---@return boolean recommended - If this specialization is recommended for beginners to the class.
---@return boolean allowedForBoost - If the player is allowed to use this specialization.
---@return number masterySpell1 ?
---@return number masterySpell2 ?
function GetSpecializationInfoForSpecID(classID, index, gender)
end

---
---@param specID number 
---@param gender Enum.UnitSex ?
---@return string name ?
function GetSpecializationNameForSpecID(specID, gender)
end

---Returns the role a specialization is intended to perform.
---@param specIndex number - Specialization index, ascending from 1.
---@param isInspect boolean ?
---@param isPet boolean ?
---@return string roleToken - One of "DAMAGER", "TANK", "HEALER"; 0 if the query is invalid.
---@since Patch 5.0.4 (2012-08-28): Added.
function GetSpecializationRole(specIndex, isInspect, isPet)
end

---Returns the role a specialization is intended to perform.
---@param specID number - Specialization ID, as returned by GetSpecializationInfo or GetInspectSpecialization.
---@return string roleToken - One of "DAMAGER", "TANK", "HEALER"; nil if specID is invalid.
---@since Patch 5.0.4 (2012-08-28): Added.
function GetSpecializationRoleByID(specID)
end

---Returns the spells learned as part of the specified specialization.
---@param specIndex number - index of the specialization to query, integer ascending from 1.
---@param isInspect boolean ? - a truthy value to query information about the inspected unit; player information is returned otherwise.
---@param isPet boolean ? - a truthy value to query information about a pet specialization; player information is returned otherwise.
---@return number spellID - spell learned as part of the specialization.
---@return number level - level at which the spell is learned by the specialization.
---@since Patch 5.0.4 (2012-08-28): Added.
function GetSpecializationSpells(specIndex, isInspect, isPet)
end

---Returns the player's bonus speed percentage.
---@return number speed - the actual speed bonus in percent; e.g. 5.13452
function GetSpeed()
end

---Gives the (unmodified) cooldown and global cooldown of an ability in milliseconds.
---@param spellid number - The spellid of your ability.
---@return number cooldownMS - Millisecond duration of the spell's cooldown (if any other than the global cooldown)
---@return number gcdMS - Millisecond duration of the spell's global cooldown (if any)
---@since Patch 4.3.0 (2011-11-29): Added.
function GetSpellBaseCooldown(spellid)
end

---Returns the raw spell damage bonus for the specified spell tree.
---@param school number - the spell tree:
1: Physical
2: Holy
3: Fire
4: Nature
5: Frost
6: Shadow
7: Arcane
---@return number bonusDamage - The raw spell damage bonus of the player for that spell tree
function GetSpellBonusDamage(school)
end

---Returns the raw spell healing bonus.
---@return number bonusHealing - The healing spell power of the player
function GetSpellBonusHealing()
end

---Returns the critical hit chance for the specified spell school.
---@param school number - the spell school to retrieve the crit chance for. Note: does not seem to be in Blizzard API Documentation.
1 for Physical
2 for Holy
3 for Fire
4 for Nature
5 for Frost
6 for Shadow
7 for Arcane
---@return number critChance - An unformatted floating point figure representing the critical hit chance for the specified school.
function GetSpellCritChance(school)
end

---Returns the amount of Spell Hit %, not from Spell Hit Rating, that your character has.
---@return number hitMod - hit modifier (e.g. 16 for 16%)
function GetSpellHitModifier()
end

---Returns your spell penetration rating.
---@return number spellPen - Your spell penetration rating.
function GetSpellPenetration()
end

---Returns a character statistic.
---@param category number - AchievementID of a statistic or statistic category.
---@param index number ? - Entry within a statistic category, if applicable.
---@return string value - Value of the statistic as displayed in-game.
---@return boolean skip - Prevents a statistic from being shown in the default UI.
---@return string id - Unknown.
---@since Patch 5.4.0 (2013-09-10): Added multiple return values and optional argument.[1]
function GetStatistic(category, index)
end

---Returns the list of statistic categories.
---@return table categories - list of all the categories
---@since Patch 3.0.2 (2008-10-14): Added.
function GetStatisticsCategoryList()
end

---
---@return number sturdiness 
function GetSturdiness()
end

---Returns the subzone name.
---@return string subzone - Subzone name or an empty string (if not in a subzone).
function GetSubZoneText()
end

---Returns info for the specified talent.
---@param tier number - Talent tier from 1 to MAX_TALENT_TIERS
---@param column number - Talent column from 1 to NUM_TALENT_COLUMNS
---@param specGroupIndex number - Index of active specialization group (GetActiveSpecGroup)
---@param isInspect boolean ? - If non-nil, returns information based on inspectedUnit/classId.
---@param inspectUnit string ? : UnitId - Inspected unit; if nil, the selected/available return values will always be false.
---@return number 1. talentID - Talent ID.
---@return string 2. name - Talent name.
---@return number 3. texture : FileID
---@return boolean 4. selected - true if the talent is chosen, false otherwise.
---@return boolean 5. available - true if the talent tier is chosen, or if it is level-appropriate for the player and the player has no talents selected in that tier, false otherwise.
---@return number 6. spellID - Spell ID that is added to the spellbook.
---@return any 7. unknown 
---@return number 8. row - The row the talent is from.  This will be the same as the tier argument given.
---@return number 9. column - The column the talent is from.  This will be the same as the column argument given.
---@return boolean 10. known - true if the talent is active, false otherwise.
---@return boolean 11. grantedByAura - true if the talent is granted by an aura (i.e., an effect on an item), false otherwise. Legion's Class Soul rings used this rather than selected.
---@since Patch 6.0.2 (2014-10-14): Changed params.
function GetTalentInfoByID(tier, column, specGroupIndex, isInspect, inspectUnit)
end

---Returns info for the specified talent.
---@param tier number - Talent tier from 1 to MAX_TALENT_TIERS
---@param column number - Talent column from 1 to NUM_TALENT_COLUMNS
---@param specGroupIndex number - Index of active specialization group (GetActiveSpecGroup)
---@param isInspect boolean ? - If non-nil, returns information based on inspectedUnit/classId.
---@param inspectUnit string ? : UnitId - Inspected unit; if nil, the selected/available return values will always be false.
---@return number 1. talentID - Talent ID.
---@return string 2. name - Talent name.
---@return number 3. texture : FileID
---@return boolean 4. selected - true if the talent is chosen, false otherwise.
---@return boolean 5. available - true if the talent tier is chosen, or if it is level-appropriate for the player and the player has no talents selected in that tier, false otherwise.
---@return number 6. spellID - Spell ID that is added to the spellbook.
---@return any 7. unknown 
---@return number 8. row - The row the talent is from.  This will be the same as the tier argument given.
---@return number 9. column - The column the talent is from.  This will be the same as the column argument given.
---@return boolean 10. known - true if the talent is active, false otherwise.
---@return boolean 11. grantedByAura - true if the talent is granted by an aura (i.e., an effect on an item), false otherwise. Legion's Class Soul rings used this rather than selected.
---@since Patch 6.0.2 (2014-10-14): Changed params.
function GetTalentInfoBySpecialization(tier, column, specGroupIndex, isInspect, inspectUnit)
end

---Returns the column of the selected talent for a given tier.
---@param tier number - Talent tier from 1 to MAX_TALENT_TIERS
---@param specGroupIndex number - Index of active specialization group (GetActiveSpecGroup)
---@param isInspect boolean ? - If non-nil, returns information based on inspectedUnit.
---@param inspectUnit string ? - Inspected unitId.
---@return boolean tierAvailable - true if the player can select a talent for the tier.
---@return number selectedTalent - The column number of the selected talent. This is always 0 for inspected units.
---@return number tierUnlockLevel - The level the tier becomes available to the player.
---@since Patch 9.0.1 (2020-10-13): Added tierUnlockLevel return, which replaced CLASS_TALENT_LEVELS usage.
function GetTalentTierInfo(tier, specGroupIndex, isInspect, inspectUnit)
end

---Returns the amount of money in the trade window for the other player.
---@return number amount - Amount of money offered for trade by the target (in copper)
function GetTargetTradeMoney()
end

---Returns information about a bonus objective.
---@param questID number - Unique identifier for the quest.
---@return boolean isInArea - True if player is in the location where the task activates.
---@return boolean isOnMap - True if task is active and visible on the player's map.
---@return number numObjectives - Number of objectives for the task.
---@since Patch 6.0.2 (2014-10-14): Added.
function GetTaskInfo(questID)
end

---
---@return boolean benchMode 
function GetTaxiBenchmarkMode()
end

---Returns the UIMapID for the current taxi map while the flight path window is open.
---@return number taxiMapID - UiMapID for current taxi map.
function GetTaxiMapID()
end

---Returns localized text depending on the specified gender.
---@param token string - Reputation index
---@param gender number - Gender ID
---@param ordinal unknown 
---@return string text - The localized text
---@since Patch 3.1.0 (2009-04-14): Added. Replaced the FrameXML/LocaleProperties.lua implementation.
function GetText(token, gender, ordinal)
end

---Returns the color for a threat status.
---@param status number - Usually the return of UnitThreatSituation
---@return number r - a value between 0 and 1 for the red content of the color
---@return number g - a value between 0 and 1 for the green content of the color
---@return number b - a value between 0 and 1 for the blue content of the color
---@since Patch 10.2.6 (2024-03-19): Changed status to be in range 0 to 4294967295.
function GetThreatStatusColor(status)
end

---Returns the time in seconds since the end of the previous frame and the start of the current frame.
---@return number elapsed - The time in seconds since the last frame.
---@since Patch 7.0.3 (2016-07-19): Added.[1]
function GetTickTime()
end

---Returns the system uptime of your computer in seconds, with millisecond precision.
---@return number seconds - The current system uptime in seconds, e.g. 60123.558
---@since Patch 4.3.0 (2011-11-29): Only updates once every OnUpdate[1]
function GetTime()
end

---Returns a monotonic timestamp in seconds, with millisecond precision.
---@return number seconds - The number of seconds that have elapsed since this timer was started.
function GetTimePreciseSec()
end

---Returns the name of a player title.
---@param titleId number - Ranging from 1 to GetNumTitles. Not necessarily an index as there can be missing/skipped IDs in between.
---@return string name - Name of the title.
---@return boolean playerTitle - Seems to be true for all existing titles.
---@since Patch 2.0.1 (2006-12-05): Added.
function GetTitleName(titleId)
end

---Returns the name of the quest at the quest giver.
---@return string title - name of the offered quest, e.g. "Inside the Frozen Citadel".
function GetTitleText()
end

---Returns the total number of achievement points earned.
---@param guild boolean ? - True if you want guild score
---@return number points - Total points earned
---@since Patch 3.0.2 (2008-10-14): Added.
function GetTotalAchievementPoints(guild)
end

---
---@param slot number 
---@return boolean cannotDismiss ?
function GetTotemCannotDismiss(slot)
end

---Returns info for the specified totem.
---@param slot number - Index of the totem (Fire = 1 Earth = 2 Water = 3 Air = 4)
---@return boolean haveTotem - True if you have the totem reagent in your bag ([Earth Totem], [Fire Totem], [Water Totem], [Air Totem]).
---@return string totemName - Name of the currently active totem.  If there is no active totem for this slot, this value will apparently be an empty string ("") instead of nil.
---@return number startTime - GetTime() value of when the totem started.
---@return number duration - Duration (in seconds) of the currently active totem.
---@return number icon : fileID - Path to the icon of the specified totem
---@return number modRate 
---@return number spellID 
---@since Patch 11.1.5 (2025-04-22): Added spellID return value.
function GetTotemInfo(slot)
end

---Returns active time remaining (in seconds) before a totem (or ghoul) disappears.
---@param slot number - Which totem to query
---@return number seconds - Time remaining before the totem/ghoul is automatically destroyed
function GetTotemTimeLeft(slot)
end

---Returns information about a trade item.
---@param id number - The trade slot index to query.
---@return string name - The name of the item.
---@return number texture : FileDataID - The icon associated with the item.
---@return number numItems - For stackable items, the number of items in the stack.
---@return Enum.ItemQuality quality 🔗 - The quality of the item.
---@return string enchantment - The name of any applied enchantment.
---@return boolean canLoseTransmog - true if trading this item will cause the player to lose the ability to transmogrify its appearance.
function GetTradePlayerItemInfo(id)
end

---Returns the item link for an item in the trade window.
---@param index number - index value of your character's trade slots. Starts at 1 and proceeds to 7 (MAX_TRADE_ITEMS). 7 may be used for the will-not-be-traded-slot.
---@return string itemLink : ItemLink - a string that can be used to link items in the chat log
function GetTradePlayerItemLink(index)
end

---Returns item info for the other player in the trade window.
---@param index number - the slot (1-7) to retrieve info from
---@return string name - Name of the item
---@return string texture - Name of the item's texture
---@return number quantity - Returns how many is in the stack
---@return number quality - The item's quality (0-6)
---@return number isUsable - True if the player can use this item
---@return string enchant - enchant being applied (no trade slot)
function GetTradeTargetItemInfo(index)
end

---Returns a hyperlink for an item offered for trade by the target.
---@param index number 
---@return string itemLink : ItemLink
function GetTradeTargetItemLink(index)
end

---Returns the trainer's greeting text.
---@return string greetingText - The trainers greeting text
function GetTrainerGreetingText()
end

---Returns the index of the selected trainer service.
---@return number selectionIndex : The index of the selected trainer service (the index changes when a subclass header is collapsed or expanded. And the subclass headers are included in the index).
function GetTrainerSelectionIndex()
end

---Returns the name of a requirement for training a skill and if the player meets the requirement.
---@param trainerIndex number - Index of the trainer service to retrieve information about. Note that indices are affected by the trainer filter. (See GetTrainerServiceTypeFilter and SetTrainerServiceTypeFilter.)
---@param reqIndex number - Index of the requirement to retrieve information about.
---@return string ability - The name of the required ability. Not readily available on function call, see SpellMixin:ContinueOnSpellLoad.
---@return boolean hasReq - Flag for if the player meets the requirement.
function GetTrainerServiceAbilityReq(trainerIndex, reqIndex)
end

---Returns the cost of the specified trainer service.
---@param index number - The index number of a specific trainer service.
---@return number serviceCost - The cost of a specific service in copper.
---@return number talentCost - The cost of the service in talent points.
---@return number professionCost - The cost of the service in available professions.
function GetTrainerServiceCost(index)
end

---Returns the description of a specific trainer service.
---@param index number - The index of the specific trainer service.
---@return string serviceDescription - The description of a specific trainer service. Not readily available on function call, see SpellMixin:ContinueOnSpellLoad.
function GetTrainerServiceDescription(index)
end

---Returns the icon texture for a specific trainer service.
---@param index number - Index of the trainer service to retrieve information about. Note that indices are affected by the trainer filter. (See GetTrainerServiceTypeFilter and SetTrainerServiceTypeFilter.)
---@return number icon : fileID - The icon texture for a particular trainer service. nil if id is a header rather than a spell line.
function GetTrainerServiceIcon(index)
end

---Returns information about a trainer service.
---@param index number - Index of the trainer service to retrieve information about. Note that indices are affected by the trainer filter. (See GetTrainerServiceTypeFilter and SetTrainerServiceTypeFilter.)
---@return string name - Name of the spell or the header (i.e. "Arcane Explosion" or "Fire").
---@return string rank - Rank of the spell, if applicable. Headers return empty strings.
---@return string category - "used" (already have the spell), "unavailable" (can not train this skill), "available" (can train this skill) and "header".
---@return number expanded - nil if this is a collapsed header (category == "header"), 1 otherwise. (See CollapseTrainerSkillLine and ExpandTrainerSkillLine.)
---@since Patch 4.0.1 (2010-10-12): New return values: name (String), subType (String), category (String), texture (String), requiredLevel (Number), topServiceLine (Number).
function GetTrainerServiceInfo(index)
end

---Returns an item link for a trainer service.
---@param index number - Index of the trainer service to a link for.
---@return string link : ItemLink - The item link for the given trainer service.
function GetTrainerServiceItemLink(index)
end

---Returns the required level to learn a skill from the trainer.
---@param id number - Index of the trainer service to retrieve information about. Note that indices are affected by the trainer filter. (See GetTrainerServiceTypeFilter and SetTrainerServiceTypeFilter.)
---@return number reqLevel - The required level (for pet or player) to learn the skill.
function GetTrainerServiceLevelReq(id)
end

---Gets the name of the skill at the specified line from the current trainer.
---@param index number - Index of the trainer service to get the name of. Note that indices are affected by the trainer filter. (See GetTrainerServiceTypeFilter and SetTrainerServiceTypeFilter.)
---@return string skillLine - The name of the skill on the specified line.
function GetTrainerServiceSkillLine(index)
end

---Returns the name of the required skill and the amount needed in that skill.
---@param index number - the number of the selection in the trainer window
---@return string skillName ? - The name of the skill.
---@return number skillLevel - The required level needed for the skill.
---@return boolean hasReq - Seems to be true for skills that you cannot learn, nil for skills you have learned already.
function GetTrainerServiceSkillReq(index)
end

---Returns the status of a skill filter in the trainer window.
---@param type string - Possible values:
"available"
"unavailable"
"used" (already known)
---@return boolean status - true if currently displaying trainer services of the specified type, false otherwise.
---@since Patch 6.0.2 (2014-10-14): Returns a boolean value instead of 0/1.
function GetTrainerServiceTypeFilter(type)
end

---
---@param uiCameraID number 
---@return number posX 
---@return number posY 
---@return number posZ 
---@return number lookAtX 
---@return number lookAtY 
---@return number lookAtZ 
---@return number animID 
---@return number animVariation 
---@return number animFrame 
---@return boolean useModelCenter 
function GetUICameraInfo(uiCameraID)
end

---Returns a table of indices for combo points that have been charged.
---@param unit string UnitId
---@return number pointIndices [] - An array of 1-based indices of animacharged combo points, e.g. { [1] = 2 } means the second combo point is charged.
---@since Patch 9.0.1 (2020-10-13): Added.
function GetUnitChargedPowerPoints(unit)
end

---
---@param unit string 
---@return number holdAtMaxTime 
function GetUnitEmpowerHoldAtMaxTime(unit)
end

---
---@param unit string 
---@return number minHoldTime 
function GetUnitEmpowerMinHoldTime(unit)
end

---
---@param unit string 
---@param index number 
---@return number duration 
function GetUnitEmpowerStageDuration(unit, index)
end

---
---@param unit string UnitToken
---@return number healthMod 
function GetUnitHealthModifier(unit)
end

---
---@param unit string UnitToken
---@return number maxhealthMod 
function GetUnitMaxHealthModifier(unit)
end

---
---@param unitToken string UnitId
---@return UnitPowerBarInfo info 
---@since Patch 8.3.0 (2020-01-14): Added. Replaces UnitAlternatePowerInfo() and UnitAlternatePowerCounterInfo() which are deprecated. [1]
function GetUnitPowerBarInfo(unitToken)
end

---
---@param unitToken string UnitId
---@return UnitPowerBarInfo info 
---@since Patch 8.3.0 (2020-01-14): Added. Replaces UnitAlternatePowerInfo() and UnitAlternatePowerCounterInfo() which are deprecated. [1]
function GetUnitPowerBarInfoByID(unitToken)
end

---
---@param unitToken string UnitId
---@return string name ?
---@return string tooltip ?
---@return string cost ?
---@since Patch 8.3.0 (2020-01-14): Added. Replaces GetAlternatePowerInfoByID() which is deprecated. [1]
function GetUnitPowerBarStrings(unitToken)
end

---
---@param unitToken string UnitId
---@return string name ?
---@return string tooltip ?
---@return string cost ?
---@since Patch 8.3.0 (2020-01-14): Added. Replaces GetAlternatePowerInfoByID() which is deprecated. [1]
function GetUnitPowerBarStringsByID(unitToken)
end

---
---@param unitToken string UnitId
---@param textureIndex number 
---@param timerIndex number ?
---@return number texture 
---@return number colorR 
---@return number colorG 
---@return number colorB 
---@return number colorA 
---@since Patch 8.3.0 (2020-01-14): Added. Replaces UnitAlternatePowerTextureInfo() [1]
function GetUnitPowerBarTextureInfo(unitToken, textureIndex, timerIndex)
end

---
---@param unitToken string UnitId
---@param textureIndex number 
---@param timerIndex number ?
---@return number texture 
---@return number colorR 
---@return number colorG 
---@return number colorB 
---@return number colorA 
---@since Patch 8.3.0 (2020-01-14): Added. Replaces UnitAlternatePowerTextureInfo() [1]
function GetUnitPowerBarTextureInfoByID(unitToken, textureIndex, timerIndex)
end

---
---@param unit string UnitToken
---@return number powerMod 
function GetUnitPowerModifier(unit)
end

---Returns the movement speed of the unit.
---@param unit string UnitToken - The unit to query the speed of.
---@return number currentSpeed - current movement speed in yards per second (normal running: 7; an epic ground mount: 14)
---@return number runSpeed - the maximum speed on the ground, in yards per second (including talents such as Pursuit of Justice and ground mounts)
---@return number flightSpeed - the maximum speed while flying, in yards per second (the unit need to be on a flying mount to get the flying speed)
---@return number swimSpeed - the maximum speed while swimming, in yards per second (not tested but it should be as the flying mount)
function GetUnitSpeed(unit)
end

---
---@param unit string UnitToken
---@return number result 
function GetUnitTotalModifiedMaxHealthPercent(unit)
end

---
---@param vehicleIndicatorID number 
---@return number backgroundTextureID : fileID
---@return number numSeatIndicators 
function GetVehicleUIIndicator(vehicleIndicatorID)
end

---
---@param vehicleIndicatorID number 
---@param indicatorSeatIndex number 
---@return number virtualSeatIndex 
---@return number xPos 
---@return number yPos 
function GetVehicleUIIndicatorSeat(vehicleIndicatorID, indicatorSeatIndex)
end

---
---@param combatRating number 
---@return number versatilityBonus 
function GetVersatilityBonus(combatRating)
end

---Returns info for temporary weapon enchantments (e.g. sharpening stones).
---@return boolean hasMainHandEnchant - true if the weapon in the main hand slot has a temporary enchant, false otherwise
---@return number mainHandExpiration - time remaining for the main hand enchant, as thousandths of seconds
---@return number mainHandCharges - the number of charges remaining on the main hand enchant
---@return number mainHandEnchantID - ID of the main hand enchant (new in 6.0)
---@return boolean hasOffHandEnchant - true if the weapon in the secondary (off) hand slot has a temporary enchant, false otherwise
---@return number offHandExpiration - time remaining for the off hand enchant, as thousandths of seconds
---@return number offHandCharges - the number of charges remaining on the off hand enchant
---@return number offHandEnchantID - ID of the off hand enchant (new in 6.0)
---@return boolean hasRangedEnchant - true if the weapon in the ranged hand slot has a temporary enchant, false otherwise (only on cataclysm/4.x)
---@return number rangedExpiration - time remaining for the ranged enchant, as thousandths of seconds (only on cataclysm/4.x)
---@return number rangedCharges - the number of charges remaining on the ranged enchant (only on cataclysm/4.x)
---@return number rangedEnchantID - ID of the ranged enchant (only on cataclysm/4.x)
function GetWeaponEnchantInfo()
end

---Requests updated GM ticket status information.
---@since Patch 5.3.0 (2013-05-21): Added.
function GetWebTicket()
end

---
---@param timerID number 
---@return string description 
---@return number elapsedTime 
---@return number type 
---@since Patch 5.4.0 (2013-09-10): type changed from bolean isChallangeMode to event listed in details
function GetWorldElapsedTime(timerID)
end

---Returns info on the players queue for a world PvP zone.
---@param index number 
---@return string status confirm - The player can enter the pvp zone
none - No world pvp queue at this index
queued - The player is queued for this pvp zone
function GetWorldPVPQueueStatus(index)
end

---Returns the amount of current rested XP for the character.
---@return number exhaustion - The exhaustion threshold. Returns nil if player is not rested.
function GetXPExhaustion()
end

---Returns the name of the zone the player is in.
---@return string zoneName - Localized zone name.
function GetZoneText()
end

---Assigns an item from the current loot window to a group member, when in Master Looter mode.
---@param slot number - The index of the item you wish to assign. Should be between 1 and GetNumLootItems
---@param index number - The index of the player you wish to receive the item. You can retreive candidate names with GetMasterLootCandidate
function GiveMasterLoot(slot, index)
end

---Deletes a guild rank.
---@param index number - index between 1 and GuildControlGetNumRanks
function GuildControlDelRank(index)
end

---Returns a guild rank name by index.
---@param index number - index between 1 and GuildControlGetNumRanks
---@return string rankName - the name of the rank.
function GuildControlGetRankName(index)
end

---Saves the current rank name.
---@param name string - the name of this rank
function GuildControlSaveRank(name)
end

---#protected - This can only be called from secure code.
---@param rankOrder number - index of the rank to select, between 1 and GuildControlGetNumRanks().
---@since Patch 7.3.0 (2017-08-29): This function can now only be called from a secure execution path.
function GuildControlSetRank(rankOrder)
end

---#protected - This can only be called from secure code.
---@param index number - the flag index, between 1 and GuildControlGetNumRanks().
---@param enabled boolean - whether the flag is enabled or disabled.
---@since Patch 7.3.0 (2017-08-29): This function can now only be called from a secure execution path.
function GuildControlSetRankFlag(index, enabled)
end

---Prints info for the guild the player belongs to.
function GuildInfo()
end

---Sets the officer note of a guild member.
---@param index number - The position a member is in the guild roster. Between 1 and GetNumGuildMembers, or 0 for no selection.
---@param note string - Text for the officer note.
function GuildRosterSetOfficerNote(index, note)
end

---Sets the public note of a guild member.
---@param index number - The position a member is in the guild roster. Between 1 and GetNumGuildMembers, or 0 for no selection.
---@param note string - Text to be set to the public note of the index.
function GuildRosterSetPublicNote(index, note)
end

---
---@return boolean hasEffect 
function HasAPEffectsSpellPower()
end

---Returns true if an action slot is occupied.
---@param actionSlot number - ActionSlot : The tested action slot.
---@return boolean hasAction - Flag
function HasAction(actionSlot)
end

---
---@return boolean hasPenalty 
function HasDualWieldPenalty()
end

---Returns whether the player currently has an extra action bar/button.
---@return boolean hasBar - 1 if the player currently has an extra action bar (button); nil otherwise.
---@since Patch 4.3.0 (2011-11-29): Added.
function HasExtraActionBar()
end

---Checks whether you have full control over your character (i.e. you are not feared, etc).
---@return boolean hasControl - Whether the player has full control
function HasFullControl()
end

---
---@return boolean result 
function HasIgnoreDualWieldWeapon()
end

---Returns whether or not the player has a key ring.
---@return boolean hasKey - True if the player has a key ring, false otherwise
---@since Patch 11.0.0 (2024-07-23): Readded.
function HasKey()
end

---Returns whether the player is in a random party formed by the dungeon finder system.
---@return boolean isRestricted - 1 if the current party is subject to LFG restrictions, nil otherwise.
function HasLFGRestrictions()
end

---
---@return boolean hasLootSpecializations 
function HasLootSpecializations()
end

---
---@return boolean hasCannotReleaseEffect 
---@return number longestDuration 
---@return boolean hasUntilCancelledDuration 
function HasNoReleaseAura()
end

---Returns true if the player currently has an active (hunter) pet out.
---@return boolean hasUI - True if the player has a pet User Interface, False if he does not.
---@return boolean isHunterPet - True if the pet is a hunter pet, False if it is not.
function HasPetUI()
end

---
---@return boolean hasEffect 
function HasSPEffectsAttackPower()
end

---Returns true if a wand is equipped.
---@return boolean wandEquipped 
function HasWandEquipped()
end

---Takes the cursor out of repair mode.
function HideRepairCursor()
end

---Returns true during simple in-game cinematics where only the camera moves, like the race intro cinematics.
---@return boolean inCinematic 
function InCinematic()
end

---Returns true if the combat lockdown restrictions are active.
---@return boolean inLockdown - true if lockdown restrictions are currently in effect, false otherwise.
function InCombatLockdown()
end

---Returns whether or not you are in a guild party.
---@param inGroup boolean - True if you are in a valid guild group, otherwise false.
---@param numGuildPresent number - The number of guild members currently in the group.
---@param numGuildRequired number - The total number of members required to make the group into a guild group.
---@param xpMultiplier number - The amount to multiply the Guild Experience by.
---@return  inGroup - True if you are in a valid guild group, otherwise false.
---@return  numGuildPresent - The number of guild members currently in the group.
---@return  numGuildRequired - The total number of members required to make the group into a guild group.
---@return  xpMultiplier - The amount to multiply the Guild Experience by.
function InGuildParty(inGroup, numGuildPresent, numGuildRequired, xpMultiplier)
end

---Returns true if the cursor is in repair mode.
---@return number inRepairMode 
function InRepairMode()
end

---Returns true if a message can be deleted, false if it can be returned to sender.
---@param index number - the index of the message (1 is the first message)
---@return boolean canDelete - false if a mailed item or money is returnable, true otherwise.
function InboxItemCanDelete(index)
end

---
---@return boolean result 
function InitiateRolePoll()
end

---Opens a trade with the specified unit.
---@param unit string UnitId - The player to trade with.
function InitiateTrade(unit)
end

---Inspects the specified / selected "unit".
---@param unit  String - The UnitId to select as a target.
function InspectUnit(unit)
end

---
---@return boolean is64Bit 
function Is64BitClient()
end

---Returns if the account has been secured with Blizzard Mobile Authenticator.
---@return boolean isSecured 
---@since Patch 7.3.5 (2018-01-16): Added.[1]
function IsAccountSecured()
end

---Indicates whether the specified achievement is eligible to be completed.
---@param achievementID number - ID of the achievement to query.
---@return boolean eligible 
---@since Patch 4.0.1 (2010-10-12): Added.
function IsAchievementEligible(achievementID)
end

---Returns true if the specified action is in range.
---@param actionSlot number - The action slot to test.
---@param unit string ? : UnitId
---@return boolean inRange - nil if the slot has no action, or if the action cannot be used on the current target, or if range does not apply; false if the action is out of range, and true otherwise.
---@since Patch 6.0.2 (2014-10-14): Return values are now true/false instead of 1/0
function IsActionInRange(actionSlot, unit)
end

---Returns true if the player is inside a (rated) arena.
---@return boolean isArena - If the player is inside an arena.
---@return boolean isRegistered - If the player is playing a rated arena match.
function IsActiveBattlefieldArena()
end

---Checks if the player is located in a zone that supports advanced flight mechanics, such as Dragonriding.
---@return boolean flyable 
---@since Patch 10.0.7 (2023-03-21): Added.
function IsAdvancedFlyableArea()
end

---Returns whether the player can teleport to/from an LFG instance.
---@return boolean allowedToTeleport - true if the player can teleport to/from an LFG instance, false otherwise.
---@since Patch 5.2.0 (2013-03-05): Added.
function IsAllowedToUserTeleport()
end

---Returns true if a modifier key is currently pressed down.
---@return boolean isDown - True if the specified modifier key is pressed down.
function IsAltKeyDown()
end

---Returns true if the completion history is available.
---@return boolean available 
function IsArtifactCompletionHistoryAvailable()
end

---Returns true if an action is the "Auto Attack" action.
---@param actionSlot number - The action slot to test.
---@return boolean isAttack - true if the slot is an attack action and should flash red during combat. false if the specified slot is not an attack action, or is empty.
function IsAttackAction(actionSlot)
end

---Returns true if an action is currently auto-repeating (e.g. Shoot for wand and Auto Shot for Hunters).
---@param actionSlot number - The action slot to query.
---@return boolean isRepeating - true if the action in the slot is currently auto-repeating, false if it is not auto-repeating or the slot is empty.
function IsAutoRepeatAction(actionSlot)
end

---
---@return boolean isBetaBuild 
function IsBetaBuild()
end

---
---@return boolean result 
function IsCemeterySelectionAvailable()
end

---
---@return boolean newlyBoosted 
function IsCharacterNewlyBoosted()
end

---Returns true if an action is a consumable, i.e. it has a count.
---@param slotID number - ActionSlot
---@return boolean isConsumable True if the action in the specified slot is linked to a consumable, e.g. a potion action.
False if the action is not consumable or if the action is empty.
function IsConsumableAction(slotID)
end

---Returns true if a modifier key is currently pressed down.
---@return boolean isDown - True if the specified modifier key is pressed down.
function IsControlKeyDown()
end

---
---@return boolean isCpuBound ?
function IsCpuBound()
end

---Returns true if the specified action is currently being used.
---@param actionSlot number - action slot ID to query.
---@return boolean isCurrent - 1 if the action in the slot is currently executing, nil otherwise.
function IsCurrentAction(actionSlot)
end

---
---@return boolean isDebugBuild 
function IsDebugBuild()
end

---
---@return boolean available 
function IsDemonHunterAvailable()
end

---Expected to return true when in an area where you can use a D.R.I.V.E. mount. Currently bugged and also returns true in other zones.
---@return boolean result 
function IsDrivableArea()
end

---Returns if your character is Dual wielding.
---@return boolean isDualWield - True if wielding more than 1 weapon (or whenever a weapon is equipped in Off-Hand), false otherwise.
---@since Patch 4.0.1 (2010-10-12): Added.
function IsDualWielding()
end

---Returns true if the specified action slot is an equipped item.
---@param slotID number (actionSlot) : Action slot to query.
---@return boolean isEquipped - true if the specified action slot contains a currently equipped item, false otherwise.
function IsEquippedAction(slotID)
end

---
---@return boolean enabled 
function IsEuropeanNumbers()
end

---
---@return boolean isExpansionTrialAccount 
---@since Patch 5.0.4 (2012-08-28): Added.
function IsExpansionTrial()
end

---Returns true if the specified unit is currently falling.
---@param unit string ? : UnitToken - A unitID to query. Defaults to player if omitted.
---@return boolean falling - true if the unit is currently falling, false otherwise.
function IsFalling(unit)
end

---Returns true if the loot window is related to fishing.
---@return boolean isFishingLoot 
function IsFishingLoot()
end

---Returns true if the current zone is a flyable area.
---@return boolean flyable 
---@since Patch 2.1.0 (2007-05-22): Added.
function IsFlyableArea()
end

---Returns true if the character is currently on a flying mount.
---@param unit string ? : UnitToken
---@return boolean flying - True if the character is currently flying, false otherwise.
---@since Patch 2.0.1 (2006-12-05): Added.
function IsFlying(unit)
end

---Returns true if the client downloaded has the GM MPQs attached, returns false otherwise.
---@return boolean isGM 
function IsGMClient()
end

---Returns whether or not the unit with the given GUID is in your group.
---@param guid string WOWGUID
---@param groupType number ?
If omitted, defaults to INSTANCE if applicable, HOME otherwise.
---@return boolean inGroup - True if the given GUID is in your group, considering groupType if provided, otherwise false.
function IsGUIDInGroup(guid, groupType)
end

---Returns true if the player is the guild master.
---@return boolean isGuildLeader - true if the player is the guild master, otherwise false.
function IsGuildLeader()
end

---Returns true if another player is from the same guild.
---@param player string - The UnitGUID or UnitToken of the player you're querying.
---@return boolean isGuildMember - True if the player is a member of the same guild.
function IsGuildMember(player)
end

---Returns true during in-game cinematics/cutscenes involving NPC actors and scenescripts.
---@return boolean inCinematicScene 
function IsInCinematicScene()
end

---Returns true if the player is in a group.
---@param groupType number ? - If omitted, checks if you're in any type of group.
If omitted, defaults to INSTANCE if applicable, HOME otherwise.
---@return boolean inGroup - Returns true if the player is in the groupType group if specified, or in any type of group.
---@since Patch 5.0.4 (2012-08-28): Added groupType argument.
function IsInGroup(groupType)
end

---Lets you know whether you are in a guild.
---@return boolean inGuild 
function IsInGuild()
end

---Returns whether or not you are in a guild party.
---@param inGuildGroup boolean - True if you are in a valid guild group, otherwise false.
---@return  inGuildGroup - True if you are in a valid guild group, otherwise false.
function IsInGuildGroup(inGuildGroup)
end

---Returns true if the player is in an instance, and the type of instance.
---@return boolean inInstance - Whether the player is in an instance; nil otherwise.
---@return string instanceType - The instance type:
"none" when outside an instance
"pvp" when in a battleground
"arena" when in an arena
"party" when in a 5-man instance
"raid" when in a raid instance
"scenario" when in a scenario
function IsInInstance()
end

---
---@return boolean inTower 
function IsInJailersTower()
end

---Returns true if the player is in an LFD instance.
---@return boolean inLFGDungeon 
function IsInLFGDungeon()
end

---Returns true if the player is in a raid.
---@param groupType number ? - To check for a specific type of group, provide one of
---@return boolean isInRaid - true if the player is currently in a groupType raid group (if groupType was not specified, true if in any type of raid), false otherwise
---@since Patch 5.0.4 (2012-08-28): Added.
function IsInRaid(groupType)
end

---Returns true if the character is currently indoors.
---@return boolean indoors 
---@since Patch 2.0.1 (2006-12-05): Added.
function IsIndoors()
end

---
---@return boolean insane 
function IsInsane()
end

---Returns whether an inventory item is locked, usually as it awaits pending action.
---@param slotId number - The slot ID used to refer to that slot in the other GetInventory functions.
---@return boolean isLocked - true if the slot is locked, false otherwise
function IsInventoryItemLocked(slotId)
end

---
---@param itemLocation ItemLocation 🔗
---@return boolean isItemPreferredArmorType 
function IsItemPreferredArmorType(itemLocation)
end

---
---@param layerLevel number 
---@return string isLocked 
function IsJailersTowerLayerTimeLocked(layerLevel)
end

---
---@param keyOrMouseName string 
---@param excludeBindingState boolean ? = false
---@return boolean down ?
function IsKeyDown(keyOrMouseName, excludeBindingState)
end

---Returns whether you have currently finished a Dungeon Finder instance.
---@return boolean isComplete 
---@since Patch 5.1.0 (2012-11-27): Added (PTR 5.1.0.16139)
function IsLFGComplete()
end

---Returns information about the LFG dungeon with the given dungeonID.
---@param dungeonID number - dungeon ID to query.
---@return boolean isAvailableForAll : ???
---@return boolean isAvailableForPlayer : the player is eligible to join the LFG Dungeon
---@return boolean hideIfNotJoinable : ???
---@return number totalGroupSizeRequired : ???
function IsLFGDungeonJoinable(dungeonID)
end

---Returns true if a modifier key is currently pressed down.
---@return boolean isDown - True if the specified modifier key is pressed down.
function IsLeftAltKeyDown()
end

---Returns true if a modifier key is currently pressed down.
---@return boolean isDown - True if the specified modifier key is pressed down.
function IsLeftControlKeyDown()
end

---
---@return boolean down 
function IsLeftMetaKeyDown()
end

---Returns true if a modifier key is currently pressed down.
---@return boolean isDown - True if the specified modifier key is pressed down.
function IsLeftShiftKeyDown()
end

---
---@param difficultyID number 
---@return boolean result ?
function IsLegacyDifficulty(difficultyID)
end

---Returns true if on a Linux client.
function IsLinuxClient()
end

---
---@return boolean loggedIn 
function IsLoggedIn()
end

---Returns true if on a Mac client.
---@return boolean isMac - true (1?) if the game is running on a mac client, false (nil?) otherwise.
function IsMacClient()
end

---
---@return boolean down 
function IsMetaKeyDown()
end

---Returns true if the modifier key needed for an an action is pressed.
---@param action  AUTOLOOTTOGGLE, CHATLINK, COMPAREITEMS, DRESSUP, FOCUSCAST, OPENALLBAGS, PICKUPACTION, QUESTWATCHTOGGLE, SELFCAST, SHOWITEMFLYOUT, SOCKETITEM, SPLITSTACK, STICKYCAMERA, TOKENWATCHTOGGLE
---@return boolean isHeld - true if the modifier is being held, false otherwise
---@since Patch 2.2.0 (2007-09-25): Added.
function IsModifiedClick(action)
end

---Returns true if a modifier key is currently pressed down.
---@return boolean isDown - True if the specified modifier key is pressed down.
function IsModifierKeyDown()
end

---Returns true if the character is currently mounted.
---@return boolean mounted 
function IsMounted()
end

---Returns whether a mouse button is being held down.
---@param button  LeftButton, RightButton, MiddleButton, Button4, Button5
---@return boolean isDown - Returns whether the given mouse button is held down.
---@since Patch 2.0.1 (2006-12-05): Added.
function IsMouseButtonDown(button)
end

---Returns true if the player is currently in mouselook mode.
---@return boolean isMouseLooking - Returns true when the player is panning the camera with the right mouse button, false otherwise.
function IsMouselooking()
end

---
---@param movieId number 
---@return boolean isLocal 
function IsMovieLocal(movieId)
end

---Returns true if the specified movie exists and can be played.
---@param movieID number 
---@return boolean playable 
---@since Patch 4.0.6 (2011-02-08): Added.
function IsMoviePlayable(movieID)
end

---
---@param movieId number 
---@return boolean readable 
function IsMovieReadable(movieId)
end

---
---@return boolean onGroundFloor 
function IsOnGroundFloorInJailersTower()
end

---
---@return boolean result 
function IsOnTournamentRealm()
end

---Returns true if the player is currently outside of map boundaries.
---@return boolean oob - True if the player's character is currently outside of the map, false otherwise.
function IsOutOfBounds()
end

---Returns true if the character is currently outdoors.
---@return boolean outdoors 
---@since Patch 2.0.1 (2006-12-05): Added.
function IsOutdoors()
end

---
---@return boolean isRunning 
function IsPVPTimerRunning()
end

---Returns true if the pet is currently auto attacking.
---@return boolean isActive 
function IsPetAttackActive()
end

---
---@param playerGUID string 
---@return boolean IsInGuild 
function IsPlayerInGuildFromGUID(playerGUID)
end

---
---@return boolean result 
function IsPlayerInWorld()
end

---
---@return boolean result 
function IsPlayerMoving()
end

---Returns whether the player is currently neutral (vs Alliance/Horde).
---@return boolean isNeutral - true if the player has not yet selected a faction, false otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function IsPlayerNeutral()
end

---
---@return boolean isPublicBuild 
function IsPublicBuild()
end

---Reflects the state of the OnlyBetaAndPTR TOC directive
---@return boolean isPublicTestClient 
function IsPublicTestClient()
end

---Returns true if the displayed quest at a quest giver can be completed.
---@return boolean isQuestCompletable 
function IsQuestCompletable()
end

---
---@return boolean isRanged 
function IsRangedWeapon()
end

---Returns true if a given character name is recognized by the client.
---@param text string - Name of the character to test.
---@param includeBitfield number - Bitfield of filters that the name must match at least one of.
---@param excludeBitfield number - Bitfield of filters that the name must not match any of.
---@return boolean isRecognized - true if the character name is recognized by the client and passes the requested filters.
function IsRecognizedName(text, includeBitfield, excludeBitfield)
end

---Returns true if the character is currently resting.
---@return boolean resting - Whether the player is resting.
function IsResting()
end

---
---@return boolean result 
function IsRestrictedAccount()
end

---Returns true if a modifier key is currently pressed down.
---@return boolean isDown - True if the specified modifier key is pressed down.
function IsRightAltKeyDown()
end

---Returns true if a modifier key is currently pressed down.
---@return boolean isDown - True if the specified modifier key is pressed down.
function IsRightControlKeyDown()
end

---
---@return boolean down 
function IsRightMetaKeyDown()
end

---Returns true if a modifier key is currently pressed down.
---@return boolean isDown - True if the specified modifier key is pressed down.
function IsRightShiftKeyDown()
end

---Returns true if a modifier key is currently pressed down.
---@return boolean isDown - True if the specified modifier key is pressed down.
function IsShiftKeyDown()
end

---Returns whether a given spell is specific to a specialization and/or class.
---@param spellName string - name of the spell currently known by the player.
---@return string spec ? - name of the specialization the spell is exclusive to, nil if not a specialization-granted spell.
---@return string class - name of the class the spell is exclusive to, nil if not a class ability.
---@since Patch 5.0.4 (2012-08-28): Added.
function IsSpellClassOrSpec(spellName)
end

---Returns true if the character is currently stealthed.
---@return boolean stealthed - true if stealthed, otherwise false
function IsStealthed()
end

---Returns whether the player character is submerged in water.
---@param unit string ? : UnitToken
---@return boolean isSubmerged - True if the unit is submerged.
function IsSubmerged(unit)
end

---Returns true if the specified unit is currently swimming.
---@param unit string ? : UnitToken - A unitID to query. Defaults to player if omitted.
---@return boolean isSwimming - True if the unit is swimming, false otherwise.
function IsSwimming(unit)
end

---Checks if the players' current target is a soft-targeted unit.
---@return boolean isLoose - true if the current target unit is a soft-targeted unit.
---@since Patch 10.0.0 (2022-10-25): Added.
function IsTargetLoose()
end

---
---@return boolean isTestBuild 
function IsTestBuild()
end

---Returns true if threat warnings are currently enabled.
function IsThreatWarningEnabled()
end

---Returns true if the character can use a player title.
---@param titleId number - Ranging from 1 to GetNumTitles.
---@return boolean isKnown 
---@since Patch 2.0.1 (2006-12-05): Added.
function IsTitleKnown(titleId)
end

---Returns true if the training window is used for a profession trainer.
---@return boolean isTradeskillTrainer - True if the last open trainer skill list was for a trade skill (as opposed to class skills).
function IsTradeskillTrainer()
end

---Returns whether the player is using a trial (free-to-play) account.
---@return boolean isTrialAccount - Returns true if on a free-to-play account
---@since Patch 4.1.0 (2011-04-26): Added.
function IsTrialAccount()
end

---
---@param unitToken string UnitId
---@return boolean isReady 
---@since Patch 8.3.0 (2020-01-14): Added.
function IsUnitModelReadyForUI(unitToken)
end

---Returns true if the character can currently use the specified action (sufficient mana, reagents and not on cooldown).
---@param slot number - Action slot to query
---@return boolean isUsable - true if the action is currently usable (does not check cooldown or range), false otherwise.
---@return boolean notEnoughMana - true if the action is unusable beacuse the player does not have enough mana, rage, etc.; false otherwise.
function IsUsableAction(slot)
end

---
---@return boolean isUsingFixedTimeStep 
function IsUsingFixedTimeStep()
end

---
---@return boolean down 
function IsUsingGamepad()
end

---
---@return boolean down 
function IsUsingMouse()
end

---Returns true if the vehicle aim angle can be adjusted.
---@return boolean adjustable 
function IsVehicleAimAngleAdjustable()
end

---Returns true if the vehicle aim power can be adjusted.
---@return boolean adjustable 
function IsVehicleAimPowerAdjustable()
end

---
---@return boolean isVeteranTrialAccount 
---@since Patch 6.1.0 (2015-02-24): Added.
function IsVeteranTrialAccount()
end

---Returns whether the player is currently in a War Game.
---@return boolean isWargame - true if the player is currently inside a war game instance, false otherwise.
---@since Patch 5.4.0 (2013-09-10): Added.
function IsWargame()
end

---Returns true if on a Windows client.
function IsWindowsClient()
end

---
---@return boolean isDisabled 
function IsXPUserDisabled()
end

---Retturns true if a keystone is added to the artifact.
---@param index number - Ranging from 1 to ARCHAEOLOGY_MAX_STONES (4)
---@return boolean added 
function ItemAddedToArtifact(index)
end

---Returns the name of the character who created the item text.
---@return string creatorName ? - If this item text was created by a player (i.e. Saved mail message) then return their name, otherwise return nil.
function ItemTextGetCreator()
end

---Returns the item name that the item text belongs to.
---@return string textName - The name of the item text which is being viewed.
function ItemTextGetItem()
end

---Returns the material texture for the item text.
---@return string materialName - The name of the material to use for displaying the item text. If nil then the material is "Parchment".
function ItemTextGetMaterial()
end

---Returns the page number of the currently displayed page.
---@return number pageNum - The page number of the currently displayed page, starting at 1.
function ItemTextGetPage()
end

---Returns the contents of the currently displayed page.
---@return string pageBody - The body of the current page.
function ItemTextGetText()
end

---Returns true if there is a page after the current page.
---@return boolean hasNext - Returns true if the there is a page following the currently displayed one, false otherwise.
function ItemTextHasNextPage()
end

---Moves to the next page of the item text.
function ItemTextNextPage()
end

---Moves to the previous page of the item text.
function ItemTextPrevPage()
end

---#protected - This can only be called from secure code.
---@param index number - Which battlefield instance to queue for (0 for first available), or which arena bracket to queue for.
---@param asGroup boolean - If true-equivalent, the player's group is queued for the battlefield, otherwise, only the player is queued.
---@param isRated boolean - If true-equivalent, and queueing for an arena bracket, the group is queued for a rated match as opposed to a skirmish.
---@since Patch 5.1.0 (2012-11-27): Protected.
function JoinBattlefield(index, asGroup, isRated)
end

---Joins the specified chat channel.
---@param channelName string - The name of the channel to join. You can't use the "-" character in channelName.
---@param password string ? - The channel password, nil if none.
---@param frameID number ? - The chat frame ID number to add the channel to. Use Frame:GetID() to retrieve it for chat frame objects.
---@param hasVoice boolean - Enable voice chat for this channel.
---@return number type - The type of channel. 0 for a undefined channel, 1 for the zone General channel,  etc
---@return string name ? - The name of the channel.
function JoinChannelByName(channelName, password, frameID, hasVoice)
end

---Joins the specified chat channel; the channel will be rejoined after relogging.
---@param channelName string - The name of the channel to join. You can't use the "-" character in channelName (patch 1.9)
---@param password string ? - The channel password, nil if none.
---@param frameID number ? - The chat frame ID number to add the channel to. Use Frame:GetID() to retrieve it for chat frame objects.
---@param hasVoice boolean ? - Enable voice chat for this channel.
---@return number type - The type of channel. 0 for a undefined channel, 1 for the zone General channel,  etc
---@return string name - The name of the channel (Ohklus: seems to be nil for most channels).
function JoinPermanentChannel(channelName, password, frameID, hasVoice)
end

---Queue for a arena either solo or as a group.
---@param arenaID number 
---@param joinAsGroup boolean ?
function JoinSkirmish(arenaID, joinAsGroup)
end

---Joins the specified chat channel; the channel will be left on logout.
---@param channelName string - The name of the channel to join. You can't use the "-" character in channelName (patch 1.9)
---@param password string ? - The channel password, nil if none.
---@param frameID number ? - The chat frame ID number to add the channel to. Use Frame:GetID() to retrieve it for chat frame objects.
---@param hasVoice boolean ? - Enable voice chat for this channel.
---@return number type - The type of channel. 0 for a undefined channel, 1 for the zone General channel,  etc
---@return string name - The name of the channel (Ohklus: seems to be nil for most channels).
function JoinTemporaryChannel(channelName, password, frameID, hasVoice)
end

---#protected - This can only be called from secure code.
function JumpOrAscendStart()
end

---Teleports the player to or from a LFG dungeon.
---@param toSafety boolean - false to teleport to the dungeon, true to teleport to where you were before you were teleported to the dungeon.
function LFGTeleport(toSafety)
end

---#protected - This can only be called from secure code.
---@param url string - URL of the website to open. Seems to only accept some URLs, works with base URL of the world of warcraft websites (wow-europe.com, worldofwarcraft.com, etc).
---@since Patch 10.2.0 (2023-11-07): Re-added.
function LaunchURL(url)
end

---Learns the name of a specified pvp talent in a specified tab.
---@param talentID number 
---@param slotIndex number 
function LearnPvpTalent(talentID, slotIndex)
end

---Learns the specified talent.
---@param talentID number 
---@return boolean success - Returns false when e.g. in combat.
function LearnTalent(talentID)
end

---Leaves the current battleground.
function LeaveBattlefield()
end

---Leaves the channel with the specified name.
---@param channelName string - The name of the channel to leave
function LeaveChannelByName(channelName)
end

---Prints the list of members in the specified channel.
---@param channel number |string - Channel number or case-insensitive channel name from which to list the members, e.g. "trade - city".
function ListChannelByName(channel)
end

---Prints the list of currently joined chat channel.
function ListChannels()
end

---Loads default, account or character specific key bindings.
---@param bindingSet number - Which binding set to load; one of the following three numeric constants
function LoadBindings(bindingSet)
end

---
---@param index number 
---@param param number ?
function LoadURLIndex(index, param)
end

---Returns a table with localized class names.
---@param isFemale boolean ? = false
---@return table result 
function LocalizedClassList(isFemale)
end

---Gets or sets whether logging chat to Logs\WoWChatLog.txt is enabled.
---@param newState boolean ? - toggles chat logging
---@return boolean isLogging ? - current state of logging
function LoggingChat(newState)
end

---Gets or sets whether logging combat to Logs\WoWCombatLog.txt is enabled.
---@param newState boolean ? - If passed, enables/disables combat logging. If not passed, queries the current state without changing it.
To query the current state, LoggingCombat() must be called with zero arguments. One should not pass nil explicitly, since the behavior is the same as passing false (it disables combat logging).
---@return boolean isLogging ? - Whether combat logging is now enabled/disabled.
true: Combat logging is enabled
false: Combat logging is disabled
nil: The function call was rate limited. The combat logging state was not changed, and it is unknown whether combat logging is currently enabled or disabled.
function LoggingCombat(newState)
end

---#protected - This can only be called from secure code.Use the /logout slash command.
---@since Patch 7.3.2 (2017-10-24): Protected.
function Logout()
end

---Loots the specified slot; can require confirmation with ConfirmLootSlot.
---@param slot number - index between 1 and GetNumLootItems
function LootSlot(slot)
end

---Returns whether a loot slot contains an item.
---@param lootSlot number - index of the loot slot, ascending from 1 to GetNumLootItems()
---@return boolean isLootItem - true if the loot slot contains an item rather than coin.
---@since Patch 5.0.4 (2012-08-28): Renamed from LootSlotIsItem to LootSlotHasItem.
function LootSlotHasItem(lootSlot)
end

---Copies (or mixes in) children from one or more tables into another.
---@since Patch 11.2.0 (2025-08-05): Implementation moved to a native client function.
function Mixin()
end

---
---@param doOverride boolean ? = false
function MouseOverrideCinematicDisable(doOverride)
end

---Enters mouse look mode; alters the character's movement/facing direction.
function MouselookStart()
end

---Exits mouse look mode.
function MouselookStop()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param startTime number - Begin moving backward at this time, per GetTime * 1000.
---@since Patch 2.0.1 (2006-12-05): Protected.
function MoveBackwardStart(startTime)
end

---#protected - This can only be called from secure code.#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 2.0.1 (2006-12-05): Protected.
function MoveBackwardStop()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param startTime number - Begin moving forward at this time, per GetTime * 1000.
---@since Patch 2.0.1 (2006-12-05): Protected.
function MoveForwardStart(startTime)
end

---#protected - This can only be called from secure code.#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 2.0.1 (2006-12-05): Protected.
function MoveForwardStop()
end

---Starts rotating the camera downward.
---@param speed number - Speed at which to begin rotating.
function MoveViewDownStart(speed)
end

---Stops rotating the camera downward.
function MoveViewDownStop()
end

---Begins zooming the camera in.
---@param speed number - Speed at which to begin zooming.
function MoveViewInStart(speed)
end

---Stops zooming the camera in.
function MoveViewInStop()
end

---Starts rotating the camera to the left.
---@param speed number - Speed at which to begin rotating.
function MoveViewLeftStart(speed)
end

---Stops rotating the camera to the left.
function MoveViewLeftStop()
end

---Begins zooming the camera out.
---@param speed number - Speed at which to begin zooming.
function MoveViewOutStart(speed)
end

---Stops zooming the camera out.
function MoveViewOutStop()
end

---Starts rotating the camera to the right.
---@param speed number - Speed at which to begin rotating.
function MoveViewRightStart(speed)
end

---Stops rotating the camera to the right.
function MoveViewRightStop()
end

---Starts rotating the camera upward.
---@param speed number - Speed at which to begin rotating.
function MoveViewUpStart(speed)
end

---Stops rotating the camera upward.
function MoveViewUpStop()
end

---Plays the Seasons of War Cinematic Trailer.
---@param MovieFrame  Frame
---@param movieID  number : MovieID
function MovieFrame_PlayMovie(MovieFrame, movieID)
end

---Plays the Sound/Spells/LevelUp.ogg sound
---@param sound number |string - FileID of a game sound or file path to an addon sound.
---@since Patch 8.2.0 (2019-06-25): Added. (Build 30948 Jun 27 2019)
function MuteSoundFile(sound)
end

---Allows a Pandaren to choose a faction.
---@param factionIndex number - 1 to choose the Horde, 2 to choose the Alliance.
---@since Patch 5.0.4 (2012-08-28): Added.
function NeutralPlayerSelectFaction(factionIndex)
end

---Returns true if the account is considered "unhealthy" for players on Chinese realms.
---@return boolean isUnhealthy ? - 1 if the account is "unhealthy", nil if not.
---@since Hotfix (2020-02-05): Playtime now limited to 90 minutes daily between 08:00 and 22:00 local[2][3]
function NoPlayTime()
end

---Generates an error message saying you cannot do that while dead.
function NotWhileDeadError()
end

---Requests another player's inventory and talent info before inspecting.
---@param unit string UnitId - The unit to inspect.
---@since Patch 3.3.5 (2010-06-22): The server may throttle the amount of requests; no event fires when this happens.
function NotifyInspect(unit)
end

---Returns the number of flight paths on the taxi map.
---@return number numNodes - total number of flight points on the currently open taxi map; 0 if the taxi map is not open.
function NumTaxiNodes()
end

---Offers a petition to your target.
function OfferPetition()
end

---
function OpeningCinematic()
end

---Returns true if the account is considered "tired" for players on Chinese realms.
---@return boolean isTired ? - 1 if the account is "tired", nil if not. See details below for clarification. Returns nil for EU and US accounts.
function PartialPlayTime()
end

---Switches your pet to aggressive mode; does nothing.
---@since Patch 4.2.0 (2011-06-28): Aggressive replaced by Assist mode; this function remains, but performs no action.
function PetAggressiveMode()
end

---#protected - This can only be called from secure code.Use the /petassist macro command.
---@since Patch 4.2.0 (2011-06-28): Added; Assist mode replaces Aggressive mode.
function PetAssistMode()
end

---#protected - This can only be called from secure code.Use the /petattack slash command.
---@since Patch 2.0.1 (2006-12-05): Protected; requires a hardware event.
function PetAttack()
end

---Returns true if the pet can be abandoned.
---@return boolean canAbandon - true if the player's pet can be abandoned.
function PetCanBeAbandoned()
end

---#protected - This can only be called from secure code.
---@since Patch 8.3.0 (2020-01-14): Added.
function PetDefensiveAssistMode()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 2.0.1 (2006-12-05): Protected, requires a hardware event.
function PetDefensiveMode()
end

---
function PetDismiss()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 2.0.1 (2006-12-05): Protected, requires a hardware event.
function PetFollow()
end

---Returns true if player has a pet with an action bar.
---@return boolean hasActionBar - true if a pet action bar should be shown, false if the player has no pet (or the pet has no action bar)
function PetHasActionBar()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 2.0.1 (2006-12-05): Protected, requires a hardware event.
function PetPassiveMode()
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0.1; Fails silently if called from an insecure execution path in combat. Consider using /petpassive instead.
---@since Patch 2.0.1 (2006-12-05): Fails silently if called from a tainted execution path during combat lockdown.
function PetStopAttack()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 2.0.1 (2006-12-05): Protected, requires a hardware event.
function PetWait()
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.2
---@param slot number - The action slot to pick the action up from.
function PickupAction(slot)
end

---Picks up the bag from the specified slot, placing it in the cursor.
---@param slot number - InventorySlotID - the slot containing the bag.
function PickupBagFromSlot(slot)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 3.0.2
---@param type string - companion type, either "MOUNT" or "CRITTER".
---@param index number - index of the companion of the specified type to place on the cursor, ascending from 1.
---@since Patch 5.0.4 (2012-08-28): "CRITTER" pick-up broken.
function PickupCompanion(type, index)
end

---#nocombat - This cannot be called while in combat.
---@param slotId number InventorySlotId
function PickupInventoryItem(slotId)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.2
---@param name number |string - The position or name (case insensitive) of the macro in the macro window, from left to right and top to bottom. Slots 1-120 are used for general macros, and 121-138 for character-specific macros.
function PickupMacro(name)
end

---Places a merchant item onto the cursor. If the cursor already has an item, it will be sold.
---@param index number - The index of the item in the merchant's inventory.
---@since As of patch 2.3 using this function to sell stacks of items does not work, instead it fails silently.  Selling unstacked items work, so unstacking and selling items one by one is an alternative. Blizzard is aware of this issue: http://forums.worldofwarcraft.com/thread.html?topicId=2855994059#12
function PickupMerchantItem(index)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.2
---@param petActionSlot number - The pet action slot to pick the action up from (1-10).
function PickupPetAction(petActionSlot)
end

---Picks up a Combat Pet spell.
---@param spellID number 
function PickupPetSpell(spellID)
end

---Picks up an amount of money from the player onto the cursor.
---@param copper number - The amount of money, in copper, to place on the cursor.
function PickupPlayerMoney(copper)
end

---Places an amount of money from the player's trade offer onto the cursor.
---@param copper number - amount of money, in copper, to pick up.
function PickupTradeMoney(copper)
end

---Places an action onto into the specified action slot.
---@param slot number - The action slot to place the action into.
function PlaceAction(slot)
end

---Plays the specified sound file on loop to the "Music" sound channel.
---@param sound number |string - FileDataID of a game sound or file path to an addon sound.
---@return boolean willPlay - Seems to always return true even for invalid file paths or FileDataIDs.
---@since Patch 8.2.0 (2019-06-25): Dropped support for internal file paths and accepts FileDataIDs.
function PlayMusic(sound)
end

---Plays the specified sound by SoundKitID.
---@param soundKitID number - Sound Kit ID in SoundKitEntry.db2. Sounds used in FrameXML are defined in the SOUNDKIT table.
---@param channel string ? = SFX - The sound channel.
---@return boolean willPlay - true if the sound will be played, nil otherwise (prevented by a muted sound channel, for instance).
---@return number soundHandle - identifier for the queued playback.
---@since Patch 7.3.0 (2017-08-29): Changed. String-based input is not allowed. SoundKitID should be given while calling PlaySound(). This change is more like a replacement for PlaySoundKitID.
function PlaySound(soundKitID, channel)
end

---Plays the specified sound by FileDataID or addon file path.
---@param sound number |string - Either a FileDataID, or the path to a sound file from an addon.
The file must exist prior to logging in or reloading. Both .ogg and .mp3 formats are accepted.
---@return boolean willPlay - true if the sound will be played, nil otherwise (prevented by a muted sound channel, for instance).
---@return number soundHandle - identifier for the queued playback.
---@since Patch 8.2.0 (2019-06-25): Updated to accept FileDataIDs due to the removal of file paths.[3]
function PlaySoundFile(sound)
end

---
---@return boolean canTeleport 
function PlayerCanTeleport()
end

---
---@return number mainHandAttackPower 
---@return number offHandAttackPower 
---@return number rangedAttackPower 
---@return number baseAttackPower 
---@return number baseRangedAttackPower 
---@since Patch 11.0.5 (2024-10-22): Added baseAttackPower, baseRangedAttackPower return values.
function PlayerEffectiveAttackPower()
end

---Returns the timerunning season.
---@return number timerunningSeasonID ? - Returns 1 for WoW Remix: Mists of Pandaria, nil if not on a timerunning character.
function PlayerGetTimerunningSeasonID()
end

---Determines if player has a specific toy in their toybox
---@param itemId number - itemId of a toy.
---@return boolean hasToy - True if player has itemId in their toybox, false if not.
function PlayerHasToy(itemId)
end

---
---@return boolean playerIsInCombat 
function PlayerIsInCombat()
end

---
---@param unit string UnitToken
---@return boolean result 
function PlayerIsPVPInactive(unit)
end

---
---@return boolean vehicleHasComboPoints 
---@since Patch 8.1.0 (2018-12-11): Added.
function PlayerVehicleHasComboPoints()
end

---#protected - This can only be called from secure code.
function PortGraveyard()
end

---
---@param movieId number 
function PreloadMovie(movieId)
end

---#protected - This can only be called from secure code.This function will silently do nothing if called from an insecure execution path.
---@param description string - The description of the error being processed.
---@since Patch 10.0.0 (2022-10-25): Added description parameter.
function ProcessExceptionClient(description)
end

---Promotes a unit to group leader.
---@param unit string UnitToken - The unit to promote
function PromoteToLeader(unit)
end

---Places the item on the cursor into the player's backpack.
function PutItemInBackpack()
end

---Places the item on the cursor into the specified bag.
---@param inventoryID number ? : InventorySlotId - Values from CONTAINER_BAG_OFFSET + 1 to CONTAINER_BAG_OFFSET  + NUM_TOTAL_EQUIPPED_BAG_SLOTS correspond to the player's bag slots, right-to-left from the first bag after the backpack.
---@return boolean hadItem ? - True if the cursor had a item.
function PutItemInBag(inventoryID)
end

---Returns information about a cast sequence's next action.
function QueryCastSequence()
end

---Throws an error when the quest reward method doesn't work.
function QuestChooseRewardError()
end

---Returns whether the last-offered quest was automatically accepted.
---@return boolean isAutoAccepted - true if the last-offered quest was automatically accepted; false if the player has to accept it using AcceptQuest().
---@since Added in Patch 3.3.0
function QuestGetAutoAccept()
end

---Returns true if the offered quest is a daily quest.
---@return boolean isDaily - 1 if the offered quest is a daily, nil otherwise
function QuestIsDaily()
end

---
---@return boolean isFromArea 
function QuestIsFromAreaTrigger()
end

---Returns true if the offered quest is a weekly quest.
---@return boolean isWeekly 
---@since Patch 3.3.3 (2010-03-23): Added.
function QuestIsWeekly()
end

---Shares the current quest in the quest log with other players.
function QuestLogPushQuest()
end

---#protected - This can only be called from secure code.Use the /quit slash command.
---@since Patch 7.3.2 (2017-10-24): Protected.
function Quit()
end

---Performs a random roll between two values.
function RandomRoll()
end

---Declines a LFG invite and leaves the queue.
function RejectProposal()
end

---Removes the specified chat channel from a chat window.
---@param windowId number - index of the chat window/frame (ascending from 1) to remove the channel from.
---@param channelName string - name of the chat channel to remove from the frame.
function RemoveChatWindowChannel(windowId, channelName)
end

---Removes the specified chat message type from a chat window.
---@param index number - chat window index, ascending from 1.
---@param messageGroup string - message type the chat window should no longer receive, e.g. "EMOTE", "SAY", "RAID".
function RemoveChatWindowMessages(index, messageGroup)
end

---Removes a Keystone from the selected artifact.
---@return boolean keystoneRemoved - True if the keystone is successfully removed.
function RemoveItemFromArtifact()
end

---Renames the current petition.
---@param name string - The new name of the group being created by the petition
function RenamePetition(name)
end

---Repairs all equipped and inventory items.
---@param guildBankRepair boolean ? - true to use guild funds to repair, otherwise uses player funds.
---@since Patch 2.3.0 (2007-11-13): guildBankRepair argument added.
function RepairAllItems(guildBankRepair)
end

---Impeaches the current Guild Master.
---@since Patch 4.3.0 (2011-11-29): Added.
function ReplaceGuildMaster()
end

---Releases your ghost to the graveyard when dead.
function RepopMe()
end

---
---@param description string 
function ReportBug(description)
end

---
---@param unit string UnitToken
function ReportPlayerIsPVPAFK(unit)
end

---
---@param description string 
function ReportSuggestion(description)
end

---Requests the latest battlefield score data from the server.
function RequestBattlefieldScoreData()
end

---Requests the available instances of a battleground.
---@param index number - Index of the battleground type to request instance information for; valid indices start from 1 and go up to GetNumBattlegroundTypes().
function RequestBattlegroundInstanceInfo(index)
end

---Requests which instances the player is saved to.
function RequestRaidInfo()
end

---Requests information about battleground rewards.
---@since Patch 5.2.0 (2013-03-05): Added.
function RequestRandomBattlegroundInstanceInfo()
end

---Requests information about the player's rated PvP stats from the server.
---@since Patch 5.4.0 (2013-09-10): Added, replaces RequestRatedBattlegroundInfo and RequestRatedArenaInfo.
function RequestRatedInfo()
end

---Requests a summary of time played.
function RequestTimePlayed()
end

---
function ResetCPUUsage()
end

---
function ResetCursor()
end

---Resets all instances for the character.
function ResetInstances()
end

---Starts with the first tutorial again
function ResetTutorials()
end

---
---@param resistance number 
---@param casterLevel number 
---@return number resistance 
function ResistancePercent(resistance, casterLevel)
end

---
---@param acceptLock boolean 
function RespondInstanceLock(acceptLock)
end

---Restarts the graphics engine.
function RestartGx()
end

---
---@return string name 
function ResurrectGetOfferer()
end

---
---@return boolean result 
function ResurrectHasSickness()
end

---
---@return boolean result 
function ResurrectHasTimer()
end

---Resurrects when the player is standing near its corpse.
function RetrieveCorpse()
end

---Rolls or passes on loot.
---@param rollID number - The number increases with every roll you have in a party. Maximum value is unknown.
---@param rollType number ? - 0 or nil to pass, 1 to roll Need, 2 to roll Greed, or 3 to roll Disenchant.
function RollOnLoot(rollID, rollType)
end

---Executes a key binding.
---@param command string - Name of the key binding to be executed
---@param up string ? - If "up", the binding is run as if the key was released.
function RunBinding(command, up)
end

---#protected - This can only be called from secure code.Use the "macro" action type of SecureActionButtonTemplate.
---@param name number |string - the position or name of the macro. Starting at the top left macro with 1, counting from left to right and top to bottom. The IDs of the first page (all characters) range from 1-36, the second page 37-54.
---@since Patch 2.0.1 (2006-12-05): Protected.
function RunMacro(name)
end

---Executes a string of Lua code.
---@param script string - The code which is to be executed.
function RunScript(script)
end

---Saves account or character specific key bindings.
---@param which number - Whether the key bindings should be saved as account or character specific.[1]
---@since Patch 2.5.1 (2021-05-18): Changed to SaveBindings()
function SaveBindings(which)
end

---Saves a camera angle. The last position loaded is stored in the CVar cameraView.
---@param viewIndex number - The index (2-5) to save the camera angle to. (1 is reserved for first person view)
function SaveView(viewIndex)
end

---
function Screenshot()
end

---Returns how many players listed in raid browser for selected LFG id.
---@return number numResults - Amount of players listed in Raid Browser (displayed?)
---@return number totalResults - Total amount of players listed in Raid Browser
function SearchLFGGetNumResults()
end

---Returns information about the party player listed in raid browser.
---@param index number - Index of the player to query, ascending from 1 to totalResults return value from SearchLFGGetNumResults.
---@param partyIndex number - Index of the party player to query, ascending from 1 to partyMembers return value from SearchLFGGetResults.
---@return string name - Name of the player.
---@return number level - Player level.
---@return string areaName - Player's area.
---@return string comment - Player's custom comment.
---@return number bossKills - Sum of all boss kills on normal mode
---@return number gearRating - Some weird value only blizzard has clue about
function SearchLFGGetPartyResults(index, partyIndex)
end

---Returns information about the player listed in raid browser.
---@param index number - Index of the player to query, ascending from 1 to totalResults return value from SearchLFGGetNumResults.
---@return string name - Name of the player.
---@return number level - Player level.
---@return string areaName - Player's area.
---@return string className - Player's class.
---@return string comment - Player's custom comment.
---@return number partyMembers - Count of players in the group.
---@return number bossKills - Sum of all boss kills on normal mode
---@return number gearRating - Some weird value only blizzard has clue about
function SearchLFGGetResults(index)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param typeID number - LFG typeid
---@param lfgID number - ID of LFG dungeon
function SearchLFGJoin(typeID, lfgID)
end

---Evaluates macro conditionals without the need of a macro.
---@param options string - a secure command options string to be parsed, e.g. "[mod:alt] ALT is held down; [mod:ctrl] CTRL is held down, but ALT is not; neither ALT nor CTRL is held down".
---@return string result - value of the first satisfied clause in options, or no return (nil) if none of the conditions in options are satisfied.
---@return string target - the target of the first satisfied clause in options (using either the target=... or @... conditional), nil if the clause does not explicitly specify a target, or no return (nil) if none of the conditions in options are satisfied.
function SecureCmdOptionParse(options)
end

---Notifies the server that a trainer service has been selected.
---@param index number - Index of the trainer service being selected. Note that indices are affected by the trainer filter. (See GetTrainerServiceTypeFilter and SetTrainerServiceTypeFilter.)
function SelectTrainerService(index)
end

---Returns the realm name that will be used in Recruit-a-Friend invitations.
---@return string selectedRealmName - realm name, e.g. "Die Aldor".
---@since Patch 5.4.1 (2013-10-29): Added.
function SelectedRealmName()
end

---
function SellCursorItem()
end

---#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.
---@param recipient string - Intended recipient of the mail.
---@param subject string - Subject of the mail. Cannot be an empty string or nil, but may be whitespace, e.g. " "
---@param body string ? - Body of the mail.
---@since Patch 9.1.5 (2021-11-02): Protected when called from a (macro) script.
function SendMail(recipient, subject, body)
end

---
---@param response Enum.SubscriptionInterstitialResponseType 
---@since Patch 9.0.1 (2020-10-13): Added.
function SendSubscriptionInterstitialResponse(response)
end

---Prints a yellow CHAT_MSG_SYSTEM message.
---@param msg string - The message to be sent. Fires CHAT_MSG_SYSTEM.
function SendSystemMessage(msg)
end

---Sets the unit to be compared to.
---@param unit string UnitId
---@return boolean success - Returns true/false depending on whether the unit is valid.
function SetAchievementComparisonUnit(unit)
end

---Starts a search for achievements containing the specified text.
---@param searchText string - Text to search for in the achievements.
---@return boolean searchFinished - true if the search is finished, false otherwise.
---@since Patch 7.0.3 (2016-07-19): Added.
function SetAchievementSearchString(searchText)
end

---Sets the visible state for each action bar.
---@param bar1 boolean - true if the left-hand bottom action bar is to be shown, false otherwise.
---@param bar2 boolean - true if the right-hand bottom action bar is to be shown, false otherwise.
---@param bar3 boolean - true if the first (outer) right side action bar is to be shown, false otherwise.
---@param bar4 boolean - true if the second (inner) right side action bar is to be shown, false otherwise.
---@param bar5 boolean 
---@param bar6 boolean 
---@param bar7 boolean 
---@param alwaysShow string - true if the bars are always shown, false otherwise.
function SetActionBarToggles(bar1, bar2, bar3, bar4, bar5, bar6, bar7, alwaysShow)
end

---
---@param checkboxFrame CheckButton 
---@param actionSlot number 
---@param cooldownFrame Cooldown 
function SetActionUIButton(checkboxFrame, actionSlot, cooldownFrame)
end

---#protected - This can only be called from secure code.
---@param allowed boolean ? = false
function SetAllowDangerousScripts(allowed)
end

---
---@param allow boolean ? = false
function SetAllowLowLevelRaid(allow)
end

---Sets whether guild invites should be automatically declined.
---@param decline boolean - True if guild invitations should be automatically declined, false if invitations should be shown to the user.
function SetAutoDeclineGuildInvites(decline)
end

---Sets the faction to show on the battlefield scoreboard.
---@param faction number - nil = All, 0 = Horde, 1 = Alliance
function SetBattlefieldScoreFaction(faction)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0; Snippets executed by SecureHandlers may alter [override] bindings in-combat.
---@param key string - Any binding string accepted by World of Warcraft. For example: "ALT-CTRL-F", "SHIFT-T", "W", "BUTTON4".
---@param command string ? - Any name attribute value of a Bindings.xml-defined binding, or an action command string, or nil to unbind all bindings from key. For example:
"SITORSTAND" : a Bindings.xml-defined binding to toggle between sitting and standing
"CLICK PlayerFrame:LeftButton" : Fire a left-click on the PlayerFrame.
"SPELL Bloodrage" :  Cast Bloodrage.
"ITEM Hearthstone" : Use  [Hearthstone]
"MACRO Foo" : Run a macro called "Foo"
"MACRO 1" : Run a macro with index 1.
---@return boolean ok - 1 if the binding has been changed successfully, nil otherwise.
function SetBinding(key, command)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0; Snippets executed by SecureHandlers may alter [override] bindings while in combat.
---@param key string - Any binding string accepted by World of Warcraft. For example: "ALT-CTRL-F", "SHIFT-T", "W", "BUTTON4".
---@param buttonName string - Name of the button you wish to click.
---@param button string - Value of the button argument you wish to pass to the OnClick handler with the click; "LeftButton" by default.
---@return boolean ok - 1 if the binding has been changed successfully, nil otherwise.
function SetBindingClick(key, buttonName, button)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0; Snippets executed by SecureHandlers may alter [override] bindings in-combat.
---@param key string - Any binding string accepted by World of Warcraft. For example: "ALT-CTRL-F", "SHIFT-T", "W", "BUTTON4".
---@param item string - Item name (or item string) you want the binding to use. For example: "Hearthstone", "item:6948"
---@return boolean ok - 1 if the binding has been changed successfully, nil otherwise.
function SetBindingItem(key, item)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0; Snippets executed by SecureHandlers may alter [override] bindings in-combat.
---@param key string - Any binding string accepted by World of Warcraft. For example: "ALT-CTRL-F", "SHIFT-T", "W", "BUTTON4".
---@param name number |string - Id or name of the macro you wish to execute.
---@return boolean success - true if the binding has been changed successfully, false otherwise.
function SetBindingMacro(key, name)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0; Snippets executed by SecureHandlers may alter [override] bindings in-combat.
---@param key string - Any binding string accepted by World of Warcraft. For example: "ALT-CTRL-F", "SHIFT-T", "W", "BUTTON4".
---@param spell string - Name of the spell you wish to cast when the binding is pressed.
---@return boolean ok - 1 if the binding has been changed successfully, nil otherwise.
function SetBindingSpell(key, spell)
end

---
---@param cemetaryID number 
function SetCemeteryPreference(cemetaryID)
end

---Sets the channel owner.
---@param channel string - channel name to be changed
---@param newowner string - the new owner of the channel
function SetChannelOwner(channel, newowner)
end

---Changes the password of the current channel.
---@param channelName string - The name of the channel.
---@param password string - The password to assign to the channel.
function SetChannelPassword(channelName, password)
end

---Sets the console key (normally ~).
---@param key string - The character to bind to opening the console overlay, or nil to disable the console binding.
function SetConsoleKey(key)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param titleId number TitleId - ID of the title you want to set. The identifiers are global and therefore do not depend on which titles you have learned. 0, invalid or unlearned IDs clear your title.
function SetCurrentTitle(titleId)
end

---Sets the current cursor texture.
---@param cursor string |nil - cursor to switch to; either a built-in cursor identifier (like "ATTACK_CURSOR"), path to a cursor texture (e.g. "Interface/Cursor/Taxi"), or explicitly nil to reset to a default cursor.
---@return boolean changed ? - Seems to return false when the given cursor string argument was different from the previous one, otherwise returns true.
---@since Patch 3.1.0 (2009-04-14): Now always returns 1.
function SetCursor(cursor)
end

---
---@param item ItemLocation 🔗
function SetCursorHoveredItem(item)
end

---
---@param enabled boolean 
function SetCursorHoveredItemTradeItem(enabled)
end

---
---@param itemInfo number |string : ItemInfo
---@param cursorType Enum.UICursorType 
function SetCursorVirtualItem(itemInfo, cursorType)
end

---Sets the player's dungeon difficulty.
---@param difficultyIndex number 1 → 5 Player
2 → 5 Player (Heroic)
8 → Challenge Mode
---@since Patch 5.0.4 (2012-08-28): Renamed from SetDungeonDifficulty(difficultyIndex). Challenge Mode added to index.
function SetDungeonDifficultyID(difficultyIndex)
end

---
---@param height number ?
function SetErrorCallstackHeight(height)
end

---
---@param enabled boolean 
function SetEuropeanNumbers(enabled)
end

---
---@param id number ?
function SetFocusedAchievement(id)
end

---Sets the name and icon of a guild bank tab.
---@param tab number - Bank Tab to edit.
---@param name string - New tab name.
---@param icon number - FileID of the new icon texture.
function SetGuildBankTabInfo(tab, name, icon)
end

---Modifies the permissions for a guild bank tab.
---@param tab number - Bank Tab to edit.
---@param index number - Index of Permission to edit.
---@param enabled boolean - true or false to Enable or Disable permission.
function SetGuildBankTabPermissions(tab, index, enabled)
end

---Modifies info text for a tab.
---@param tab number - Bank Tab to edit.
---@param infoText string - Text to set, at most 2047 characters
function SetGuildBankText(tab, infoText)
end

---Sets the gold withdraw limit for the guild bank.
---@param amount number - the amount of gold to withdraw per day
function SetGuildBankWithdrawGoldLimit(amount)
end

---Sets the guild info text.
---@param text string - The text to set as the guild info.
function SetGuildInfoText(text)
end

---Selects a guild member in the roster.
---@param index number - The index of the current selected guild member in the guild roster or 0 to clear selection.
function SetGuildRosterSelection(index)
end

---Sets the show offline guild members flag.
---@param enabled boolean - True includes all guild members; false filters out offline guild members.
function SetGuildRosterShowOffline(enabled)
end

---Allows nameplates to be shown even while the UI is hidden.
---@param visible boolean 
function SetInWorldUIVisibility(visible)
end

---Sets the comment in the LFG browser.
---@param comment string - The comment you want to use in the LFG interface
function SetLFGComment(comment)
end

---
---@param difficultyID number 
---@param force boolean ? = false
function SetLegacyRaidDifficultyID(difficultyID, force)
end

---Sets the player's loot specialization.
---@param specID number SpecializationID - The specialization to receive loot for, regardless of current specialization; or 0 to receive loot for the current specialization.
---@since Patch 5.3.0 (2013-05-21): Added.
function SetLootSpecialization(specID)
end

---Sets the loot quality threshold for group/master loot.
---@param threshold number - The loot quality to start using the current loot method with.
function SetLootThreshold(threshold)
end

---Changes the spell used for dynamic feedback for a macro.
---@param name number |string - Index of the macro, using the values 1-36 for the first page and 37-54 for the second; or the name of the macro.
---@param spell string - Localized name of a spell to assign.
---@param target string UnitToken - The unit to assign (for range indication).
function SetMacroSpell(name, spell, target)
end

---Assigns the given modifier key to the given action.
---@param action  AUTOLOOTTOGGLE, CHATLINK, COMPAREITEMS, DRESSUP, FOCUSCAST, OPENALLBAGS, PICKUPACTION, QUESTWATCHTOGGLE, SELFCAST, SHOWITEMFLYOUT, SOCKETITEM, SPLITSTACK, STICKYCAMERA, TOKENWATCHTOGGLE
---@param key  ALT, CTRL, SHIFT, NONE
function SetModifiedClick(action, key)
end

---#protected - This can only be called from secure code.
---@since Patch 8.2.0 (2019-06-25): Added.
function SetMoveEnabled()
end

---Sets the totem spell for a specific totem bar slot.
---@param actionID number - The totem bar slot number.
function SetMultiCastSpell(actionID)
end

---Sets whether to automatically pass on all loot.
---@param optOut boolean - 1 to make the player pass on all loot, nil otherwise.
function SetOptOutOfLoot(optOut)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0
---@param owner Frame🔗 - The frame this binding "belongs" to; this can later be used to clear all override bindings belonging to a particular frame.
---@param isPriority boolean - true if this is a priority binding, false otherwise. Both types of override bindings take precedence over normal bindings.
---@param key string - Binding to bind the command to. For example, "Q", "ALT-Q", "ALT-CTRL-SHIFT-Q", "BUTTON5"
---@param command string - Any name attribute value of a Bindings.xml-defined binding, or an action command string; nil to remove an override binding. For example:
"SITORSTAND" : a Bindings.xml-defined binding to toggle between sitting and standing
"CLICK PlayerFrame:LeftButton" : Fire a left-click on the PlayerFrame.
"SPELL Bloodrage" :  Cast Bloodrage.
"ITEM Hearthstone" : Use  [Hearthstone]
"MACRO Foo" : Run a macro called "Foo"
"MACRO 1" : Run a macro with index 1.
function SetOverrideBinding(owner, isPriority, key, command)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0
---@param owner Frame🔗 - The frame this binding "belongs" to; this can later be used to clear all override bindings belonging to a particular frame.
---@param isPriority boolean - true if this is a priority binding, false otherwise. Both types of override bindings take precedence over normal bindings.
---@param key string - Binding to bind the command to. For example, "Q", "ALT-Q", "ALT-CTRL-SHIFT-Q", "BUTTON5"
---@param buttonName string - Name of the button widget this binding should fire a click event for.
---@param mouseClick string ? - Mouse button name argument passed to the OnClick handlers.
function SetOverrideBindingClick(owner, isPriority, key, buttonName, mouseClick)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0
---@param owner Frame🔗 - The frame this binding "belongs" to; this can later be used to clear all override bindings belonging to a particular frame.
---@param isPriority boolean - true if this is a priority binding, false otherwise. Both types of override bindings take precedence over normal bindings.
---@param key string - Binding to bind the command to. For example, "Q", "ALT-Q", "ALT-CTRL-SHIFT-Q", "BUTTON5"
---@param item string - Name or item link of the item to use when binding is triggered.
function SetOverrideBindingItem(owner, isPriority, key, item)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0
---@param owner Frame🔗 - The frame this binding "belongs" to; this can later be used to clear all override bindings belonging to a particular frame.
---@param isPriority boolean - true if this is a priority binding, false otherwise. Both types of override bindings take precedence over normal bindings.
---@param key string - Binding to bind the command to. For example, "Q", "ALT-Q", "ALT-CTRL-SHIFT-Q", "BUTTON5"
---@param macro string - Name or index of the macro to run.
function SetOverrideBindingMacro(owner, isPriority, key, macro)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 2.0
---@param owner Frame🔗 - The frame this binding "belongs" to; this can later be used to clear all override bindings belonging to a particular frame.
---@param isPriority boolean - true if this is a priority binding, false otherwise. Both types of override bindings take precedence over normal bindings.
---@param key string - Binding to bind the command to. For example, "Q", "ALT-Q", "ALT-CTRL-SHIFT-Q", "BUTTON5"
---@param spell string - Name of the spell you want to cast when this binding is triggered.
function SetOverrideBindingSpell(owner, isPriority, key, spell)
end

---Sets which roles the player is willing to perform in PvP battlegrounds.
---@param tank boolean - true if the player is willing to tank, false otherwise.
---@param healer boolean - true if the player is willing to heal, false otherwise.
---@param dps boolean - true if the player is willing to deal damage, false otherwise.
---@since Patch 5.3.0 (2013-05-21): Added.
function SetPVPRoles(tank, healer, dps)
end

---Sets a texture to a unit's 2D portrait.
---@param textureObject Texture 🔗
---@param unitToken string UnitToken
---@param disableMasking boolean ? = false
---@since Patch 10.0.0 (2022-10-25): Added disableMasking argument.
function SetPortraitTexture(textureObject, unitToken, disableMasking)
end

---
---@param textureObject widget Texture
---@param creatureDisplayID number CreatureDisplayID
---@since Patch 8.0.1 (2018-07-17): Added.
function SetPortraitTextureFromCreatureDisplayID(textureObject, creatureDisplayID)
end

---Applies a circular mask to a texture, making it resemble a portrait.
---@param texture Texture🔗 
---@param path string |number : fileID
---@since Patch 10.2.0 (2023-11-07): The texture parameter must now be a texture object. Previously, it could be a string that named a global texture object.
function SetPortraitToTexture(texture, path)
end

---Sets the raid difficulty.
---@param difficultyIndex number 3 → 10 Player
4 → 25 Player
5 → 10 Player (Heroic)
6 → 25 Player (Heroic)
14 → Normal
15 → Heroic
16 → Mythic
---@since Patch 5.2.0 (2013-03-05): Renamed from SetRaidDifficulty
function SetRaidDifficultyID(difficultyIndex)
end

---#nocombat - This cannot be called while in combat.Restricted since patch 4.0.1
---@param index number - ID of raidmember (1 .. MAX_RAID_MEMBERS)
---@param subgroup number - raid subgroup number (1 .. 8)
function SetRaidSubgroup(index, subgroup)
end

---Assigns a raid target icon to a unit.
---@param unit string UnitId
---@param index number - Raid target index to assign to the specified unit
---@since Patch 9.2.0 (2022-02-22): Removed invisible IDs 9 to 18.
function SetRaidTarget(unit, index)
end

---Sets or clears a Raidicon on top of a unit.
function SetRaidTargetIcon()
end

---Sets the selected artifact to an archaeology race.
---@param raceIndex number - Index of the race to select.
---@param index number ?
function SetSelectedArtifact(raceIndex, index)
end

---Sets whether or not the send mail UI is shown.
---@param shown boolean 
function SetSendMailShowing(shown)
end

---
---@param enable boolean ? = false
function SetTaxiBenchmarkMode(enable)
end

---Sets the texture to use for the taxi map.
---@param texture string - The path to the texture to use for the taxi map.
function SetTaxiMap(texture)
end

---Sets the status of a skill filter in the trainer window.
---@param type string - filter to set the status for:
"available" (can learn)
"unavailable" (can't learn)
"used" (already known)
---@since Patch 6.0.2 (2014-10-14): Gained "exclusive" return.
function SetTrainerServiceTypeFilter(type)
end

---#protected - This can only be called from secure code.
---@since Patch 8.2.0 (2019-06-25): Added.
function SetTurnEnabled()
end

---
---@param visible boolean 
function SetUIVisibility(visible)
end

---
---@param textureObject Unknown 
---@param unit string 
---@param style Enum.CursorStyle ?
---@return boolean hasCursor 
function SetUnitCursorTexture(textureObject, unit, style)
end

---Sets the camera to a predefined camera position (1-5).
---@param viewIndex number - The view index (1-5) to return to (1 is always first person, and cannot be saved with SaveView)
function SetView(viewIndex)
end

---Sizes a frame to take up the entire screen regardless of screen resolution.
---@param frame Frame🔗 - The frame to manipulate.
---@since Patch 1.12.0 (2006-08-22): Added. Replaces SetupWorldMapScale()
function SetupFullscreenScale(frame)
end

---
---@return boolean show 
---@since Patch 8.2.0 (2019-06-25): Added.
function ShouldShowIslandsWeeklyPOI()
end

---
---@return boolean show 
---@since Patch 8.2.0 (2019-06-25): Added.
function ShouldShowSpecialSplashScreen()
end

---Shows the completion dialog for a complete, auto-completable quest.
---@param questID number - id of the quest which is complete and auto-completable.
---@since Patch 4.0.1 (2010-10-12): Added.
function ShowQuestComplete(questID)
end

---Puts the cursor in repair mode.
function ShowRepairCursor()
end

---Signs the currently viewed petition.
function SignPetition()
end

---#protected - This can only be called from secure code.Use the SIT/STAND emotes, or /sit, /stand slash commands.
---@since Patch 2.1.0 (2007-05-22): Added; SitOrStand split into DescendStop and this function.
function SitStandOrDescendStart()
end

---Adds a keystone to the selected archaeology artifact.
---@return boolean keystoneAdded - True if the keystone is successfully added.
function SocketItemToArtifact()
end

---
function SolveArtifact()
end

---
---@return boolean unk 
function SortBGList()
end

---Sorts the guild roster on a certain column.
---@param sortType string - The column for sorting. Chose from: {"name", "rank", "note", "online", "zone", "level",  "class"}
function SortGuildRoster(sortType)
end

---Returns true if the spell awaiting target selection can be cast on the unit.
---@param unit string UnitToken - The unit to check.
---@return boolean canTarget - Whether the spell can target the given unit.
function SpellCanTargetUnit(unit)
end

---Checks if the spell should be visible, depending on spellId and raid combat status
---@param spellId number - The ID of the spell to check
---@param visType string - either "RAID_INCOMBAT" if in combat, "RAID_OUTOFCOMBAT" otherwise
---@return boolean hasCustom - whether the spell visibility should be customized, if false it means always display
---@return boolean alwaysShowMine - whether to show the spell if cast by the player/player's pet/vehicle (e.g. the Paladin Forbearance debuff)
---@return boolean showForMySpec - whether to show the spell for the current specialization of the player
function SpellGetVisibilityInfo(spellId, visType)
end

---Returns true if a spell is about to be cast and is waiting for the player to select a target.
---@return boolean isTargeting - 1 if a spell is about to be cast, waiting for the player to select a target; nil otherwise.
function SpellIsTargeting()
end

---#protected - This can only be called from secure code.Use the /stopcasting slash command.
---@return boolean stopped - 1 if a spell was being cast, nil otherwise.
---@since Patch 2.0.1 (2006-12-05): Protected.
function SpellStopCasting()
end

---#protected - This can only be called from secure code.Use the "stop" action type of SecureActionButtonTemplate or the /stopspelltarget slash command.
---@since Patch 2.0.1 (2006-12-05): Protected.
function SpellStopTargeting()
end

---#protected - This can only be called from secure code.Use the "target" action type of SecureActionButtonTemplate.
---@param unit string UnitToken - The unit you wish to cast the spell on.
---@since Patch 2.0.1 (2006-12-05): Protected.
function SpellTargetUnit(unit)
end

---
---@return boolean result 
function SplashFrameCanBeShown()
end

---
---@param name string ? = 0
---@param exactMatch boolean ? = false
function StartAttack(name, exactMatch)
end

---Challenges the specified player to a duel.
---@param unit string UnitId - The unit id of the unit.
---@param name string - The name of the unit.
---@param exactMatch boolean ? - true to check only units whose name exactly matches the name given; false to allow partial matches.
---@since Patch 1.0.0 (2004-10-08): Added StartDuel()[1] and StartDuelUnit()[2].
function StartDuel(unit, name, exactMatch)
end

---
function StopAttack()
end

---
function StopCinematic()
end

---Stops the currently playing music.
function StopMusic()
end

---Stops playing the specified sound.
---@param soundHandle number - Playing sound handle, as returned by PlaySound or PlaySoundFile.
---@param fadeoutTime number ? - In milliseconds.
---@since Patch 5.0.4 (2012-08-28): Added.
function StopSound(soundHandle, fadeoutTime)
end

---#protected - This can only be called from secure code.#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 2.0.1 (2006-12-05): Protected.
function StrafeLeftStart()
end

---#protected - This can only be called from secure code.#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 2.0.1 (2006-12-05): Protected.
function StrafeLeftStop()
end

---#protected - This can only be called from secure code.#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 2.0.1 (2006-12-05): Protected.
function StrafeRightStart()
end

---#protected - This can only be called from secure code.#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 2.0.1 (2006-12-05): Protected.
function StrafeRightStop()
end

---Strips text of UI escape sequence markup.
---@param text string - The text to be stripped of markup.
---@param maintainColor boolean ? - If true, preserve color escape sequences.
---@param maintainBrackets boolean ?
---@param stripNewlines boolean ? - If true, strip all line break sequences.
---@param maintainAtlases boolean ? - If true, preserve atlas texture escape sequences.
---@return string stripped - The stripped text.
---@since Patch 10.1.0 (2023-05-02): Added.
function StripHyperlinks(text, maintainColor, maintainBrackets, stripNewlines, maintainAtlases)
end

---#protected - This can only be called from secure code.
function Stuck()
end

---No longer does anything.
---@since Patch 5.0.4 (2012-08-28): No longer functional; fires UI_ERROR_MESSAGE instead of summoning a random companion.
function SummonRandomCritter()
end

---
---@return boolean supportsClipCursor 
function SupportsClipCursor()
end

---#nocombat - This cannot be called while in combat.Restricted since patch 4.0.1
---@param index1 number - ID of first raid member (1 to MAX_RAID_MEMBERS)
---@param index2 number - ID of second raid member (1 to MAX_RAID_MEMBERS)
---@since Patch 4.0.1 (2010-10-12): Protected.
function SwapRaidSubgroup(index1, index2)
end

---Takes the attached item from the mailbox message.
---@param messageIndex number - the index of the mailbox message you want to take the item attachment from.
---@param attachIndex number - The index of the item to take (1-ATTACHMENTS_MAX_RECEIVE(16))
function TakeInboxItem(messageIndex, attachIndex)
end

---Take the attached money from the mailbox message at index.
---@param index number - a number representing a message in the inbox
function TakeInboxMoney(index)
end

---Travels to the specified flight path node.
---@param index number - Taxi node index to begin travelling to, ascending from 1 to NumTaxiNodes().
function TakeTaxiNode(index)
end

---
---@param facing number 
---@param coneAngle number ?
function TargetDirectionEnemy(facing, coneAngle)
end

---
function TargetDirectionFinished()
end

---
---@param facing number 
---@param coneAngle number ?
function TargetDirectionFriend(facing, coneAngle)
end

---#protected - This can only be called from secure code.Use the /targetlastenemy slash command.
---@since Patch 2.0.1 (2006-12-05): Protected.
function TargetLastEnemy()
end

---
function TargetLastFriend()
end

---#protected - This can only be called from secure code.Use the /targetlasttarget slash command.
---@since Patch 2.0.1 (2006-12-05): Protected.
function TargetLastTarget()
end

---
---@param reverse boolean ? = false
function TargetNearest(reverse)
end

---#protected - This can only be called from secure code.Use the /targetenemy slash command.
---@param reverse boolean - true to cycle backwards; false to cycle forwards.
---@since Patch 2.0.1 (2006-12-05): Protected.
function TargetNearestEnemy(reverse)
end

---
---@param reverse boolean ? = false
function TargetNearestEnemyPlayer(reverse)
end

---#protected - This can only be called from secure code.Use the /targetfriend slash command.
---@since Patch 2.0.1 (2006-12-05): Protected.
function TargetNearestFriend()
end

---
---@param reverse boolean ? = false
function TargetNearestFriendPlayer(reverse)
end

---
---@param reverse boolean ? = false
function TargetNearestPartyMember(reverse)
end

---
---@param reverse boolean ? = false
function TargetNearestRaidMember(reverse)
end

---
function TargetPriorityHighlightEnd()
end

---
---@param useStartDelay boolean ? = false
function TargetPriorityHighlightStart(useStartDelay)
end

---
function TargetToggle()
end

---
---@param slot number 
function TargetTotem(slot)
end

---#protected - This can only be called from secure code.Use SecureActionButtonTemplate's "target" action type, or the /target slash command.
---@param name string ?
---@param exactMatch boolean ? = false
---@since Patch 2.0.1 (2006-12-05): Protected.
function TargetUnit(name, exactMatch)
end

---Returns the horizontal position of the destination node of a given route to the destination.
---@param destinationIndex number ? - The final destination taxi node.
---@param routeIndex number ? - The index of the route to get the source from.
---@return number dX - The horizontal position of the destination node for the route.
function TaxiGetDestX(destinationIndex, routeIndex)
end

---Returns the vertical position of the destination node of a given route to the destination.
---@param destinationIndex number ? - The final destination taxi node.
---@param routeIndex number ? - The index of the route to get the source from.
---@return number dY - The vertical position of the destination node for the route.
function TaxiGetDestY(destinationIndex, routeIndex)
end

---Returns the horizontal position of the source node of a given route to the destination.
---@param destinationIndex number ? - The final destination taxi node.
---@param routeIndex number ? - The index of the route to get the source from.
---@return number sX - The horizontal position of the source node.
function TaxiGetSrcX(destinationIndex, routeIndex)
end

---Returns the vertical position of the source node of a given route to the destination.
---@param destinationIndex number ? - The final destination taxi node.
---@param routeIndex number ? - The index of the route to get the source from.
---@return number sY - The vertical position of the source node.
function TaxiGetSrcY(destinationIndex, routeIndex)
end

---Returns the cost of the flight path in copper.
---@param slot number - 1 ascending to NumTaxiNodes(), out of bound numbers triggers lua error.
---@return number cost - returns the cost in copper, 0 if destination is undiscovered, free or current node.
function TaxiNodeCost(slot)
end

---Returns the type of a flight path node.
---@param index number - Taxi map node index, ascending from 1 to NumTaxiNodes().
---@return string type - "CURRENT" for the player's current position, "REACHABLE" for nodes that can be travelled to, "DISTANT" for nodes that can't be travelled to, and "NONE" if the index is out of bounds.
function TaxiNodeGetType(index)
end

---Returns the name of a flight path node.
---@param index number - Index of the taxi map node, ascending from 1 to NumTaxiNodes()
---@return string name - name of the specified flight point, or "INVALID" if the index is out of bounds.
function TaxiNodeName(index)
end

---Returns the position of a flight point on the taxi map.
---@param index number - index of a flight point between 1 and NumTaxiNodes()
---@return number x - Horizontal coordinate of the taxi note (as a proportion of the taxi map's width; 0 = left edge, 1 = right edge)
---@return number y - Vertical coordinate of the taxi note (as a proportion of the taxi map's width; 0 = bottom edge, 1 = top edge)
function TaxiNodePosition(index)
end

---Signals the client that an offer to resurrect the player has expired.
---@since Patch 5.4.0 (2013-09-10): Added.
function TimeoutResurrect()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 2.0.1 (2006-12-05): Protected.
function ToggleAutoRun()
end

---Toggles the FPS meter, the same as hitting CTRL+R with default keybindings.
function ToggleFramerate()
end

---#protected - This can only be called from secure code.#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 2.0.1 (2006-12-05): Protected.
function ToggleRun()
end

---
---@return boolean enabled 
function ToggleSelfHighlight()
end

---Toggles sheathed or unsheathed weapons.
function ToggleSheath()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param startTime number - Begin turning left at this time, per GetTime * 1000.
---@since Patch 2.0.1 (2006-12-05): Protected.
function TurnLeftStart(startTime)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 2.0.1 (2006-12-05): Protected.
function TurnLeftStop()
end

---#protected - This can only be called from secure code.
---@since Patch 2.0.1 (2006-12-05): Protected.
function TurnOrActionStart()
end

---#protected - This can only be called from secure code.
---@since Patch 2.0.1 (2006-12-05): Protected.
function TurnOrActionStop()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param startTime number - Begin turning right at this time, per GetTime * 1000
---@since Patch 2.0.1 (2006-12-05): Protected.
function TurnRightStart(startTime)
end

---#protected - This can only be called from secure code.#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 2.0.1 (2006-12-05): Protected.
function TurnRightStop()
end

---Functionally similar to this:
---@param index  Integer - The index of the AddOn in the user's AddOn list. Note that you cannot access Blizzard-provided AddOns through this mechanism.
---@param addonName  String - The name of the addon you want to load.
---@return  loaded Flag - Indicates if the AddOn was loaded, 1 if it is, nil if it is not.
function UIParentLoadAddOn(index, addonName)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param name string - Name of the player to remove from group. When removing cross-server players, it is important to include the server name: "Ygramul-Emerald Dream".
---@param reason string ? - Used when initiating a kick vote against the player.
function UninviteUnit(name, reason)
end

---Returns true if the unit is in combat.
---@param unit string UnitToken - The unit to check.
---@return boolean affectingCombat - Returns true if the unit is in combat or has aggro, false otherwise.
function UnitAffectingCombat(unit)
end

---
---@param unit string UnitId
---@return boolean isAlliedRace 
---@return boolean hasHeritageArmorUnlocked 
---@since Patch 7.3.5 (2018-01-16): Added.
function UnitAlliedRaceInfo(unit)
end

---Returns the armor stats for the unit.
---@param unit string UnitToken - Only works for "player" and "pet". Works for "target" with Hunter's Beast Lore.
---@return number base - The unit's base armor.
---@return number effectiveArmor - The unit's effective armor.
---@return number armor 
function UnitArmor(unit)
end

---Returns the unit's melee attack power and modifiers.
---@param unit string UnitToken - The unit to get information from. (Does not work for "target" - Possibly only "player" and "pet")
---@return number base - The unit's base attack power
---@return number posBuff - The total effect of positive buffs to attack power.
---@return number negBuff - The total effect of negative buffs to the attack power (a negative number)
function UnitAttackPower(unit)
end

---Returns the unit's melee attack speed for each hand.
---@param unit string UnitToken - The unit to get information from. (Verified for "player" and "target")
---@return number mainSpeed - The unit's base main hand attack speed (seconds)
---@return number offSpeed - The unit's offhand attack speed (seconds) - nil if the unit has no offhand weapon.
function UnitAttackSpeed(unit)
end

---Returns the level of a wild battle pet or tamer battle pet.
---@param unit string UnitId
---@return integer level 
function UnitBattlePetLevel(unit)
end

---Returns the battle pet species ID of a specified unit.
---@param unit string UnitId - The unit to return the species ID of.
---@return number speciesID : BattlePetSpeciesID
---@since Patch 5.1.0 (2012-11-27): Added.
function UnitBattlePetSpeciesID(unit)
end

---
---@param unit string UnitToken
---@return number result ?
function UnitBattlePetType(unit)
end

---Indicates whether the first unit can assist the second unit.
---@param unitToAssist  UnitId - the unit that would assist (e.g., "player" or "target")
---@param unitToBeAssisted  UnitId - the unit that would be assisted (e.g., "player" or "target")
---@return boolean canAssist - 1 if the unitToAssist can assist the unitToBeAssisted, nil otherwise.
function UnitCanAssist(unitToAssist, unitToBeAssisted)
end

---Returns true if the first unit can attack the second.
---@param unit1 string UnitId
---@param unit2 string UnitId - The unit to compare with the first unit.
---@return boolean canAttack 
function UnitCanAttack(unit1, unit2)
end

---Returns true if the first unit can cooperate with the second.
---@param unit1 string UnitId
---@param unit2 string UnitId - The unit to compare with the first unit.
---@return boolean cancooperate - True if the first unit can cooperate with the second.
function UnitCanCooperate(unit1, unit2)
end

---
---@param unit string UnitToken
---@param target string UnitToken
---@return boolean result 
function UnitCanPetBattle(unit, target)
end

---Returns information about the spell currently being cast by the specified unit.
---@param unit string UnitToken
---@return string name - The name of the spell, or nil if no spell is being cast.
---@return string text - The name to be displayed.
---@return string texture - The texture path associated with the spell icon.
---@return number startTimeMS - Specifies when casting began in milliseconds (corresponds to GetTime()*1000).
---@return number endTimeMS - Specifies when casting will end in milliseconds (corresponds to GetTime()*1000).
---@return boolean isTradeSkill - Specifies if the cast is a tradeskill
---@return string castID : GUID - The unique identifier for this spell cast, for example Cast-3-3890-1159-21205-8936-00014B7E7F.
---@return boolean notInterruptible - if true, indicates that this cast cannot be interrupted with abilities like  [Kick] or  [Pummel]. In default UI those spells have shield frame around their icons on enemy cast bars. Always returns nil in Classic .
---@return number spellId - The spell's unique identifier. (Added in 7.2.5)
---@since Patch 8.0.1 (2018-07-17): Removed the second parameter, "nameSubtext". Second parameter is now "text" (former third parameter).
function UnitCastingInfo(unit)
end

---Returns information about the spell currently being channeled by the specified unit.
---@param unitToken string UnitId
---@return string name - The name of the spell, or nil if no spell is being channeled.
---@return string displayName - The name to be displayed.
---@return string textureID - The texture path associated with the spell icon.
---@return number startTimeMs - Specifies when channeling began, in milliseconds (corresponds to GetTime()*1000).
---@return number endTimeMs - Specifies when channeling will end, in in milliseconds (corresponds to GetTime()*1000).
---@return boolean isTradeskill - Specifies if the cast is a tradeskill.
---@return boolean notInterruptible - if true, indicates that this channeling cannot be interrupted with abilities like  [Kick] or  [Pummel]. In default UI those spells have shield frame around their icons on enemy channeling bars. Always returns nil in Classic .
---@return number spellID - The spell's unique identifier.
---@return boolean isEmpowered 
---@return number numEmpowerStages 
---@since Patch 8.0.1 (2018-07-17): Removed the second parameter, "nameSubtext". Second parameter is now "text" (former third parameter).
function UnitChannelInfo(unitToken)
end

---Returns the Timewalking Campaign ID that a specified unit is in.
---@param unit string UnitId
---@return number ID : UIChromieTimeExpansionInfo.ID
---@since Patch 9.0.1 (2020-10-13): Added.
function UnitChromieTimeID(unit)
end

---Returns the class of the unit.
---@param unit string UnitId
---@return string className - Localized name, e.g. "Warrior" or "Guerrier".
---@return string classFilename - Locale-independent name, e.g. "WARRIOR".
---@return number classId : ClassId
---@since Patch 5.0.4 (2012-08-28): Added classId return value.
function UnitClass(unit)
end

---Returns the class of the unit.
---@param unit string UnitId
---@return string className - Localized name, e.g. "Warrior" or "Guerrier".
---@return string classFilename - Locale-independent name, e.g. "WARRIOR".
---@return number classId : ClassId
---@since Patch 5.0.4 (2012-08-28): Added classId return value.
function UnitClassBase(unit)
end

---Returns the classification of the specified unit (e.g., "elite" or "worldboss").
---@param unit string UnitToken
---@return string classification - the unit's classification: "worldboss", "rareelite", "elite", "rare", "normal", "trivial", or "minus"
---@since Patch 5.0.4 (2012-08-28): "minus" classification added; used for minion mobs that typically have less health than normal mobs of their level, but engage the player in larger numbers.
function UnitClassification(unit)
end

---
---@param unit string UnitToken
---@return boolean controllingVehicle 
function UnitControllingVehicle(unit)
end

---Returns the creature type of the unit (e.g. Crab).
---@param unit string UnitToken
---@return string name - localized name of the creature family (e.g., "Crab" or "Wolf").
---@return number id : CreatureFamily
---@since Patch 11.1.5 (2025-04-22): Added id return value. WoWUIBugs#118
function UnitCreatureFamily(unit)
end

---Returns the creature classification type of the unit (e.g. Beast).
---@param unit string UnitToken
---@return string name - the localized creature type of the unit, or nil if the unit does not exist, or if the unit's creature type isn't available.
---@return number id : CreatureType
---@since Patch 11.1.5 (2025-04-22): Added id return value. WoWUIBugs#118
function UnitCreatureType(unit)
end

---Returns the damage stats for the unit.
---@param unit string UnitToken - Likely only works for "player" and "pet". Possibly for  [Beast Lore] "target".
---@return number minDamage - The unit's minimum melee damage.
---@return number maxDamage - The unit's maximum melee damage.
---@return number offhandMinDamage - The unit's minimum offhand melee damage.
---@return number offhandMaxDamage - The unit's maximum offhand melee damage. (same as above)
---@return number posBuff - positive physical Bonus (should be >= 0)
---@return number negBuff - negative physical Bonus (should be <= 0)
---@return number percent - percentage modifier (usually 1; 0.9 for warriors in defensive stance)
function UnitDamage(unit)
end

---Returns detailed info for the threat status of one unit against another.
---@param unit string UnitToken - The player or pet whose threat to request.
---@param mobGUID string UnitToken - The NPC whose threat table to query.
---@return boolean isTanking - Returns true if the unit is the primary threat target of the mobUnit, returns false otherwise.
---@return number status - Threat status of the unit on the mobUnit.
---@return number scaledPercentage - The unit's threat percentage against mobUnit. At 100% the unit will become the primary target. This value is also scaled the closer the unit is to the mobUnit.
---@return number rawPercentage - The unit's threat percentage against mobUnit relative to the threat of mobUnit's primary target. Can be greater than 100, up to 255. Stops updating when you become the primary target.
---@return number threatValue - The unit's total threat value on the mobUnit.
---@since Patch 4.0.3 (2010-11-16): Now returns 0 threat for temporary threat reduction effects like  [Mirror Image] or  [Fade] instead of the real value.
function UnitDetailedThreatSituation(unit, mobGUID)
end

---#noinstance - This only works outdoors and not in instanced content (dungeons/raids/battlegrounds/arena).
---@param unit string UnitId - The unit id of a player in your group.
---@return number distanceSquared - the squared distance to that unit
---@return boolean checkedDistance - true if the distance result is valid, false otherwise (eg. unit not found or not in your group)
---@since Patch 7.1.0 (2016-10-25): Returns nil while inside a restricted area (instance/battleground/arena).
function UnitDistanceSquared(unit)
end

---Returns the unit's effective (scaled) level.
---@param unit string UnitId
---@return number level 
function UnitEffectiveLevel(unit)
end

---Returns true if the unit exists can be targeted.
---@param unit string UnitId
---@return boolean exists 
function UnitExists(unit)
end

---Returns the faction (Horde/Alliance) a unit belongs to.
---@param unit string UnitId
---@return string englishFaction - Unit's faction name in English, i.e. "Alliance", "Horde", "Neutral" or nil.
---@return string localizedFaction - Unit's faction name in the client's locale or nil.
function UnitFactionGroup(unit)
end

---Returns the name and realm of the unit.
---@param unit string UnitId - For example "player" or "target"
---@return string name ? - The name of the unit. Returns nil if the unit doesn't exist, e.g. the player has no target selected.
---@return string realm ? - The normalized realm the unit is from, e.g. "DarkmoonFaire". Returns nil if the unit is from the same realm.
---@since Patch 1.12.0 (2006-08-22): Added realm return value.[1]
function UnitFullName(unit)
end

---Returns the GUID of the unit.
---@param unit string UnitToken - For example "player" or "target"
---@return string guid ? : GUID - A string containing (hexadecimal) values, delimited with hyphens. Returns nil if the unit does not exist.
---@since Patch 2.4.0 (2008-03-25): Added.
function UnitGUID(unit)
end

---Returns the recommended roles for a specified unit
---@param unit string UnitId
---@return boolean tank - Whether the unit can perform as a tank
---@return boolean heal - Whether the unit can perform as a healer
---@return boolean dps - Whether the unit can perform as a dps
function UnitGetAvailableRoles(unit)
end

---Returns the predicted heals cast on the specified unit.
---@param unit string UnitToken
---@param healerGUID string ? : UnitToken - Only predict incoming heals from a single UnitId.
---@return number heal - Predicted increase in health from incoming heals.
---@since Patch 4.0.1 (2010-10-12): Added.[2]
function UnitGetIncomingHeals(unit, healerGUID)
end

---Returns the total amount of damage the unit can absorb before losing health.
---@param unit string UnitToken - The unit to query absorption shields of.
---@return number totalAbsorbs - total amount of damage the unit can take without losing health.
---@since Patch 5.2.0 (2013-03-05): Added.
function UnitGetTotalAbsorbs(unit)
end

---Returns the total amount of healing the unit can absorb without gaining health.
---@param unit string UnitToken
---@return number totalHealAbsorbs - amount of healing the unit can absorb without gaining health.
---@since Patch 5.4.0 (2013-09-10): Added.
function UnitGetTotalHealAbsorbs(unit)
end

---Returns the assigned role for players in your group or raid.
---@param unit string UnitId
---@return string role - TANK, HEALER, DAMAGER, NONE
function UnitGroupRolesAssigned(unit)
end

---
---@param unit string ? : UnitToken
---@return number result 
function UnitGroupRolesAssignedEnum(unit)
end

---
---@param unit string UnitToken
---@return number hp 
function UnitHPPerStamina(unit)
end

---Returns true if the unit is currently being resurrected.
---@param unit string UnitToken - either the unitID ("player", "target", "party3", etc) or unit's name ("Bob" or "Bob-Llane")
---@return boolean isBeingResurrected - Returns true if the unit is being resurrected by any means, be it spell, item, or some other method. Returns nil/false otherwise.
---@since Patch 4.2.0 (2011-06-28): Added.
function UnitHasIncomingResurrection(unit)
end

---Returns whether the unit is currently unable to use the dungeon finder due to leaving a group prematurely.
---@param unit string UnitId - the unit that would assist (e.g., "player" or "target")
---@return boolean isDeserter - true if the unit is currently an LFG deserter (and hence unable to use the dungeon finder), false otherwise.
function UnitHasLFGDeserter(unit)
end

---Returns whether the unit is currently under the effects of the random dungeon cooldown.
---@param unit string UnitId - the unit that would assist (e.g., "player" or "target")
---@return boolean hasRandomCooldown - true if the unit is currently unable to queue for random dungeons due to the random cooldown, false otherwise.
function UnitHasLFGRandomCooldown(unit)
end

---
---@param unit string UnitToken
---@return boolean hasRelicSlot 
function UnitHasRelicSlot(unit)
end

---
---@param unit string ? : UnitToken
---@return boolean hasVehicleUI 
function UnitHasVehiclePlayerFrameUI(unit)
end

---
---@param unit string ? : UnitToken
---@return boolean hasVehicleUI 
function UnitHasVehicleUI(unit)
end

---Returns the current health of the unit.
---@param unit string UnitToken
---@param usePredicted boolean ? = true
---@return number health - Returns 0 if the unit is dead or does not exist.
---@since Patch 3.0.2 (2008-10-14): Returns absolute health instead of percentages for non party/raid units.
function UnitHealth(unit, usePredicted)
end

---Returns the maximum health of the unit.
---@param unit string UnitToken
---@return number maxHealth - Returns 0 if the unit does not exist.
---@since Patch 3.0.2 (2008-10-14): Returns absolute health instead of percentages for non party/raid units.
function UnitHealthMax(unit)
end

---Returns the current amount of honor the unit has for the current rank.
---@param unit string UnitToken
---@return number honor - The current amount of honor the unit has at a given rank.
function UnitHonor(unit)
end

---Returns the current honor rank of the unit.
---@param unit string UnitToken
---@return number honorLevel - The honor level of the unit. In Legion this resets to 1 every new Prestige level.
function UnitHonorLevel(unit)
end

---Returns the maximum amount of honor for the current rank.
---@param unit string UnitToken
---@return number maxHonor - The maximum amount of honor for a PvP rank.
function UnitHonorMax(unit)
end

---Returns whether or not the targeted unit is in a Group of any type. Instance, raid, party, etc.
---@param unit string UnitToken - The unit token of the unit to check group status for. Always returns false if no unit is provided.
---@return boolean inGroup - True if the target is in a group, false otherwise.
function UnitInAnyGroup(unit)
end

---Returns the unit index if the unit is in your battleground.
---@param unit string UnitId
---@return number position - The position in the battleground raid of the specified unit, "nil" if outside of the battleground, and 0 if "unit" is "player" and player is the last person left standing inside of a finished battleground.
function UnitInBattleground(unit)
end

---Checks whether this unit cannot see your party chat because it is in an instance group
---@param unit string UnitToken
---@return boolean inOtherParty 
function UnitInOtherParty(unit)
end

---Returns true if the unit is a member of your party.
---@param unit string UnitId
---@return boolean inParty - if the unit is in your party
function UnitInParty(unit)
end

---
---@param unit string ? : UnitToken
---@return boolean result 
function UnitInPartyIsAI(unit)
end

---Returns true if the specified unit is in the primary phase of the party.
---@param unit string UnitId
---@return boolean inPartyShard 
---@since Patch 9.0.1 (2020-10-13): Added.
function UnitInPartyShard(unit)
end

---Returns the index if the unit is in your raid group.
---@param unit string UnitId
---@return number index - same number in the raid## UnitId, feed into GetRaidRosterInfo
function UnitInRaid(unit)
end

---#grouponly - This can only be queried on units in your party or raid.
---@param unit string UnitToken
---@return boolean inRange - true if the unit is within 40 (25 for Evokers) yards of the player
---@return boolean checkedRange - true if a range check was actually performed; false if the information about distance to the queried unit is unavailable.
---@since Patch 5.0.4 (2012-08-28): Added checkedRange return value.
function UnitInRange(unit)
end

---
---@param unit string ? : UnitId
---@param overridePartyType number ?
If omitted, defaults to INSTANCE if applicable, HOME otherwise.
---@return boolean inSubgroup 
function UnitInSubgroup(unit, overridePartyType)
end

---Checks whether a specified unit is within an vehicle.
---@param unit string UnitToken
---@return boolean inVehicle 
function UnitInVehicle(unit)
end

---
---@param unit string ? : UnitToken
---@return boolean inVehicle 
function UnitInVehicleControlSeat(unit)
end

---
---@param unit string ? : UnitToken
---@return boolean hidesPet 
function UnitInVehicleHidesPetFrame(unit)
end

---Returns true if a friendly unit is AFK (Away from keyboard).
---@param unit  The UnitId to return AFK status of. A nil value throws an error.
---@return boolean isAFK true if unit is AFK, Boolean false otherwise. An invalid or nonexistent unit value also returns false.
function UnitIsAFK(unit)
end

---Returns if the unit is a battle pet.
---@param unit string UnitId
---@return boolean isBattlePet 
---@since Patch 5.1.0 (2012-11-27): Added.[1]
function UnitIsBattlePet(unit)
end

---Returns if the unit is a battle pet summoned by a player.
---@param unit string UnitId
---@return boolean isCompanion 
---@since Patch 5.0.4 (2012-08-28): Added.[1]
function UnitIsBattlePetCompanion(unit)
end

---
---@param unit string UnitToken
---@return boolean isBoss 
function UnitIsBossMob(unit)
end

---Returns true if the unit is charmed.
---@param unit string UnitId
---@return boolean isTrue - true if the unit is charmed, false otherwise.
function UnitIsCharmed(unit)
end

---Returns true if the unit is connected to the game (i.e. not offline).
---@param unit string UnitId
---@return boolean isConnected 
function UnitIsConnected(unit)
end

---
---@param unit string UnitToken
---@return boolean isControlling 
function UnitIsControlling(unit)
end

---
---@param unit string ? : UnitToken
---@return boolean result 
function UnitIsCorpse(unit)
end

---Returns true if a unit is DND (Do not disturb).
---@param unit  The UnitId to return DND status of.
---@return  isDND 1 if unit is DND, nil otherwise.
function UnitIsDND(unit)
end

---Returns true if the unit is dead.
---@param unit string UnitToken
---@return boolean isDead 
function UnitIsDead(unit)
end

---Returns true if the unit is dead or in ghost form.
---@param unit string UnitToken
---@return boolean isDeadOrGhost 
function UnitIsDeadOrGhost(unit)
end

---Returns true if the specified units are hostile to each other.
---@param unit1 string UnitId
---@param unit2 string UnitId - The unit to compare with the first unit.
---@return boolean isEnemy 
function UnitIsEnemy(unit1, unit2)
end

---Returns true if the unit (must be a group member) is feigning death.
---@param unit string UnitToken
---@return boolean isFeign - Returns true if the checked unit is feigning death, false otherwise.
---@since Patch 2.1.0 (2007-05-22): Replaced IsFeignDeath.
function UnitIsFeignDeath(unit)
end

---Returns true if the specified units are friendly to each other.
---@param unit1 string UnitId
---@param unit2 string UnitId - The unit to compare with the first unit.
---@return boolean isFriend 
function UnitIsFriend(unit1, unit2)
end

---
---@param unit string ? : UnitToken
---@return boolean result 
function UnitIsGameObject(unit)
end

---Returns true if the unit is in ghost form.
---@param unit string UnitToken
---@return boolean isGhost 
function UnitIsGhost(unit)
end

---Returns whether the unit is an assistant in your current group.
---@param unit string UnitId
---@return boolean isAssistant - true if the unit is a raid assistant in your current group, false otherwise.
---@since Patch 5.0.4 (2012-08-28): Replaced IsRaidOfficer, UnitIsRaidOfficer.
function UnitIsGroupAssistant(unit)
end

---Returns whether the unit is the leader of a party or raid.
---@param unit string UnitId
---@param partyCategory number ?
If omitted, defaults to INSTANCE if applicable, HOME otherwise.
---@return boolean isLeader 
---@since Patch 5.0.4 (2012-08-28): Added.
function UnitIsGroupLeader(unit, partyCategory)
end

---
---@param unit string 
---@return boolean result 
function UnitIsInMyGuild(unit)
end

---
---@param unit string ? : UnitToken
---@return boolean result 
function UnitIsInteractable(unit)
end

---Returns true if the unit has enabled Mercenary Mode.
---@param unit string ? : UnitId
---@return boolean isMercenary 
function UnitIsMercenary(unit)
end

---Returns if the unit is a battle pet summoned by another player.
---@param unit string UnitId
---@return boolean isOther 
---@since Patch 5.0.4 (2012-08-28): Added.[1]
function UnitIsOtherPlayersBattlePet(unit)
end

---
---@param unit string ? : UnitToken
---@return boolean result 
function UnitIsOtherPlayersPet(unit)
end

---
---@param controllingUnit string 
---@param controlledUnit string 
---@return boolean unitIsOwnerOrControllerOfUnit 
---@since Patch 7.2.5 (2017-06-13): Added.
function UnitIsOwnerOrControllerOfUnit(controllingUnit, controlledUnit)
end

---Returns true if the unit is flagged for PVP.
function UnitIsPVP()
end

---Returns true if the unit is flagged for free-for-all PVP (e.g. in a world arena).
---@param unitId string UnitId - The unit to check
---@return boolean isFreeForAll - Whether the unit is flagged for free-for-all PVP
function UnitIsPVPFreeForAll(unitId)
end

---
---@param unit string ? : UnitToken
---@return boolean result 
function UnitIsPVPSanctuary(unit)
end

---Returns true if the unit is a player character.
---@param unit string UnitId
---@return boolean isPlayer - true if the unit is a player, false otherwise.
function UnitIsPlayer(unit)
end

---Returns true if the unit is currently under control of another (e.g. Mind Control).
---@param unit string UnitId
---@return boolean isTrue - true if the unit is a possessed, false otherwise.
function UnitIsPossessed(unit)
end

---
---@param unit string UnitToken
---@return boolean isQuestBoss 
function UnitIsQuestBoss(unit)
end

---
---@param unit string ? : UnitToken
---@return boolean result 
function UnitIsRaidOfficer(unit)
end

---Returns true if the unit is from the same (connected) realm.
---@param unit string UnitId
---@return boolean sameServer - 1 if the specified unit is from the player's realm (or a Connected Realm linked to the player's own realm), nil otherwise.
---@since Patch 5.4.0 (2013-09-10): First parameter argument; now always compares the realm of the specified unit to the player's own realm.
function UnitIsSameServer(unit)
end

---Indicates a mob is no longer eligible for tap.
---@param unit string UnitToken
---@return boolean unitIsTapDenied 
---@since Patch 7.0.3 (2016-07-19): Added, replacing UnitIsTapped().
function UnitIsTapDenied(unit)
end

---Returns true if the unit is trivial (i.e. "grey" to the player).
---@param unit string UnitToken
---@return boolean isTrivial - True if the unit is comparatively too low level to provide experience or honor; otherwise false.
function UnitIsTrivial(unit)
end

---
---@param unit string UnitToken
---@return boolean isUnconscious 
function UnitIsUnconscious(unit)
end

---Returns true if the specified units are the same unit.
---@param unit1 string UnitId - The first unit to query (e.g. "party1", "pet", "player")
---@param unit2 string UnitId - The second unit to compare it to (e.g. "target")
---@return boolean isSame - 1 if the two units are the same entity, nil otherwise.
function UnitIsUnit(unit1, unit2)
end

---Returns true if the unit is visible to the game client.
---@param unit string UnitId
---@return boolean visible 
function UnitIsVisible(unit)
end

---Returns if the unit is a wild battle pet or tamer battle pet.
---@param unit string UnitId
---@return boolean isWild 
---@since Patch 5.0.4 (2012-08-28): Added.[1]
function UnitIsWildBattlePet(unit)
end

---
---@param unit string UnitToken
---@return boolean isLeader 
function UnitLeadsAnyGroup(unit)
end

---Returns the level of the unit.
---@param unit string UnitId - For example "player" or "target"
---@return number level - The unit level. Returns -1 for boss units or hostile units 10 levels above the player (Level ??).
function UnitLevel(unit)
end

---Returns the name and realm of the unit.
---@param unit string UnitId - For example "player" or "target"
---@return string name ? - The name of the unit. Returns nil if the unit doesn't exist, e.g. the player has no target selected.
---@return string realm ? - The normalized realm the unit is from, e.g. "DarkmoonFaire". Returns nil if the unit is from the same realm.
---@since Patch 1.12.0 (2006-08-22): Added realm return value.[1]
function UnitName(unit)
end

---Returns the name and realm of the unit.
---@param unit string UnitId - For example "player" or "target"
---@return string name ? - The name of the unit. Returns nil if the unit doesn't exist, e.g. the player has no target selected.
---@return string realm ? - The normalized realm the unit is from, e.g. "DarkmoonFaire". Returns nil if the unit is from the same realm.
---@since Patch 1.12.0 (2006-08-22): Added realm return value.[1]
function UnitNameUnmodified(unit)
end

---Returns true if a units' nameplate should appear in a "widgets-only" mode.
---@param unit string UnitId
---@return boolean nameplateShowsWidgetsOnly 
---@since Patch 9.0.1 (2020-10-13): Added.
function UnitNameplateShowsWidgetsOnly(unit)
end

---
---@param unit string UnitToken
---@return number numPowerBarTimers 
function UnitNumPowerBarTimers(unit)
end

---Returns true if the unit is on a flight path.
---@param unit string UnitToken
---@return boolean onTaxi - Whether the unit is on a taxi.
function UnitOnTaxi(unit)
end

---
---@param unit string UnitToken
---@return string ownerGUID : WOWGUID
function UnitOwnerGUID(unit)
end

---Returns the unit's name with title (e.g. "Bob the Explorer").
---@param unit string UnitToken - The unit to retrieve the name and title of.
---@return string titleName - The unit's combined title and name, e.g. "Playername, the Insane", or nil if the unit is out of range.
function UnitPVPName(unit)
end

---
---@param unitToken string UnitToken
---@param powerType Enum.PowerType ?🔗
---@param unmodified boolean ? = false
---@return number partialPower 
function UnitPartialPower(unitToken, powerType, unmodified)
end

---
---@param unitGUID string 
---@return number percentHealth ?
function UnitPercentHealthFromGUID(unitGUID)
end

---Returns the reason if a unit is NOT in the same phase.
---@param unit string UnitId
---@return Enum.PhaseReason reason ?
---@since Patch 9.0.1 (2020-10-13): Added. Replaces UnitIsWarModePhased() and UnitInPhase()
function UnitPhaseReason(unit)
end

---Returns true if the unit is controlled by a player.
---@param unit string UnitId
---@return boolean UnitIsPlayerControlled - Returns true if the "unit" is controlled by a player. Returns false if the "unit" is an NPC.
function UnitPlayerControlled(unit)
end

---Returns true if a different unit or pet is a member of the party.
---@param unit string The unit to check for party membership.
---@return boolean inMyParty - 1 if the unit is another player or another player's pet in your party, nil otherwise.
function UnitPlayerOrPetInParty(unit)
end

---Returns true if a different unit or pet is a member of the raid.
---@param unit string UnitId
---@return boolean inRaid 
function UnitPlayerOrPetInRaid(unit)
end

---#noinstance - This only works outdoors and not in instanced content (dungeons/raids/battlegrounds/arena).
---@param unit string UnitToken - The unit for which the position is returned. Does not work with all unit types. Works with "player", "partyN" or "raidN" as unit type. In particular, it does not work on pets or any unit not in your group.
---@return number positionX - Y value of the unit's position in yards, relative to the instance
---@return number positionY - X value of the unit's position in yards, relative to the instance
---@return number positionZ - Always 0. A placeholder for the Z coordinate
---@return number mapID : InstanceID
---@since Patch 7.1.0 (2016-10-25): Returns nil while inside a restricted area (instance/battleground/arena).[1][2][3]
function UnitPosition(unit)
end

---Returns the current power resource of the unit.
---@param unitToken string UnitId
---@param powerType Enum.PowerType ?🔗 - Type of resource (mana/rage/energy/etc) to query
---@param unmodified boolean ? - Return the higher precision internal value (for graphical use only)
---@return number power - the unit's current power level
---@since Patch 3.0.2 (2008-10-14): Added, replaces UnitMana()
function UnitPower(unitToken, powerType, unmodified)
end

---
---@param unitToken string UnitId
---@return number barID 
---@since Patch 8.3.0 (2020-01-14): Added. Partly replaces the alternate power info API which is deprecated. [1]
function UnitPowerBarID(unitToken)
end

---
---@param unit string UnitToken
---@param index number ? = 0
---@return number duration 
---@return number expiration 
---@return number barID 
---@return number auraID 
function UnitPowerBarTimerInfo(unit, index)
end

---
---@param powerType Enum.PowerType 🔗
---@return number displayMod 
---@since Patch 7.2.0 (2017-03-28): Added.
function UnitPowerDisplayMod(powerType)
end

---Returns the maximum power resource of the unit.
---@param unitToken string UnitId
---@param powerType Enum.PowerType ?🔗 - Type of resource (mana/rage/energy/etc) to query
---@param unmodified boolean ? - Return the higher precision internal value (for graphical use only)
---@return number maxPower - The unit's maximum amount of the queried resource.
---@since Patch 3.0.2 (2008-10-14): Added, replaces UnitManaMax()
function UnitPowerMax(unitToken, powerType, unmodified)
end

---Returns a number corresponding to the power type (e.g., mana, rage or energy) of the specified unit.
---@param unit string UnitToken - The unit whose power type to query.
---@param index number ? = 0 - Optional value for classes with multiple powerTypes. If not specified, information about the first (currently active) power type will be returned.
---@return Enum.PowerType powerType 🔗 -  the ID corresponding the the unit's queried power type.
---@return string powerToken - also the power type:
"MANA"
"RAGE"
"FOCUS"
"ENERGY"
"HAPPINESS"
"RUNES"
"RUNIC_POWER"
"SOUL_SHARDS"
"ECLIPSE"
"HOLY_POWER"
"AMMOSLOT" (vehicles, 3.1)
"FUEL" (vehicles, 3.1)
"STAGGER" (vehicles, 5.1)
"CHI"
"INSANITY"
"ARCANE_CHARGES"
"FURY"
"PAIN"
function UnitPowerType(unit, index)
end

---Returns whether the unit is a flag/orb carrier or cart runner.
---@param unit string UnitId
---@return Enum.PvPUnitClassification classification ?
---@since Patch 8.1.5 (2019-03-12): Added.
function UnitPvpClassification(unit)
end

---Returns the difference between the units' current level and the level at which fixed-level quests are of trivial difficulty.
---@param unit string UnitId
---@return number levelRange 
---@since Patch 9.0.1 (2020-10-13): Changed to UnitQuestTrivialLevelRange()
function UnitQuestTrivialLevelRange(unit)
end

---Returns the difference between the units' current level and the level at which scaling-level quests are of trivial difficulty.
---@param unit string UnitId
---@return number levelRange 
---@since Patch 9.0.1 (2020-10-13): Added.
function UnitQuestTrivialLevelRangeScaling(unit)
end

---Returns the race of the unit.
---@param unit string UnitId
---@return string localizedRaceName - Localized race name, suitable for use in user interfaces.
---@return string englishRaceName - Localization-independent race name, suitable for use as table keys.
---@return number raceID - RaceId. Localization-independent raceID.
---@since Patch 8.2.0 (2019-06-25): Can now return Mechagnome.
function UnitRace(unit)
end

---Returns the ranged attack power of the unit.
---@param unit string UnitToken - Likely only works for "player" and "pet"
---@return number attackPower - The unit's base ranged attack power (seems to give a positive number even if no ranged weapon equipped)
---@return number posBuff - The total effect of positive buffs to ranged attack power.
---@return number negBuff - The total effect of negative buffs to the ranged attack power (a negative number)
function UnitRangedAttackPower(unit)
end

---Returns the ranged attack speed and damage of the unit.
---@param unit string UnitToken - The unit to get information from. (Likely only works for "player" and "pet" -- unconfirmed)
---@return number speed - The unit's ranged weapon speed (0 if no ranged weapon equipped).
---@return number minDamage - The unit's minimum ranged damage.
---@return number maxDamage - The unit's maximum ranged damage.
---@return number posBuff - The unit's positive Bonus on ranged attacks (includes Spelldamage increases)
---@return number negBuff - The unit's negative Bonus on ranged attacks
---@return number percent - percentage modifier (usually 1)
function UnitRangedDamage(unit)
end

---Returns the reaction of the specified unit to another unit.
---@param unit string UnitId
---@param otherUnit string UnitId - The unit to compare with the first unit.
---@return  reaction Values other than 2, 4 or 5 are only returned when the first unit is an NPC in a reputation faction and the second is you or your pet.
function UnitReaction(unit, otherUnit)
end

---Returns information about the player's relation to the specified unit's realm.
---@param unit string UnitToken
---@return number realmRelationship - if the specified unit is a player, one of:
---@since Patch 5.4.0 (2013-09-10): Added.
function UnitRealmRelationship(unit)
end

---Returns the color of the outline and circle underneath the unit.
---@param unit string UnitToken - The unit whose selection colour should be returned.
---@param useExtendedColors boolean ? = false - If true, a more appropriate colour of the unit's selection will be returned. For instance, if used on a dead hostile target, the default return will red (hostile), but the extended return will be grey (dead).
---@return number red - A number between 0 and 1.
---@return number green - A number between 0 and 1.
---@return number blue - A number between 0 and 1.
---@return number alpha - A number between 0 and 1.
function UnitSelectionColor(unit, useExtendedColors)
end

---Returns the selection type of the outline and circle underneath the unit.
---@param unit string UnitToken - The unit whose selection type should be returned.
---@param useExtendedColors boolean ? = false - If true, a more appropriate type of the unit's selection will be returned. For instance, if used on a dead hostile target, the default return will be 0 (hostile), but the extended return will be 9 (dead).
---@return number selectionType - The unit's selection type:
0 - Hostile.
1 - Unfriendly.
2 - Neutral.
3 - Friendly.
4 - Player.
5 - Player, if using extended colours.
6 - Party.
7 - Party (War Mode On).
8 - Friend, a player from your friend list.
9 - Dead.
10 - Commentator Team 1, only available to commentators.
11 - Commentator Team 2, only available to commentators.
12 - Self, your character if highlighting of your character is enabled.
13 - Friendly (Battleground), party members and friendly units in battlegrounds.
---@since Patch 8.1.5 (2019-03-12): Added.
function UnitSelectionType(unit, useExtendedColors)
end

---Sets a unit's role in the group.
---@param unit string UnitToken
---@param roleStr string ? : ["TANK", "HEALER", "DAMAGER", "NONE"]
---@return boolean result 
function UnitSetRole(unit, roleStr)
end

---
---@param unit string UnitToken
---@param role Enum.LFGRole ?
---@return boolean result 
function UnitSetRoleEnum(unit, role)
end

---Returns the gender of the unit.
---@param unit string UnitId
---@return number sex ?
---@since Patch 1.11.0 (2006-06-19): Return values changed to 1 unknown, 2 male, 3 female
Previously returned 0 male, 1 female, 2 unknown
function UnitSex(unit)
end

---
---@param unit string UnitToken
---@return boolean shouldDisplay 
function UnitShouldDisplayName(unit)
end

---Returns the current spell haste percentage for a unit.
---@param unit string UnitToken
---@return number spellHastePercent - The spell haste percent for the queried unit. Will return 0 if no valid unitId is provided.
---@since Patch 4.0.6 (2011-02-08): Added.
function UnitSpellHaste(unit)
end

---Returns the amount of staggered damage on the unit.
---@param unit string UnitToken
---@return number damage - current amount of staggered damage on the unit.
---@since Patch 5.2.0 (2013-03-05): Added.
function UnitStagger(unit)
end

---Returns the basic attributes for a unit (strength, agility, stamina, intellect).
---@param unit string UnitToken - Only works for "player" and "pet". Will work on "target" as long as it is equal to "player")
---@param statID number - An internal id corresponding to one of the stats.
1: LE_UNIT_STAT_STRENGTH
2: LE_UNIT_STAT_AGILITY
3: LE_UNIT_STAT_STAMINA
4: LE_UNIT_STAT_INTELLECT
5: LE_UNIT_STAT_SPIRIT (not anymore available in 9.0.5)
function UnitStat(unit, statID)
end

---
---@param unit string UnitToken
---@param virtualSeatIndex number 
function UnitSwitchToVehicleSeat(unit, virtualSeatIndex)
end

---
---@param unit string ? : UnitToken
---@return boolean targetsVehicle 
function UnitTargetsVehicleInRaidUI(unit)
end

---
---@param unit string UnitToken - The player or pet whose threat to request.
---@param mobGUID string UnitToken - The NPC whose threat table to query.
---@return number percentage 
---@since Patch 4.1.0 (2011-04-26): Added.[1]
function UnitThreatPercentageOfLead(unit, mobGUID)
end

---Returns the threat status of the specified unit to another unit.
---@param unit string UnitToken - The player or pet whose threat to request.
---@param mobUnit string ? : UnitToken - The NPC whose threat table to query.
If omitted, returned values reflect whichever NPC unit the player unit has the highest threat against.
---@return number status ? - The threat status of the unit on the mobUnit. "High threat" means a unit has 100% threat or higher, "Primary Target" means the unit is the current target of the mob.
---@since Patch 1.13.5 (2020-07-07): Added.[2]
function UnitThreatSituation(unit, mobUnit)
end

---Finds a unit token that maps to the supplied unit GUID.
---@param unitGUID string GUID - A unit GUID to query.
---@return string unitToken ? : UnitId - A unit token that matches the supplied unit GUID if one can be found, or nil if not.
---@since Patch 10.0.2 (2022-11-15): Added.
function UnitTokenFromGUID(unitGUID)
end

---Whether a unit should be treated as if it was an actual player.
---@param unit string 
---@return boolean treatAsPlayer 
---@since Patch 8.1.5 (2019-03-12): Added.
function UnitTreatAsPlayerForDisplay(unit)
end

---
---@param unit string UnitToken
---@return number bankedLevels 
---@return number xpIntoCurrentLevel 
---@return number xpForNextLevel 
function UnitTrialBankedLevels(unit)
end

---
---@param unit string UnitToken
---@return number xp 
function UnitTrialXP(unit)
end

---Returns true if the unit is currently in a vehicle.
---@param unit string UnitToken
---@return boolean inVehicle - true if the unit is using a vehicle, false otherwise.
function UnitUsingVehicle(unit)
end

---
---@param unit string UnitToken
---@return number count 
function UnitVehicleSeatCount(unit)
end

---
---@param unit string UnitToken
---@param virtualSeatIndex number 
---@return string controlType 
---@return string occupantName 
---@return string serverName 
---@return boolean ejectable 
---@return boolean canSwitchSeats 
function UnitVehicleSeatInfo(unit, virtualSeatIndex)
end

---
---@param unit string ? : UnitToken
---@return number skin : fileID
function UnitVehicleSkin(unit)
end

---
---@param unit string UnitToken
---@return number mainHandWeaponAttackPower 
---@return number offHandWeaponAttackPower 
---@return number rangedWeaponAttackPower 
function UnitWeaponAttackPower(unit)
end

---
---@param unit string UnitId
---@return number uiWidgetSet 
---@since Patch 8.1.5 (2019-03-12): Added.
function UnitWidgetSet(unit)
end

---Returns the current XP of the unit; only works on the player.
---@param unit string UnitToken
---@return number xp - Returns the current XP points of the unit.
function UnitXP(unit)
end

---Returns the maximum XP of the unit; only works on the player.
---@param unit string UnitToken
---@return number nextXP - Returns the max XP points of the "unit".
function UnitXPMax(unit)
end

---Unmutes a sound file.
---@param sound number |string - FileID of a game sound or file path to an addon sound.
---@since Patch 8.2.0 (2019-06-25): Added. (Build 30948 Jun 27 2019)
function UnmuteSoundFile(sound)
end

---
function UpdateAddOnCPUUsage()
end

---
function UpdateAddOnMemoryUsage()
end

---When in windowed mode, updates the window. This also aligns it to the top of the screen and increases the size to max widowed size.
---@since Patch 8.2.0 (2019-06-25): Added.
function UpdateWindow()
end

---#protected - This can only be called from secure code.Use the "action" type of the SecureActionButtonTemplate.
---@param slot number - The action action slot to use.
---@param checkCursor number ? - Can be 0, 1, or nil. Appears to indicate whether the action button was clicked (1) or used via hotkey (0); probably involved in placing skills/items in the action bar after they've been picked up.  I can confirm this.  If you pass 0 for checkCursor, it will use the action regardless of whether another item/skill is on the cursor.  If you pass 1 for checkCursor, it will replace the spell/action on the slot with the new one.
---@param onSelf number ? - Can be 0, 1, or nil. If present and 1, then the action is performed on the player, not the target.  If "true" is passed instead of 1, Blizzard produces a Lua error.
---@since Patch 2.0.1 (2006-12-05): Protected.
function UseAction(slot, checkCursor, onSelf)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param slot number - The inventory slot ID
function UseInventoryItem(slot)
end

---#protected - This can only be called from secure code.
---@param itemId number - itemId of a toy.
function UseToy(itemId)
end

---#protected - This can only be called from secure code.
---@param name string - (localized?) name of a toy.
function UseToyByName(name)
end

---
---@param unit string UnitToken
---@return boolean exists 
function WorldLootObjectExists(unit)
end

---Appends a string to the debug frame text buffer for crash reporting.
---@param text string - A string to log in the frame text buffer.
---@since Patch 8.0.1 (2018-07-17): Added.
function addframetext(text)
end

---Returns a string dump of all local variables and upvalues at a given stack level.
---@param level number - The stack level to inspect. Defaults to 1 (the calling function).
---@return string locals ? - A string dump of all local variables, temporaries, and upvalues.
---@since Patch 10.1.0 (2023-05-02): This function will now return no results when called within a __gc finalizer, and may now be called outside of the global error handler.
function debuglocals(level)
end

---Starts a timer for profiling. The final time can be obtained by calling debugprofilestop.
function debugprofilestart()
end

---Returns the time in milliseconds since the last debugprofilestart call.
---@return number elapsedMilliseconds - Time since profiling was started in milliseconds.
function debugprofilestop()
end

---Returns a string representation of the current calling stack.
---@param coroutine thread ? - The thread with the stack to examine (default - the calling thread)
---@param start number ? - the stack depth at which to start the stack trace (default 1 - the function calling debugstack, or the top of coroutine's stack)
---@param count1 number ? - the number of functions to output at the top of the stack (default 12)
---@param count2 number ? - the number of functions to output at the bottom of the stack (default 10)
---@return string description - a multi-line string showing what the current call stack looks like
If there are more than count1+count2 calls in the stack, they are separated by a "..." line.
Long lines may become truncated.
The string ends with an extra newline character.
---@since Patch 10.1.0 (2023-05-02): This function will now return no results when called within a __gc finalizer.
function debugstack(coroutine, start, count1, count2)
end

---Taints the current execution path.
---@since Patch 3.0.2 (2008-10-14): Added.
function forceinsecure()
end

---Returns the currently set error handler.
---@return function handler - The current error handler. Receives a message as an argument, normally a string that is the second return value from pcall().
function geterrorhandler()
end

---Returns the function currently handling print() output.
function getprinthandler()
end

---Securely posthooks the specified function. The hook will be called with the same arguments after the original call is performed.
---@param tbl table ? - Table to hook the functionName key in; if omitted, defaults to the global table (_G).
---@param functionName string - name of the function being hooked.
---@param hookfunc function - your hook function.
---@since Patch 11.0.0 (2024-07-23): Can no longer install hooks on functions with specific names.
function hooksecurefunc(tbl, functionName, hookfunc)
end

---Returns true if the current execution path is secure.
---@return boolean secure - true if the current path is secure (and able to call protected functions), false otherwise.
function issecure()
end

---Returns true if the specified value is secure.
---@param value any ?
---@return boolean isSecure - true if the provided value is secure, false if it is tainted.
---@return string taint ? - name of the addon that tainted the table field; an empty string if tainted by a macro; nil if secure.
function issecurevalue(value)
end

---Returns true if the specified variable is secure.
---@param tbl table ? - table to check the the key in; if omitted, defaults to the globals table (_G).
---@param variable string - string key to check the taint of. Numbers will be converted to a string; other types will throw an error.
---@return boolean isSecure - true if the table[variable] key is secure, false if it is tainted.
---@return string taint ? - name of the addon that tainted the table field; an empty string if tainted by a macro; nil if secure.
function issecurevariable(tbl, variable)
end

---Displays a message box.
function message()
end

---Calls a function in protected mode with a temporarily replaced function environment.
---@param func string - The function to be called.
---@param env table - A custom environment table to apply to the function prior to calling.
---@param ...  Variable - Arguments to supply to the function.
---@return boolean ok - True if the function was called without error.
---@return  ... Variable - Either a singular error value or all of the return values of the called function.
---@since Patch 10.1.0 (2023-05-02): Added.
function pcallwithenv(func, env, ...)
end

---Passes its arguments to the current print output handler. By default, this will output them all to the default chat frame.
function print()
end

---Returns the argument list with non-number/boolean/string values changed to nil.
---@param ... any - The values to be scrubbed.
---@return boolean ... |number|string|nil - The scrubbed list of arguments.
---@since Patch 2.0.1 (2006-12-05): Added.
function scrub(...)
end

---Calls the specified function without propagating taint to the caller.
---@param func function |string - A direct reference of the function to be called, or for securecall a string name of a function to be resolved through a global lookup.
---@param ...  Additional arguments to supply to the function.
---@return  ... The return values of the called function.
---@since Patch 9.1.5 (2021-11-02): Added securecallfunction.
function securecall(func, ...)
end

---Calls the specified function without propagating taint to the caller.
---@param func function |string - A direct reference of the function to be called, or for securecall a string name of a function to be resolved through a global lookup.
---@param ...  Additional arguments to supply to the function.
---@return  ... The return values of the called function.
---@since Patch 9.1.5 (2021-11-02): Added securecallfunction.
function securecallfunction(func, ...)
end

---Calls a function for each pair within a table without propagating taint to the caller.
---@param tbl table - The table to be traversed.
---@param func function - The function to be called for each pair.
---@param ...  Additional arguments to supply to the invoked function.
---@since Patch 9.1.5 (2021-11-02): Added.
function secureexecuterange(tbl, func, ...)
end

---Sets the error handler to the given function.
---@param errFunc function - The function to call when an error occurs. The function is passed a single argument containing the error message.
function seterrorhandler(errFunc)
end

---Sets a new print() output handler function.
function setprinthandler()
end
