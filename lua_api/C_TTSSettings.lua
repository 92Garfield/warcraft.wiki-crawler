-- C_TTSSettings API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_TTSSettings
C_TTSSettings = {}

---
---@param channelInfo ChatChannelInfo 
---@return boolean enabled 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.GetChannelEnabled(channelInfo)
end

---
---@return boolean settingsBeenSaved 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.GetCharacterSettingsSaved()
end

---
---@param chatName string 
---@return boolean enabled 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.GetChatTypeEnabled(chatName)
end

---
---@param setting Enum.TtsBoolSetting 
---@return boolean enabled 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.GetSetting(setting)
end

---
---@return number rate 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.GetSpeechRate()
end

---
---@return number volume 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.GetSpeechVolume()
end

---Get the user's preferred text to speech voices.
---@param voiceType Enum.TtsVoiceType 
---@return number voiceID - Used with C_VoiceChat.SpeakText().
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.GetVoiceOptionID(voiceType)
end

---
---@param voiceType Enum.TtsVoiceType 
---@return string voiceName 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.GetVoiceOptionName(voiceType)
end

---
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.MarkCharacterSettingsSaved()
end

---
---@param channelInfo ChatChannelInfo 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.SetChannelEnabled(channelInfo)
end

---
---@param channelKey string 
---@param newVal boolean ? = false
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.SetChannelKeyEnabled(channelKey, newVal)
end

---
---@param chatName string 
---@param newVal boolean ? = false
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.SetChatTypeEnabled(chatName, newVal)
end

---
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.SetDefaultSettings()
end

---
---@param setting Enum.TtsBoolSetting 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.SetSetting(setting)
end

---
---@param newVal number 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.SetSpeechRate(newVal)
end

---
---@param newVal number 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.SetSpeechVolume(newVal)
end

---
---@param voiceType Enum.TtsVoiceType 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.SetVoiceOption(voiceType)
end

---
---@param voiceType Enum.TtsVoiceType 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_TTSSettings.SetVoiceOptionName(voiceType)
end

---
---@param language number 
---@param messageText string 
---@return boolean overrideMessage 
---@since Patch 10.0.7 (2023-03-21): Added messageText argument.
function C_TTSSettings.ShouldOverrideMessage(language, messageText)
end
