-- C_Mail API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Mail
C_Mail = {}

---
---@return boolean canCheckInbox 
---@return number secondsUntilAllowed 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_Mail.CanCheckInbox()
end

---
---@param inboxIndex number 
---@return CraftingOrderMailInfo info ?
function C_Mail.GetCraftingOrderMailInfo(inboxIndex)
end

---Returns true if a mail has money attached.
---@param inboxIndex number 
---@return boolean inboxItemHasMoneyAttached 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_Mail.HasInboxMoney(inboxIndex)
end

---Returns true if the current mail command is still processing.
---@return boolean isCommandPending 
---@since Patch 7.2.0 (2017-03-28): Added.
function C_Mail.IsCommandPending()
end

---
---@param openingAll boolean 
function C_Mail.SetOpeningAll(openingAll)
end
