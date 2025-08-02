-- C_FriendList API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_FriendList
C_FriendList = {}

---#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.
---@param name string - The name of the player you would like to add.
---@param notes string ? - The note that will show in your friend list.
---@since Patch 9.1.5 (2021-11-02): Protected when called from a (macro) script.
function C_FriendList.AddFriend(name, notes)
end

---Adds a player to your ignore list.
---@param name string - the name of the player you would like to ignore.
---@return boolean added - whether the player was succesfully added to your ignore list. This seems to only return false when trying to ignore someone who is already being ignored, otherwise true.
---@since Patch 8.1.0 (2018-12-11): Moved into C_FriendList. The former alias AddIgnore is deprecated and will be removed in the following expansion.
function C_FriendList.AddIgnore(name)
end

---Adds or removes a player to/from the ignore list.
---@param name string - the name of the player to add or remove.
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList. The former alias AddOrDelIgnore is deprecated and will be removed in the following expansion.
function C_FriendList.AddOrDelIgnore(name)
end

---Adds or removes a player to or from the friends list.
---@param name string - The name of the player to add or remove.
---@param notes string - (Required) The note in the friends frame.
function C_FriendList.AddOrRemoveFriend(name, notes)
end

---Removes a player from your ignore list.
---@param name string - the name of the player you would like to remove from your ignore list.
---@return boolean removed - whether the player was succesfully removed from your ignore list.
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList. The former alias DelIgnore is deprecated and will be removed in the following expansion.
function C_FriendList.DelIgnore(name)
end

---Removes a player from your ignore list.
---@param index number - index of the player you would like to remove.
---@since Patch 8.1.0 (2018-12-11): Added.
function C_FriendList.DelIgnoreByIndex(index)
end

---Retrieves information about a person on your friends list.
---@param name string - name of friend in the friend list.
---@return FriendInfo info 
---@since Patch 11.0.5 (2024-10-22): Removed mobile field.
function C_FriendList.GetFriendInfo(name)
end

---Retrieves information about a person on your friends list.
---@param name string - name of friend in the friend list.
---@return FriendInfo info 
---@since Patch 11.0.5 (2024-10-22): Removed mobile field.
function C_FriendList.GetFriendInfoByIndex(name)
end

---Returns the name of a currently ignored player.
---@param index number - index of the ignored player, up to C_FriendList.GetNumIgnores (max 50).
---@return string name ? - name of the ignored player.
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList. The former alias GetIgnoreName is deprecated and will be removed in the following expansion.
function C_FriendList.GetIgnoreName(index)
end

---Returns how many friends you have.
---@return number numFriends - the number of friends you have (max 100).
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList. The former alias GetNumFriends() is deprecated.
function C_FriendList.GetNumFriends()
end

---Returns the number of entries on your ignore list.
---@return number numIgnores - the number of players on your ignore list (max 50).
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList. The former alias GetNumIgnores is deprecated and will be removed in the following expansion.
function C_FriendList.GetNumIgnores()
end

---Returns the number of online friends.
---@return number numOnline - the number of online friends.
---@since Patch 8.1.0 (2018-12-11): Added.
function C_FriendList.GetNumOnlineFriends()
end

---Get the number of entries resulting from your most recent /who query.
---@return number numWhos - Number of results returned
---@return number totalNumWhos - Number of results to display
function C_FriendList.GetNumWhoResults()
end

---Returns the index of the currently selected friend.
---@return number index ? - The index of the friend which is currently selected on the friend list. Returns nil if you have no friends.
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList. The former alias GetSelectedFriend is deprecated and will be removed in the following expansion.
function C_FriendList.GetSelectedFriend()
end

---Returns the currently selected index in the ignore listing.
---@return number index ? - the index of the ignored player which is currently selected on the friend list. Returns nil if you have nobody ignored.
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList. The former alias GetSelectedIgnore is deprecated and will be removed in the following expansion.
function C_FriendList.GetSelectedIgnore()
end

