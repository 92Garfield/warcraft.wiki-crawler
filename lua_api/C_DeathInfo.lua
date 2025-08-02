-- C_DeathInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_DeathInfo
C_DeathInfo = {}

---Returns the location of the player's corpse on the map.
---@param uiMapID number UiMapID
---@return Vector2DMixin position ?🔗 - Returns nil when there is no corpse.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_DeathInfo.GetCorpseMapPosition(uiMapID)
end

---When the player is dead and hasn't released spirit, returns the location of the graveyard they will release to.
---@param uiMapID number 
---@return Vector2DMixin position ?🔗
---@since Patch 8.0.1 (2018-07-17): Added.
function C_DeathInfo.GetDeathReleasePosition(uiMapID)
end

---Returns graveyard info and location for a map.
---@param uiMapID number UiMapID
---@return GraveyardMapInfo graveyards []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_DeathInfo.GetGraveyardsForMap(uiMapID)
end

---Returns self resurrect options for your character, including from soulstones.
---@return  options structure - SelfResurrectOption[]
---@since Patch 7.3.5 (2018-01-16): Added. Replaces HasSoulstone and CanUseSoulstone. [1]
function C_DeathInfo.GetSelfResurrectOptions()
end

---Uses a soulstone or similar means of self resurrection.
---@param optionType  Enum.SelfResurrectOptionType
---@param id number 
---@since Patch 7.3.5 (2018-01-16): Added. Replaces UseSoulstone. [1]
function C_DeathInfo.UseSelfResurrectOption(optionType, id)
end
