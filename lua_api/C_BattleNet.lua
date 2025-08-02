-- C_BattleNet API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_BattleNet
C_BattleNet = {}

---Returns information about a Battle.net friend account.
---@param friendIndex number - Index ranging from 1 to BNGetNumFriends()
---@param wowAccountGUID string ? : BNetAccountGUID
---@return BNetAccountInfo accountInfo ?
---@since Patch 11.0.5 (2024-10-22): Removed isWowMobile field.
function C_BattleNet.GetAccountInfoByGUID(friendIndex, wowAccountGUID)
end

---Returns information about a Battle.net friend account.
---@param friendIndex number - Index ranging from 1 to BNGetNumFriends()
---@param wowAccountGUID string ? : BNetAccountGUID
---@return BNetAccountInfo accountInfo ?
---@since Patch 11.0.5 (2024-10-22): Removed isWowMobile field.
function C_BattleNet.GetAccountInfoByID(friendIndex, wowAccountGUID)
end

---Returns information about a Battle.net friend account.
---@param friendIndex number - Index ranging from 1 to BNGetNumFriends()
---@param wowAccountGUID string ? : BNetAccountGUID
---@return BNetAccountInfo accountInfo ?
---@since Patch 11.0.5 (2024-10-22): Removed isWowMobile field.
function C_BattleNet.GetFriendAccountInfo(friendIndex, wowAccountGUID)
end

---Returns information on the game the Battle.net friend is playing.
---@param friendIndex number - Index ranging from 1 to BNGetNumFriends()
---@param accountIndex number - Index ranging from 1 to C_BattleNet.GetFriendNumGameAccounts()
---@return BNetGameAccountInfo gameAccountInfo ?
---@since Patch 8.2.5 (2019-09-24): Changed to C_BattleNet.GetFriendGameAccountInfo and C_BattleNet.GetGameAccountInfoByID().[1]
function C_BattleNet.GetFriendGameAccountInfo(friendIndex, accountIndex)
end

---Returns the number of game accounts for the Battle.net friend.
---@param friendIndex number - The Battle.net friend's index on the friends list ranging from 1 to BNGetNumFriends()
---@return number numGameAccounts - The number of accounts or 0 if friend is not online.
---@since Patch 8.2.5 (2019-09-24): Changed to C_BattleNet.GetFriendNumGameAccounts()
function C_BattleNet.GetFriendNumGameAccounts(friendIndex)
end

---Returns information on the game the Battle.net friend is playing.
---@param friendIndex number - Index ranging from 1 to BNGetNumFriends()
---@param accountIndex number - Index ranging from 1 to C_BattleNet.GetFriendNumGameAccounts()
---@return BNetGameAccountInfo gameAccountInfo ?
---@since Patch 8.2.5 (2019-09-24): Changed to C_BattleNet.GetFriendGameAccountInfo and C_BattleNet.GetGameAccountInfoByID().[1]
function C_BattleNet.GetGameAccountInfoByGUID(friendIndex, accountIndex)
end

---Returns information on the game the Battle.net friend is playing.
---@param friendIndex number - Index ranging from 1 to BNGetNumFriends()
---@param accountIndex number - Index ranging from 1 to C_BattleNet.GetFriendNumGameAccounts()
---@return BNetGameAccountInfo gameAccountInfo ?
---@since Patch 8.2.5 (2019-09-24): Changed to C_BattleNet.GetFriendGameAccountInfo and C_BattleNet.GetGameAccountInfoByID().[1]
function C_BattleNet.GetGameAccountInfoByID(friendIndex, accountIndex)
end
