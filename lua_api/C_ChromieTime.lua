-- C_ChromieTime API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ChromieTime
C_ChromieTime = {}

---Closes the timewalking campaign selection UI, triggering the `CHROMIE_TIME_CLOSE` event.
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ChromieTime.CloseUI()
end

---Returns information about a Timewalking Campaign.
---@param expansionRecID number 
---@return ChromieTimeExpansionInfo info ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ChromieTime.GetChromieTimeExpansionOption(expansionRecID)
end

---Returns a table listing all available Timewalking Campaigns.
---@return ChromieTimeExpansionInfo expansionOptions []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ChromieTime.GetChromieTimeExpansionOptions()
end

---Requests that the player be assigned to a specified timewalking expansion campaign.
---@param chromieTimeExpansionInfoId number UIChromieTimeExpansionInfo.ID
---@since Patch 9.0.1 (2020-10-13): Added.
function C_ChromieTime.SelectChromieTimeOption(chromieTimeExpansionInfoId)
end
