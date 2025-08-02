-- C_Calendar API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Calendar
C_Calendar = {}

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.#nofreetrial - This is not available to Free Trial / non-subscriber accounts.
---@since Patch 8.0.1 (2018-07-17): Moved to C_Calendar.AddEvent.
function C_Calendar.AddEvent()
end

---
---@return boolean ready 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.AreNamesReady()
end

---Returns whether the player can add an event.
---@return boolean canAddEvent 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.CanAddEvent()
end

---Returns whether the player can send invites.
---@return boolean canSendInvite 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.CanSendInvite()
end

---Closes the selected event without saving it.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.CloseEvent()
end

---Returns whether the player can report the event as spam.
---@param offsetMonths number 
---@param monthDay number 
---@param eventIndex number 
---@return boolean canComplain 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuEventCanComplain(offsetMonths, monthDay, eventIndex)
end

---Returns whether the player can edit the event.
---@param offsetMonths number 
---@param monthDay number 
---@param eventIndex number 
---@return boolean canEdit 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuEventCanEdit(offsetMonths, monthDay, eventIndex)
end

---Returns whether the player can remove the event.
---@param offsetMonths number 
---@param monthDay number 
---@param eventIndex number 
---@return boolean canRemove 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuEventCanRemove(offsetMonths, monthDay, eventIndex)
end

---
---@return boolean exists 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuEventClipboard()
end

---Copies the event to the clipboard.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuEventCopy()
end

---
---@return string calendarType ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuEventGetCalendarType()
end

---Pastes the clipboard event to the date.
---@param offsetMonths number 
---@param monthDay number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuEventPaste(offsetMonths, monthDay)
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuEventRemove()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuEventSignUp()
end

---
---@return  info structure - CalendarEventIndexInfo
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuGetEventIndex()
end

---Accepts the invitation to the event.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuInviteAvailable()
end

---Declines the invitation to the event.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuInviteDecline()
end

---Removes the event from the calendar.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuInviteRemove()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuInviteTentative()
end

---
---@param offsetMonths number 
---@param monthDay number 
---@param eventIndex number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.ContextMenuSelectEvent(offsetMonths, monthDay, eventIndex)
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.CreateCommunitySignUpEvent()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.CreateGuildAnnouncementEvent()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.CreateGuildSignUpEvent()
end

---Creates a new calendar event candidate for the player.
---@since Patch 8.0.1 (2018-07-17): Moved to C_Calendar.CreatePlayerEvent.
function C_Calendar.CreatePlayerEvent()
end

---Accepts the invitation to the currently open event.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventAvailable()
end

---Returns whether the event can be edited.
---@return boolean canEdit 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventCanEdit()
end

---Turns off automatic confirmations.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventClearAutoApprove()
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventClearLocked()
end

---
---@param inviteIndex number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventClearModerator(inviteIndex)
end

---Declines the invitation to the currently open event.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventDecline()
end

---
---@return string calendarType ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventGetCalendarType()
end

---
---@return string info ?
---@since Patch 8.1.0 (2018-12-11): Added.
function C_Calendar.EventGetClubId()
end

---Returns status information for an invitee for the currently opened event.
---@param eventIndex number - Ranging from 1 to C_Calendar.GetNumInvites()
---@return CalendarEventInviteInfo info 
---@since Patch 8.2.5 (2019-09-24): Added classID, guid fields.
function C_Calendar.EventGetInvite(eventIndex)
end

---
---@param eventIndex number 
---@return  time Structure - CalendarTime
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventGetInviteResponseTime(eventIndex)
end

---
---@return string criterion 
---@return boolean reverse 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventGetInviteSortCriterion()
end

---
---@return number inviteIndex ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventGetSelectedInvite()
end

---
---@param eventIndex number 
---@return CalendarEventStatusOption options []
---@since Patch 9.0.1 (2020-10-13): Added status field.
function C_Calendar.EventGetStatusOptions(eventIndex)
end

---
---@param eventType  enum - CalendarEventType
---@return  textures structure - CalendarEventTextureInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventGetTextures(eventType)
end

---
---@return string types [] - See also Enum.CalendarEventType
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventGetTypes()
end

---
---@return  infos structure - CalendarEventTypeDisplayInfo[]
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventGetTypesDisplayOrdered()
end

---Returns whether the player has an unanswered invitation to the currently selected event.
---@return boolean hasPendingInvite 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventHasPendingInvite()
end

---Returns whether the currently opened event has been modified.
---@return boolean haveSettingsChanged 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventHaveSettingsChanged()
end

