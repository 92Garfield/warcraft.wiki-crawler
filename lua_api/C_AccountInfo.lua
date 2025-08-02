-- C_AccountInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_AccountInfo
C_AccountInfo = {}

---Converts a battle.net account GUID to battle.net ID.
---@param battleNetAccountGUID string WOWGUID
---@return number battleNetAccountID 
---@since Patch 8.1.5 (2019-03-12): Added.
function C_AccountInfo.GetIDFromBattleNetAccountGUID(battleNetAccountGUID)
end

---Returns whether a GUID is a batle.net account type.
---@param guid string WOWGUID
---@return boolean isBNet 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AccountInfo.IsGUIDBattleNetAccountType(guid)
end

---Returns whether a GUID is related to the local (self) account.
---@param guid string WOWGUID
---@return boolean isLocalUser 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_AccountInfo.IsGUIDRelatedToLocalAccount(guid)
end
