-- C_CreatureInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_CreatureInfo
C_CreatureInfo = {}

---Returns info for a class by ID.
---@param classID number ClassId - Ranging from 1 to the highest classID. For Retail, that's the same as GetNumClasses().
---@return ClassInfo classInfo ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_CreatureInfo.GetClassInfo(classID)
end

---Returns all creature family IDs.
---@return number creatureFamilyIDs [] - An array of creature family IDs.
function C_CreatureInfo.GetCreatureFamilyIDs()
end

---Returns info for a creature family id.
---@param creatureFamilyID number 
---@return CreatureFamilyInfo creatureFamilyInfo ?
function C_CreatureInfo.GetCreatureFamilyInfo(creatureFamilyID)
end

---Returns all creature type IDs.
---@return number creatureTypeIDs [] - An array of creature type IDs.
function C_CreatureInfo.GetCreatureTypeIDs()
end

---Returns info for a creature type id.
---@param creatureTypeID number 
---@return CreatureTypeInfo creatureTypeInfo ?
function C_CreatureInfo.GetCreatureTypeInfo(creatureTypeID)
end

---Returns the faction name for a race.
---@param raceID number 
---@return  factionInfo structure - FactionInfo (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_CreatureInfo.GetFactionInfo(raceID)
end

---Returns both localized and locale-independent race names.
---@param raceID number 
---@return  raceInfo structure - RaceInfo (nilable)
---@since Patch 8.0.1 (2018-07-17): Added.
function C_CreatureInfo.GetRaceInfo(raceID)
end