---Invites a player to the currently selected event.
---@param name string 
---@since Patch 8.0.1 (2018-07-17): Moved to C_Calendar.EventInvite.
function C_Calendar.EventInvite(name)
end

---
---@param inviteIndex number 
---@since Patch 8.2.5 (2019-09-24): Added C_Calendar.EventRemoveInviteByGuid()
function C_Calendar.EventRemoveInvite(inviteIndex)
end

---
---@param inviteIndex number 
---@since Patch 8.2.5 (2019-09-24): Added C_Calendar.EventRemoveInviteByGuid()
function C_Calendar.EventRemoveInviteByGuid(inviteIndex)
end

---
---@param inviteIndex number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventSelectInvite(inviteIndex)
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventSetAutoApprove()
end

---
---@param clubId string ?
---@since Patch 8.1.0 (2018-12-11): Added.
function C_Calendar.EventSetClubId(clubId)
end

---Sets the date for the currently opened event.
---@param month number - 2 digits [1-12].
---@param monthDay number - 2 digits [1-31].
---@param year number - 4 digits (2019).
---@since Patch 8.0.1 (2018-07-17): Moved to C_Calendar.EventSetDate.
function C_Calendar.EventSetDate(month, monthDay, year)
end

---
---@param description string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventSetDescription(description)
end

---Sets the invitation status of a player to the current event.
---@param eventIndex number 
---@param status Enum.CalendarStatus 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventSetInviteStatus(eventIndex, status)
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventSetLocked()
end

---
---@param inviteIndex number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventSetModerator(inviteIndex)
end

---
---@param textureIndex number - NOT a FileDataID, but an index relating to the returned table of API_C_Calendar.EventGetTextures. You cannot set a custom texture, or even one outside the chosen event type. Therefore, this function currently only has an effect when using the types Raid and Dungeon.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventSetTextureID(textureIndex)
end

---Sets the time for the currently opened event.
---@param hour number 
---@param minute number 
---@since Patch 8.0.1 (2018-07-17): Moved to C_Calendar.EventSetTime.
function C_Calendar.EventSetTime(hour, minute)
end

---Sets the title for the currently opened event.
---@param title string 
---@since Patch 8.0.1 (2018-07-17): Moved to C_Calendar.EventSetTitle.
function C_Calendar.EventSetTitle(title)
end

---Sets the event type for the current calendar event.
---@param typeIndex  enum - CalendarEventType
---@since Patch 8.0.1 (2018-07-17): Moved to C_Calendar.EventSetType.
function C_Calendar.EventSetType(typeIndex)
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventSignUp()
end

---
---@param criterion string 
---@param reverse boolean 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventSortInvites(criterion, reverse)
end

---
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.EventTentative()
end

---
---@param clubId string 
---@param startTime CalendarTime 
---@param endTime CalendarTime 
---@return CalendarDayEvent events []
---@since Patch 8.1.0 (2018-12-11): Added.
function C_Calendar.GetClubCalendarEvents(clubId, startTime, endTime)
end

---Retrieve information about the specified calendar event.
---@param monthOffset number - the number of months to offset from today.
---@param monthDay number - the desired day of the month the event exists on.
---@param index number -  the index of the desired event, from 1 through C_Calendar.GetNumDayEvents.
---@return CalendarDayEvent event 
---@since Patch 7.2.0 (2017-03-28): Returns structured data and moved to C_Calendar.GetDayEvent()[3]
function C_Calendar.GetDayEvent(monthOffset, monthDay, index)
end

---
---@return  info structure - CalendarGuildFilterInfo
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.GetDefaultGuildFilter()
end

---
---@return  info structure - CalendarEventIndexInfo
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.GetEventIndex()
end

---
---@param eventID string 
---@param monthOffset number ?
---@param monthDay number ?
---@return  eventIndexInfo structure - CalendarEventIndexInfo (nilable)
---@since Patch 8.1.0 (2018-12-11): Added.
function C_Calendar.GetEventIndexInfo(eventID, monthOffset, monthDay)
end

---Returns info for a calendar event.
---@return CalendarEventInfo info 
function C_Calendar.GetEventInfo()
end

---
---@param offsetMonths number 
---@param monthDay number 
---@return number firstPendingInvite ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.GetFirstPendingInvite(offsetMonths, monthDay)
end

---
---@param index number 
---@return CalendarGuildEventInfo info 
---@since Patch 8.1.5 (2019-03-12): Added eventID, year, inviteStatus, clubID fields.
function C_Calendar.GetGuildEventInfo(index)
end

