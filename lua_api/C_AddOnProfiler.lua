-- C_AddOnProfiler API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_AddOnProfiler
C_AddOnProfiler = {}

---Adds a measured event to any ongoing measured calls. If no such calls are currently taking place, this function does nothing.
---@param name stringView - User-defined string describing the measured event. This should be kept under 48 bytes to avoid memory allocations.
function C_AddOnProfiler.AddMeasuredCallEvent(name)
end

---Internal API for telemetry.
---@param msg AddOnPerformanceMessage 
function C_AddOnProfiler.AddPerformanceMessageShown(msg)
end

---Optimized check for determining if AddOns are severely impacting UI performance.
---@return AddOnPerformanceMessage msg 
function C_AddOnProfiler.CheckForPerformanceMessage()
end

---Returns an addon specific performance metric
---@param name string - The name of the addon to be queried. Blizzard addons cannot be queried.
---@param metric number - Enum.AddOnProfilerMetric
---@return number result - The value corresponding to the requested metric. Time values are measured in milliseconds.
function C_AddOnProfiler.GetAddOnMetric(name, metric)
end

---Overall profiling data for the entire application (not just the UI)
---@param metric number Enum.AddOnProfilerMetric
---@return number result - The value corresponding to the requested metric. Time values are measured in milliseconds.
function C_AddOnProfiler.GetApplicationMetric(metric)
end

---Returns the specified performance metric, measured across all user-installed addons.
---@param metric number Enum.AddOnProfilerMetric
---@return number result - The value corresponding to the requested metric. Time values are measured in milliseconds.
function C_AddOnProfiler.GetOverallMetric(metric)
end

---Returns the number of profiling clock ticks that occur within a single real-time second.
---@return number frequency : BigInteger
function C_AddOnProfiler.GetTicksPerSecond()
end

---Get the top K addons for a given metric
---@param metric number - Enum.AddOnProfilerMetric
---@param k number - number of results to return
---@return AddOnProfilerResult results [] - Returns the top K addons for a given metric.
function C_AddOnProfiler.GetTopKAddOnsForMetric(metric, k)
end

---Returns whether profiling is enabled. Currently this is always true.
---@return boolean enabled - True if profiling is enabled. Currently this is always true.
function C_AddOnProfiler.IsEnabled()
end

---Performs a profiled measurement of a single function call with any supplied arguments.
---@param func table LuaValueVariant
---@return AddOnProfilerCallResults results 
function C_AddOnProfiler.MeasureCall(func)
end
