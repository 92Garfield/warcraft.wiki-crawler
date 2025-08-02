-- C_Sound API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Sound
C_Sound = {}

---
---@param soundHandle number 
---@return number scaledVolume 
function C_Sound.GetSoundScaledVolume(soundHandle)
end

---
---@param soundHandle number 
---@return boolean isPlaying 
function C_Sound.IsPlaying(soundHandle)
end

---
---@param soundType Enum.ItemSoundType 
function C_Sound.PlayItemSound(soundType)
end

---
---@param vocalErrorSoundID Enum.Vocalerrorsounds 
function C_Sound.PlayVocalErrorSound(vocalErrorSoundID)
end
