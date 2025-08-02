-- C_ChatInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ChatInfo
C_ChatInfo = {}

---
---@param languageId number 
---@return boolean canSpeakLanguage 
function C_ChatInfo.CanPlayerSpeakLanguage(languageId)
end

---
---@param confirmNumber number 
function C_ChatInfo.DropCautionaryChatMessage(confirmNumber)
end

---
---@param channelIdentifier string 
---@return ChatChannelInfo info ?
---@since Patch 9.1.0 (2021-06-29): Added.
function C_ChatInfo.GetChannelInfoFromIdentifier(channelIdentifier)
end

---
---@param channelIndex number 
---@param rosterIndex number 
---@return string name 
---@return boolean owner 
---@return boolean moderator 
---@return string guid 
---@since Patch 8.0.1 (2018-07-17): Moved to C_ChatInfo.GetChannelRosterInfo.
function C_ChatInfo.GetChannelRosterInfo(channelIndex, rosterIndex)
end

---
---@param channelIndex number 
---@return Enum.ChatChannelRuleset ruleset 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ChatInfo.GetChannelRuleset(channelIndex)
end

---
---@param channelIndex number 
---@return Enum.ChatChannelRuleset ruleset 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ChatInfo.GetChannelRulesetForChannelID(channelIndex)
end

---
---@param channelIndex number 
---@return string shortcut 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ChatInfo.GetChannelShortcut(channelIndex)
end

---
---@param channelIndex number 
---@return string shortcut 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ChatInfo.GetChannelShortcutForChannelID(channelIndex)
end

---
---@param chatLine number 
---@return string guid : WOWGUID
function C_ChatInfo.GetChatLineSenderGUID(chatLine)
end

---
---@param chatLine number 
---@return string name 
function C_ChatInfo.GetChatLineSenderName(chatLine)
end

---
---@param chatLine number 
---@return string text 
function C_ChatInfo.GetChatLineText(chatLine)
end

---
---@param typeID number 
---@return string name ?
---@since Patch 9.1.0 (2021-06-29): Added.
function C_ChatInfo.GetChatTypeName(typeID)
end

---
---@param clubID string 
---@return string ids []
---@since Patch 8.2.0 (2019-06-25): Added.
function C_ChatInfo.GetClubStreamIDs(clubID)
end

---
---@param chatType string 
---@return colorRGB color ?🔗
function C_ChatInfo.GetColorForChatType(chatType)
end

---
---@return number channelID 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ChatInfo.GetGeneralChannelID()
end

---
---@return number localID ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ChatInfo.GetGeneralChannelLocalID()
end

---
---@return number channelID 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ChatInfo.GetMentorChannelID()
end

---
---@return number numChannels 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ChatInfo.GetNumActiveChannels()
end

---
---@return number numReserved 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_ChatInfo.GetNumReservedChatWindows()
end

---Returns addon message prefixes the client is currently registered to receive.
---@return string registeredPrefixes []
---@since Patch 8.0.1 (2018-07-17): Moved to C_ChatInfo.GetRegisteredAddonMessagePrefixes()
function C_ChatInfo.GetRegisteredAddonMessagePrefixes()
end

---Returns whether the prefix is registered.
---@param prefix string 
---@return boolean isRegistered 
---@since Patch 8.0.1 (2018-07-17): Moved to C_ChatInfo.IsAddonMessagePrefixRegistered
function C_ChatInfo.IsAddonMessagePrefixRegistered(prefix)
end

---
---@param channelIndex number 
---@return boolean isRegional 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ChatInfo.IsChannelRegional(channelIndex)
end

---
---@param channelIndex number 
---@return boolean isRegional 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ChatInfo.IsChannelRegionalForChannelID(channelIndex)
end

---
---@param chatLine number 
---@return boolean isCensored 
function C_ChatInfo.IsChatLineCensored(chatLine)
end

---
---@return boolean enabled 
function C_ChatInfo.IsLoggingChat()
end

---
---@return boolean enabled 
---@return boolean advanced 
function C_ChatInfo.IsLoggingCombat()
end

---
---@param channelType  Enum.ChatChannelType
---@return boolean isPartyChannelType 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_ChatInfo.IsPartyChannelType(channelType)
end

