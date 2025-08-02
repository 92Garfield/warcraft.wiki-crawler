-- C_SplashScreen API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_SplashScreen
C_SplashScreen = {}

---
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SplashScreen.AcknowledgeSplash()
end

---
---@return boolean canView 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SplashScreen.CanViewSplashScreen()
end

---
---@param fromGameMenu boolean 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SplashScreen.RequestLatestSplashScreen(fromGameMenu)
end

---
function C_SplashScreen.SendSplashScreenActionLaunchedTelem()
end

---
function C_SplashScreen.SendSplashScreenCloseTelem()
end