---Retrieves info about a character on your current /who list.
---@param index number - Index 1 up to C_FriendList.GetNumWhoResults()
---@return WhoInfo info 
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList.GetWhoInfo()[1]
function C_FriendList.GetWhoInfo(index)
end

---Returns whether a character is your friend.
---@param guid string GUID
---@return boolean isFriend - whether the character is your friend.
---@since Patch 8.1.0 (2018-12-11): Changed to C_FriendList.IsFriend()
function C_FriendList.IsFriend(guid)
end

---Returns whether a character is being ignored by you.
---@param token string - The UnitId or name of the character.
---@return boolean isIgnored - whether the character is ignored.
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList. The previous alias IsIgnored is deprecated and will be removed in the next expansion.
function C_FriendList.IsIgnored(token)
end

---Returns whether a character is being ignored by you.
---@param guid string - GUID of the character.
---@return boolean isIgnored - whether the character is ignored.
---@since Patch 8.1.0 (2018-12-11): Added.
function C_FriendList.IsIgnoredByGuid(guid)
end

---
---@param token string 
---@return boolean isIgnored 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_FriendList.IsOnIgnoredList(token)
end

---Removes a friend from the friends list.
---@param name string - the name of the friend to remove.
---@return boolean removed - whether the friend was successfully removed.
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList. The previous alias RemoveFriend is deprecated and will be removed in the next expansion.
function C_FriendList.RemoveFriend(name)
end

---Removes a friend from the friends list.
---@param index number - the index of the friend in the friends list to remove.
---@since Patch 8.1.0 (2018-12-11): Added.
function C_FriendList.RemoveFriendByIndex(index)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param filter string - The criteria for which you want to perform a Who query. This can be anything for which you could normally search in a Who query
---@since Patch 10.2.0 (2023-11-07): Added origin argument.
function C_FriendList.SendWho(filter)
end

---Sets the note text for a friend.
---@param name string - name of friend in the friend list.
---@param notes string - the text that the friends note will be set to, up to 48 characters, anything longer will be truncated.
---@return boolean found - Whether the friend's note was successfully set.
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList. The former alias SetFriendNotes is deprecated and will be removed in the following expansion.
function C_FriendList.SetFriendNotes(name, notes)
end

---Sets the note text for a friend.
---@param index number - index of the friend, up to C_FriendList.GetNumFriends (max 100). Note that status changes can re-order the friend list, indices are not guaranteed to remain stable across events.
---@param notes string - the text that the friends note will be set to, up to 48 characters, anything longer will be truncated.
---@since Patch 8.1.0 (2018-12-11): Added.
function C_FriendList.SetFriendNotesByIndex(index, notes)
end

---Updates the current selected friend.
---@param index number - the index of the friend to be selected.
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList. The former alias SetSelectedFriend is deprecated and will be removed in the following expansion.
function C_FriendList.SetSelectedFriend(index)
end

---Sets the currently selected ignore entry.
---@param index number - the index of the ignored player to be selected.
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList. The former alias SetSelectedIgnore is deprecated and will be removed in the following expansion.
function C_FriendList.SetSelectedIgnore(index)
end

---Sets how the result of a /who request will be delivered.
---@param whoToUi boolean = false - If true the results will always be delivered as a WHO_LIST_UPDATE event and displayed in the FriendsFrame. If false the results may be returned as a sequence of CHAT_MSG_SYSTEM events (up to 3 results) or a WHO_LIST_UPDATE event (4+ results).
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList.SetWhoToUi() ⚠️ Note the lowercase i at the end.
function C_FriendList.SetWhoToUi(whoToUi)
end

---Requests updated friends information from server.
---@since Patch 9.0.1 (2020-10-13): As of this or an earlier patch, the FRIENDLIST_UPDATE event is no longer triggered by this.
function C_FriendList.ShowFriends()
end

---Sorts the last /who reply received by the client.
---@param sorting  "name" (default), "level", "class", "zone", "guild", "race"
---@since Patch 8.1.0 (2018-12-11): Moved to C_FriendList. The former alias SortWho is deprecated and will be removed in the following expansion.[1]
function C_FriendList.SortWho(sorting)
end
