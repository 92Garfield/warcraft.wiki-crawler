-- C_DateAndTime API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_DateAndTime
C_DateAndTime = {}

---Returns the date after a specified amount of days.
---@param date CalendarTime 
---@param days number 
---@return CalendarTime newDate 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_DateAndTime.AdjustTimeByDays(date, days)
end

---Returns the date after a specified amount of days.
---@param date CalendarTime 
---@param days number 
---@return CalendarTime newDate 
---@since Patch 8.1.0 (2018-12-11): Added.
function C_DateAndTime.AdjustTimeByMinutes(date, days)
end

---
---@param date CalendarTime 
---@param months number 
---@return CalendarTime newDate 
function C_DateAndTime.AdjustTimeByMonths(date, months)
end

---Compares two dates with eachother.
---@param lhsCalendarTime CalendarTime - left-hand side time
---@param rhsCalendarTime CalendarTime - right-hand side time
---@return  comparison -1 : rhsCalendarTime is at an earlier time
---@since Patch 8.1.0 (2018-12-11): Added.
function C_DateAndTime.CompareCalendarTime(lhsCalendarTime, rhsCalendarTime)
end

---Returns the date for a specified amount of time since the UNIX epoch for the OS time zone.
---@param epoch number - time in microseconds
---@return CalendarTime date 
---@since Patch 8.1.0 (2018-12-11): Moved to C_DateAndTime.GetCalendarTimeFromEpoch(), the previous alias is deprecated. [1]
function C_DateAndTime.GetCalendarTimeFromEpoch(epoch)
end

---Returns the realm's current date and time.
---@return CalendarTime currentCalendarTime 
---@since Patch 8.1.0 (2018-12-11): Moved to C_DateAndTime.GetCurrentCalendarTime(). The previous alias is deprecated [1]. See ConvertToOldStyleDate() for changes with the old format.
function C_DateAndTime.GetCurrentCalendarTime()
end

---
---@return number seconds 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_DateAndTime.GetSecondsUntilDailyReset()
end

---Returns the number of seconds until the weekly reset.
---@return number seconds 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_DateAndTime.GetSecondsUntilWeeklyReset()
end

---Returns the server's Unix time offset by the server's timezone.
---@return number serverTimeLocal - Time in seconds since the epoch, only updates every 60 seconds.
---@since Patch 8.1.5 (2019-03-12): Added.
function C_DateAndTime.GetServerTimeLocal()
end

---Returns the unix timestamp of the last weekly reset.
---@return number seconds : time_t
function C_DateAndTime.GetWeeklyResetStartTime()
end
