-- C_VoiceChat API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_VoiceChat
C_VoiceChat = {}

---
---@param channelID number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.ActivateChannel(channelID)
end

---
---@param channelID number 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_VoiceChat.ActivateChannelTranscription(channelID)
end

---
---@param listenToLocalUser boolean 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.BeginLocalCapture(listenToLocalUser)
end

---
---@return boolean canAccess 
function C_VoiceChat.CanAccessSettings()
end

---
---@return boolean canUseVoiceChat 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.CanPlayerUseVoiceChat()
end

---
---@param channelDisplayName string 
---@return  status Enum.VoiceChatStatusCode
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.CreateChannel(channelDisplayName)
end

---
---@param channelID number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.DeactivateChannel(channelID)
end

---
---@param channelID number 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_VoiceChat.DeactivateChannelTranscription(channelID)
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.EndLocalCapture()
end

---
---@return number channelID ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetActiveChannelID()
end

---
---@return  channelType unknown ChatChannelType (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetActiveChannelType()
end

---
---@return  inputDevices structure - VoiceAudioDevice[] (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetAvailableInputDevices()
end

---
---@return  outputDevices structure - VoiceAudioDevice[] (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetAvailableOutputDevices()
end

---
---@param channelID number 
---@return  channel structure - VoiceChatChannel (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetChannel(channelID)
end

---
---@param channelType  Enum.ChatChannelType
---@return  channel structure - VoiceChatChannel (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetChannelForChannelType(channelType)
end

---
---@param clubId string 
---@param streamId string 
---@return  channel structure - VoiceChatChannel (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetChannelForCommunityStream(clubId, streamId)
end

---
---@return  communicationMode Enum.CommunicationMode (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetCommunicationMode()
end

---
---@return Enum.VoiceChatStatusCode statusCode ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetCurrentVoiceChatConnectionStatusCode()
end

---
---@return number volume ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetInputVolume()
end

---
---@param clubId string 
---@return Enum.VoiceChannelErrorReason errorReason ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_VoiceChat.GetJoinClubVoiceChannelError(clubId)
end

---
---@return  memberInfo structure - VoiceChatMember (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetLocalPlayerActiveChannelMemberInfo()
end

---
---@param channelID number 
---@return number memberID ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetLocalPlayerMemberID(channelID)
end

---
---@return number scale 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_VoiceChat.GetMasterVolumeScale()
end

---
---@param memberID number 
---@param channelID number 
---@return string memberGUID 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetMemberGUID(memberID, channelID)
end

---
---@param channelID number 
---@param memberGUID string 
---@return number memberID ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetMemberID(channelID, memberGUID)
end

---
---@param memberID number 
---@param channelID number 
---@return  memberInfo structure - VoiceChatMember (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetMemberInfo(memberID, channelID)
end

---
---@param memberID number 
---@param channelID number 
---@return string memberName ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetMemberName(memberID, channelID)
end

---
---@param playerLocation PlayerLocationMixin 🔗
---@return number volume ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetMemberVolume(playerLocation)
end

---
---@return number volume ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetOutputVolume()
end

---
---@return boolean isPressed ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetPTTButtonPressedState()
end

---
---@return  processes structure - VoiceChatProcess[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetProcesses()
end

---
---@return string keys []?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetPushToTalkBinding()
end

---
---@return VoiceTtsVoiceType ttsVoices []
---@since Patch 9.1.0 (2021-06-29): Added.
function C_VoiceChat.GetRemoteTtsVoices()
end

---
---@return VoiceTtsVoiceType ttsVoices []
---@since Patch 9.1.0 (2021-06-29): Added.
function C_VoiceChat.GetTtsVoices()
end

---
---@return number sensitivity ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.GetVADSensitivity()
end

---
---@param channelType  Enum.ChatChannelType
---@param clubId string ?
---@param streamId string ?
---@return boolean isPending 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_VoiceChat.IsChannelJoinPending(channelType, clubId, streamId)
end

---
---@return boolean isDeafened ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.IsDeafened()
end

---
---@return boolean isEnabled 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.IsEnabled()
end

---
---@return boolean isLoggedIn 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.IsLoggedIn()
end

---
---@param memberID number 
---@param channelID number 
---@return boolean isLocalPlayer 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.IsMemberLocalPlayer(memberID, channelID)
end

---
---@param playerLocation PlayerLocationMixin 🔗
---@return boolean mutedForMe ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.IsMemberMuted(playerLocation)
end

---
---@param memberID number 
---@param channelID number 
---@return boolean mutedForAll ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.IsMemberMutedForAll(memberID, channelID)
end

---
---@param memberID number 
---@param channelID number 
---@return boolean silenced ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.IsMemberSilenced(memberID, channelID)
end

---
---@return boolean isMuted ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.IsMuted()
end

---
---@return boolean isParentalDisabled 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.IsParentalDisabled()
end

---
---@return boolean isParentalMuted 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.IsParentalMuted()
end

---
---@param playerLocation PlayerLocationMixin 🔗
---@return boolean isUsingVoice 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.IsPlayerUsingVoice(playerLocation)
end

---
---@return boolean isSilenced ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.IsSilenced()
end

---
---@return boolean isActive 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_VoiceChat.IsSpeakForMeActive()
end

---
---@return boolean isAllowed 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_VoiceChat.IsSpeakForMeAllowed()
end

---
---@return boolean isTranscribing 
function C_VoiceChat.IsTranscribing()
end

---
---@return boolean isAllowed 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_VoiceChat.IsTranscriptionAllowed()
end

---
---@return boolean connected 
function C_VoiceChat.IsVoiceChatConnected()
end

---
---@param channelID number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.LeaveChannel(channelID)
end

---
---@return  status Enum.VoiceChatStatusCode
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.Login()
end

---
---@return  status Enum.VoiceChatStatusCode
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.Logout()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.MarkChannelsDiscovered()
end

---
---@param clubId string 
---@param streamId string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.RequestJoinAndActivateCommunityStreamChannel(clubId, streamId)
end

---
---@param channelType Enum.ChatChannelType 
---@since Patch 8.2.0 (2019-06-25): Added autoActivate
function C_VoiceChat.RequestJoinChannelByChannelType(channelType)
end

---
---@param communicationMode  Enum.CommunicationMode
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.SetCommunicationMode(communicationMode)
end

---
---@param isDeafened boolean 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.SetDeafened(isDeafened)
end

---
---@param deviceID string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.SetInputDevice(deviceID)
end

---
---@param volume number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.SetInputVolume(volume)
end

---
---@param scale number 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_VoiceChat.SetMasterVolumeScale(scale)
end

---
---@param playerLocation PlayerLocationMixin 🔗
---@param muted boolean 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.SetMemberMuted(playerLocation, muted)
end

---
---@param playerLocation PlayerLocationMixin 🔗
---@param volume number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.SetMemberVolume(playerLocation, volume)
end

---
---@param isMuted boolean 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.SetMuted(isMuted)
end

---
---@param deviceID string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.SetOutputDevice(deviceID)
end

---
---@param volume number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.SetOutputVolume(volume)
end

---
---@param textureObject table 
---@param memberID number 
---@param channelID number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.SetPortraitTexture(textureObject, memberID, channelID)
end

---
---@param keys table 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.SetPushToTalkBinding(keys)
end

---
---@param sensitivity number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.SetVADSensitivity(sensitivity)
end

---
---@return boolean shouldDiscoverChannels 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.ShouldDiscoverChannels()
end

---
---@param text string 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_VoiceChat.SpeakRemoteTextSample(text)
end

---Reads text to speech.
---@param voiceID number - Voice IDs from .GetTtsVoices or .GetRemoteTtsVoices.
---@param text string - The message to speak.
---@param destination Enum.VoiceTtsDestination 
---@since Patch 9.1.0 (2021-06-29): Added.
function C_VoiceChat.SpeakText(voiceID, text, destination)
end

---
---@since Patch 9.1.0 (2021-06-29): Added.
function C_VoiceChat.StopSpeakingText()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.ToggleDeafened()
end

---
---@param playerLocation PlayerLocationMixin 🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.ToggleMemberMuted(playerLocation)
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VoiceChat.ToggleMuted()
end
