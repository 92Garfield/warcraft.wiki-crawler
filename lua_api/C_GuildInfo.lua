-- C_GuildInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_GuildInfo
C_GuildInfo = {}

---
---@return boolean enabled 
function C_GuildInfo.AreGuildEventsEnabled()
end

---Returns true if the player can edit guild officer notes.
---@return boolean canEditOfficerNote 
---@since Patch 8.2.0 (2019-06-25): Moved to C_GuildInfo.CanEditOfficerNote()
function C_GuildInfo.CanEditOfficerNote()
end

---Returns true if the player can use guild chat.
---@return boolean canSpeakInGuildChat 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_GuildInfo.CanSpeakInGuildChat()
end

---Returns true if the player can view guild officer notes.
---@return boolean canViewOfficerNote 
---@since Patch 8.2.0 (2019-06-25): Moved to C_GuildInfo.CanViewOfficerNote()
function C_GuildInfo.CanViewOfficerNote()
end

---#protected - This can only be called from secure code.
---@param name string 
function C_GuildInfo.Demote(name)
end

---#protected - This can only be called from secure code.
function C_GuildInfo.Disband()
end

---
---@param index number 
---@return  newsInfo structure - GuildNewsInfo
---@since Patch 8.2.0 (2019-06-25): Moved to C_GuildInfo.GetGuildNewsInfo. The previous alias is deprecated. [1]
function C_GuildInfo.GetGuildNewsInfo(index)
end

---Returns the current rank of a guild member.
---@param guid string 
---@return number rankOrder - Starting at 1 (Guild Master)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_GuildInfo.GetGuildRankOrder(guid)
end

---
---@param unit string UnitId
---@return  tabardInfo structure - GuildTabardInfo (nilable)
---@since Patch 8.3.0 (2020-01-14): Added.
function C_GuildInfo.GetGuildTabardInfo(unit)
end

---Returns the permission flags for a rank index.
---@param rankOrder number - Starting at 1 (Guild Master)
---@return boolean permissions [] - table indices ranging from 1 to 21.
---@since Patch 8.0.1 (2018-07-17): Added. Replaces GuildControlGetRankFlags.
function C_GuildInfo.GuildControlGetRankFlags(rankOrder)
end

---Requests updated guild roster information from the server.
---@since Patch 8.2.0 (2019-06-25): Moved to C_GuildInfo.GuildRoster()
function C_GuildInfo.GuildRoster()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param name string 
function C_GuildInfo.Invite(name)
end

---
---@return boolean enabled 
function C_GuildInfo.IsEncounterGuildNewsEnabled()
end

---
---@return boolean isOfficer 
---@since Patch 8.2.5 (2019-09-24): Added.
function C_GuildInfo.IsGuildOfficer()
end

---
---@param guid string 
---@param rankOrder number - Starting at 1 (Guild Master)
---@return boolean isGuildRankAssignmentAllowed 
---@since Patch 8.1.0 (2018-12-11): Added isGuildRankAssignmentAllowed return.
function C_GuildInfo.IsGuildRankAssignmentAllowed(guid, rankOrder)
end

---
---@return boolean enabled 
function C_GuildInfo.IsGuildReputationEnabled()
end

---#protected - This can only be called from secure code.
function C_GuildInfo.Leave()
end

---
---@param name string 
---@return boolean exists 
function C_GuildInfo.MemberExistsByName(name)
end

---#protected - This can only be called from secure code.
---@param name string 
function C_GuildInfo.Promote(name)
end

---Shows the guild member recipes for a profession.
---@param guildMemberGUID string 
---@param skillLineID number - Tradeskill ID
---@since Patch 8.0.1 (2018-07-17): Added.
function C_GuildInfo.QueryGuildMemberRecipes(guildMemberGUID, skillLineID)
end

---
---@param skillLineID number 
---@param recipeSpellID number 
---@param recipeLevel number ?
---@return number updatedRecipeSpellID 
---@since Patch 9.0.5 (2021-03-09): Moved to C_GuildInfo.QueryGuildMembersForRecipe()
function C_GuildInfo.QueryGuildMembersForRecipe(skillLineID, recipeSpellID, recipeLevel)
end

---Removes a member from the guild.
---@param guid string 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_GuildInfo.RemoveFromGuild(guid)
end

---
---@param desiredName string 
function C_GuildInfo.RequestGuildRename(desiredName)
end

---
function C_GuildInfo.RequestGuildRenameRefund()
end

---
---@param desiredName string 
function C_GuildInfo.RequestRenameNameCheck(desiredName)
end

---
---@return boolean ableToRequest 
---@since Patch 11.1.5 (2025-04-22): Added ableToRequest return value.
function C_GuildInfo.RequestRenameStatus()
end

---Sets the guild rank for a member.
---@param guid string 
---@param rankOrder number - Starting at 1 (Guild Master)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_GuildInfo.SetGuildRankOrder(guid, rankOrder)
end

---#protected - This can only be called from secure code.
---@param name string 
function C_GuildInfo.SetLeader(name)
end

---
---@param motd string 
function C_GuildInfo.SetMOTD(motd)
end

---Sets the guild note for a member.
---@param guid string 
---@param note string 
---@param isPublic boolean 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_GuildInfo.SetNote(guid, note, isPublic)
end

---#protected - This can only be called from secure code.
---@param name string 
function C_GuildInfo.Uninvite(name)
end
