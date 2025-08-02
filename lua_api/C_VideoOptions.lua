-- C_VideoOptions API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_VideoOptions
C_VideoOptions = {}

---
---@return Vector2DMixin size 🔗
function C_VideoOptions.GetCurrentGameWindowSize()
end

---
---@param monitor number 
---@return Vector2DMixin size 🔗
function C_VideoOptions.GetDefaultGameWindowSize(monitor)
end

---
---@param monitor number 
---@param fullscreen boolean 
---@return table sizes [] : vector2
function C_VideoOptions.GetGameWindowSizes(monitor, fullscreen)
end

---Returns info about the system's graphics adapter.
---@return  adapters structure - GxAdapterInfoDetails[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_VideoOptions.GetGxAdapterInfo()
end

---
---@param x number 
---@param y number 
function C_VideoOptions.SetGameWindowSize(x, y)
end
