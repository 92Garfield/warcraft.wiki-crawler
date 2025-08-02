-- C_GamePad API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_GamePad
C_GamePad = {}

---
---@param platform Enum.ClientPlatformType 
---@return boolean success 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_GamePad.AddSDLMapping(platform)
end

---
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.ApplyConfigs()
end

---
---@param axisIndex number 
---@return string configName ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.AxisIndexToConfigName(axisIndex)
end

---Converts the name of a keybinding to its assigned gamepad button index. Returns nil if no gamepad button is assigned to the requested keybinding.
---@param bindingName string 
---@return number buttonIndex ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.ButtonBindingToIndex(bindingName)
end

---Returns the name of the keybinding assigned to a specified gamepad button index. Returns nil if no keybinding is assigned to the requested button.
---@param buttonIndex number 
---@return string bindingName ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.ButtonIndexToBinding(buttonIndex)
end

---
---@param buttonIndex number 
---@return string configName ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.ButtonIndexToConfigName(buttonIndex)
end

---
---@since Patch 9.2.0 (2022-02-22): Added.
function C_GamePad.ClearLedColor()
end

---
---@param configID GamePadConfigID 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.DeleteConfig(configID)
end

---
---@return number deviceID 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.GetActiveDeviceID()
end

---
---@return GamePadConfigID configIDs []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.GetAllConfigIDs()
end

---
---@return number deviceIDs []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.GetAllDeviceIDs()
end

---
---@return number deviceID 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.GetCombinedDeviceID()
end

---
---@param configID GamePadConfigID 
---@return GamePadConfig config ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.GetConfig(configID)
end

---
---@param deviceID number ?
---@return GamePadMappedState state ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.GetDeviceMappedState(deviceID)
end

---
---@param deviceID number 
---@return GamePadRawState rawState ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.GetDeviceRawState(deviceID)
end

---
---@return ColorMixin color 🔗
---@since Patch 9.2.0 (2022-02-22): Added.
function C_GamePad.GetLedColor()
end

---
---@param deviceID number ?
---@return GamePadPowerLevel powerLevel 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_GamePad.GetPowerLevel(deviceID)
end

---Returns true if gamepad support is enabled on this system.
---@return boolean enabled 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.IsEnabled()
end

---
---@param config GamePadConfig 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.SetConfig(config)
end

---
---@param color ColorMixin 🔗
---@since Patch 9.2.0 (2022-02-22): Added.
function C_GamePad.SetLedColor(color)
end

---Makes the gamepad vibrate.
---@param vibrationType string ["Low", "High", "LTrigger", "RTrigger"]
---@param intensity number [0.0-1.0]
---@since Patch 9.1.5 (2021-11-02): Added.
function C_GamePad.SetVibration(vibrationType, intensity)
end

---
---@param stickIndex number 
---@return string configName ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_GamePad.StickIndexToConfigName(stickIndex)
end

---
---@since Patch 9.1.5 (2021-11-02): Added.
function C_GamePad.StopVibration()
end