---
---@return boolean available 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ChatInfo.IsRegionalServiceAvailable()
end

---
---@param playerGUID string WOWGUID
---@return boolean isTimerunning 
function C_ChatInfo.IsTimerunningPlayer(playerGUID)
end

---
---@param chatLine number ?
---@return boolean isValid 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_ChatInfo.IsValidChatLine(chatLine)
end

---
---@param name string 
---@return boolean isApproved 
function C_ChatInfo.IsValidCombatFilterName(name)
end

---Registers an addon message prefix to receive messages for that prefix.
---@param prefix string - The message prefix to register for delivery, at most 16 characters.
---@return Enum.RegisterAddonMessagePrefixResult result - Result code indicating if the prefix was registered successfully.
---@since Patch 10.2.7 (2024-05-07): Now returns a result code, rather than a boolean.
function C_ChatInfo.RegisterAddonMessagePrefix(prefix)
end

---Replaces icon and group tags like {rt4}, {diamond} and {g1}.
---@param input string 
---@param noIconReplacement boolean ?
---@param noGroupReplacement boolean ?
---@return string output 
---@since Patch 8.1.5 (2019-03-12): Added. Replaces the FrameXML version [1].
function C_ChatInfo.ReplaceIconAndGroupExpressions(input, noIconReplacement, noGroupReplacement)
end

---
---@param whisperTarget string WOWGUID
function C_ChatInfo.RequestCanLocalWhisperTarget(whisperTarget)
end

---
---@since Patch 8.1.0 (2018-12-11): Added.
function C_ChatInfo.ResetDefaultZoneChannels()
end

---Sends a message over an addon comm channel.
---@param prefix string - Message prefix, can be used as your addon identifier; at most 16 characters.
---@param message string - Text to send, at most 255 characters. All characters (decimal ID 1-255) are permissible except NULL (ASCII 0).
---@param chatType string ? = "PARTY" - The addon channel to send to.
---@param target string |number? - The player name or custom channel number receiving the message for "WHISPER" or "CHANNEL" chatTypes.
---@return Enum.SendAddonMessageResult result - Result code indicating if the message has been enqueued by the API for submission. This does not mean that the message has yet been sent, and may still be subject to any server-side throttling.
---@since Patch 10.2.7 (2024-05-07): All chat types are now subject to a per-prefix throttle. Now returns a result code, rather than a boolean.
function C_ChatInfo.SendAddonMessage(prefix, message, chatType, target)
end

---Sends a message over an addon comm channel.
---@param prefix string - Message prefix, can be used as your addon identifier; at most 16 characters.
---@param message string - Text to send, at most 255 characters. All characters (decimal ID 1-255) are permissible except NULL (ASCII 0).
---@param chatType string ? = "PARTY" - The addon channel to send to.
---@param target string |number? - The player name or custom channel number receiving the message for "WHISPER" or "CHANNEL" chatTypes.
---@return Enum.SendAddonMessageResult result - Result code indicating if the message has been enqueued by the API for submission. This does not mean that the message has yet been sent, and may still be subject to any server-side throttling.
---@since Patch 10.2.7 (2024-05-07): All chat types are now subject to a per-prefix throttle. Now returns a result code, rather than a boolean.
function C_ChatInfo.SendAddonMessageLogged(prefix, message, chatType, target)
end

---
---@param confirmNumber number 
function C_ChatInfo.SendCautionaryChatMessage(confirmNumber)
end

---
---@param message string 
---@param chatType SendChatMessageType ? - Chat type string ('SAY', 'EMOTE', etc.). Defaults to 'SAY' if not specified.
---@param languageID number ? - Language to send the message in.
---@param target string ? - Name of the player to send a message to. Only applies to chat types that support targeted messages.
function C_ChatInfo.SendChatMessage(message, chatType, languageID, target)
end

---
---@param firstChannelIndex number 
---@param secondChannelIndex number 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_ChatInfo.SwapChatChannelsByChannelIndex(firstChannelIndex, secondChannelIndex)
end

---
---@param chatLine number 
function C_ChatInfo.UncensorChatLine(chatLine)
end
