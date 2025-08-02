-- C_ConsoleScriptCollection API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_ConsoleScriptCollection
C_ConsoleScriptCollection = {}

---
---@param collectionID number 
---@return ConsoleScriptCollectionData data ?
function C_ConsoleScriptCollection.GetCollectionDataByID(collectionID)
end

---
---@param collectionTag string 
---@return ConsoleScriptCollectionData data ?
function C_ConsoleScriptCollection.GetCollectionDataByTag(collectionTag)
end

---
---@param collectionID number 
---@return ConsoleScriptCollectionElementData elementIDs []
function C_ConsoleScriptCollection.GetElements(collectionID)
end

---
---@param consoleScriptID number 
---@return ConsoleScriptData data 
function C_ConsoleScriptCollection.GetScriptData(consoleScriptID)
end
