-- C_WorldLootObject API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_WorldLootObject
C_WorldLootObject = {}

---
---@param slot number 
---@param inventoryType Enum.InventoryType 🔗
---@return boolean matches 
function C_WorldLootObject.DoesSlotMatchInventoryType(slot, inventoryType)
end

---
---@param unitToken string UnitToken
---@return number distanceSquared ?
function C_WorldLootObject.GetWorldLootObjectDistanceSquared(unitToken)
end

---
---@param unitToken string UnitToken
---@return WorldLootObjectInfo info 
function C_WorldLootObject.GetWorldLootObjectInfo(unitToken)
end

---
---@param objectGUID string WOWGUID
---@return WorldLootObjectInfo info 
function C_WorldLootObject.GetWorldLootObjectInfoByGUID(objectGUID)
end

---
---@param unitToken string UnitToken
---@return boolean isWorldLootObject 
function C_WorldLootObject.IsWorldLootObject(unitToken)
end

---
---@param guid string WOWGUID
---@return boolean isWorldLootObject 
function C_WorldLootObject.IsWorldLootObjectByGUID(guid)
end

---
---@param unitToken string UnitToken
---@return boolean isWorldLootObjectInRange 
function C_WorldLootObject.IsWorldLootObjectInRange(unitToken)
end

---
---@param unitToken string UnitToken
---@param isLeftClick boolean 
---@since Patch 11.0.7 (2024-12-17): Added isLeftClick argument.
function C_WorldLootObject.OnWorldLootObjectClick(unitToken, isLeftClick)
end
