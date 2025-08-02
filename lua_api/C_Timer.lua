-- C_Timer API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Timer
C_Timer = {}

---Prints "Hello" after 2.5 seconds.
---@param seconds number - Time in seconds before the timer finishes.
---@param callback function |FunctionContainer - Callback function to run.
function(cb: FunctionContainer)
---@since Patch 6.0.2 (2014-10-14): Added.[1]
function C_Timer.After(seconds, callback)
end

---Schedules a (repeating) timer that can be canceled.
---@param seconds number - Time in seconds between each iteration.
---@param callback function |FunctionContainer - Callback function to run. It will be supplied a view of the timer handle (cbObject) when invoked. The handle returned from the function and the one supplied to the callback are distinct objects that both reference a shared state.
function(cb: FunctionContainer)
---@return FunctionContainer cbObject - Timer handle with :Cancel(), :IsCancelled() and :Invoke() methods.
---@since Patch 10.0.0 (2022-10-25): Implementation moved to native code. APIs no longer accept non-function callback arguments, and now return userdata handles.
function C_Timer.NewTicker(seconds, callback)
end

---Schedules a (repeating) timer that can be canceled.
---@param seconds number - Time in seconds between each iteration.
---@param callback function |FunctionContainer - Callback function to run. It will be supplied a view of the timer handle (cbObject) when invoked. The handle returned from the function and the one supplied to the callback are distinct objects that both reference a shared state.
function(cb: FunctionContainer)
---@return FunctionContainer cbObject - Timer handle with :Cancel(), :IsCancelled() and :Invoke() methods.
---@since Patch 10.0.0 (2022-10-25): Implementation moved to native code. APIs no longer accept non-function callback arguments, and now return userdata handles.
function C_Timer.NewTimer(seconds, callback)
end