---
---@param index number 
---@return  info structure - CalendarEventIndexInfo
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.GetGuildEventSelectionInfo(index)
end

---Returns seasonal holiday info.
---@param monthOffset number - The offset from the current month (only accepts 0 or 1).
---@param monthDay number - The day of the month.
---@param index number 
---@return CalendarHolidayInfo event 
---@since Patch 7.2.0 (2017-03-28): Returns structured data and moved to C_Calendar.GetHolidayInfo()[1]
function C_Calendar.GetHolidayInfo(monthOffset, monthDay, index)
end

---Returns the last day supported by the Calendar API.
---@return  maxCreateDate structure - CalendarTime
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.GetMaxCreateDate()
end

---Returns the first day supported by the Calendar API.
---@return  minDate structure - CalendarTime
---@since Patch 8.0.1 (2018-07-17): Moved to C_Calendar.GetMinDate.
function C_Calendar.GetMinDate()
end

---Returns information about the calendar month by offset.
---@param offsetMonths number ? = 0 - Offset in months from the currently selected Calendar month, positive numbers indicating future months.
---@return  monthInfo structure - CalendarMonthInfo
---@since Patch 8.0.1 (2018-07-17): Moved to C_Calendar.GetMonthInfo.
function C_Calendar.GetMonthInfo(offsetMonths)
end

---
---@return string clubId ?
---@since Patch 8.1.0 (2018-12-11): Added.
function C_Calendar.GetNextClubId()
end

---Returns the number of events for a given day/month offset.
---@param offsetMonths number - The number of months to advance from today.
---@param monthDay number - The day of the given month.
---@return number numDayEvents - The number of events on the day in question.
---@since Patch 8.0.1 (2018-07-17): Moved to C_Calendar.GetNumDayEvents.
function C_Calendar.GetNumDayEvents(offsetMonths, monthDay)
end

---
---@return number numGuildEvents 
---@since Patch 8.0.1 (2018-07-17): Added. Possible the same functionality as GetNumGuildEvents.
function C_Calendar.GetNumGuildEvents()
end

---Returns the number of invitees for the currently opened event.
---@return number num 
---@since Patch 8.0.1 (2018-07-17): Moved to C_Calendar.GetNumInvites.
function C_Calendar.GetNumInvites()
end

---
---@return number num 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.GetNumPendingInvites()
end

---
---@param offsetMonths number 
---@param monthDay number 
---@param eventIndex number 
---@return  info structure - CalendarRaidInfo
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.GetRaidInfo(offsetMonths, monthDay, eventIndex)
end

---
---@return boolean actionPending 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.IsActionPending()
end

---
---@return boolean isOpen 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_Calendar.IsEventOpen()
end

---
---@param clubId string 
---@param minLevel number 
---@param maxLevel number 
---@param maxRankOrder number ?
---@since Patch 8.1.0 (2018-12-11): Added clubId argument.
function C_Calendar.MassInviteCommunity(clubId, minLevel, maxLevel, maxRankOrder)
end

---
---@param minLevel number 
---@param maxLevel number 
---@param maxRankOrder number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.MassInviteGuild(minLevel, maxLevel, maxRankOrder)
end

---Requests calendar information from the server. Does not open the calendar frame.
---@since Patch 8.0.1 (2018-07-17): Moved to C_Calendar.OpenCalendar.
function C_Calendar.OpenCalendar()
end

---Establishes an event for future calendar API calls
---@param offsetMonths number - The number of months to offset from today.
---@param monthDay number - The day of the month on which the desired event is scheduled (1 - 31).
---@param index number - Ranging from 1 through C_Calendar.GetNumDayEvents(offsetMonths, monthDay).
---@return boolean success 
---@since Patch 8.1.5 (2019-03-12): Added success return.
function C_Calendar.OpenEvent(offsetMonths, monthDay, index)
end

---Removes the selected event from the calendar (invitees only).
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.RemoveEvent()
end

---Sets the reference month and year for functions which use a month offset.
---@param month number 
---@param year number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.SetAbsMonth(month, year)
end

---
---@param offsetMonths number 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Calendar.SetMonth(offsetMonths)
end

---
---@param clubId string ?
---@since Patch 8.1.0 (2018-12-11): Added.
function C_Calendar.SetNextClubId(clubId)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 8.0.1 (2018-07-17): Moved to C_Calendar.UpdateEvent.
function C_Calendar.UpdateEvent()
end
