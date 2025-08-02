-- C_Texture API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Texture
C_Texture = {}

---
---@param texture Texture🔗 
function C_Texture.ClearTitleIconTexture(texture)
end

---
---@param atlas string textureAtlas
---@return number elementID 
function C_Texture.GetAtlasElementID(atlas)
end

---
---@return string atlases [] : textureAtlas
function C_Texture.GetAtlasElements()
end

---
---@param atlas string textureAtlas
---@return number atlasID 
function C_Texture.GetAtlasID(atlas)
end

---
---@param atlas string - Name of the atlas
---@return AtlasInfo info 
---@since Patch 8.1.0 (2018-12-11): Changed to C_Texture.GetAtlasInfo() and returns structured data.[1]
function C_Texture.GetAtlasInfo(atlas)
end

---
---@param quality number 
---@return string textureMarkup 
function C_Texture.GetCraftingReagentQualityChatIcon(quality)
end

---Returns a string representing a file ID.
---@param fileDataID number - The file ID to query.
---@return string filename - A string of the form "FileData ID {fileDataID}".
---@since Patch 10.0.0 (2022-10-25): Added.
function C_Texture.GetFilenameFromFileDataID(fileDataID)
end

---
---@param titleID string 
---@param version Enum.TitleIconVersion 
function C_Texture.GetTitleIconTexture(titleID, version)
end

---
---@param titleID string 
---@param version Enum.TitleIconVersion 
---@return boolean ready 
function C_Texture.IsTitleIconTextureReady(titleID, version)
end

---
---@param texture Texture🔗 
---@param titleID string 
---@param version Enum.TitleIconVersion 
function C_Texture.SetTitleIconTexture(texture, titleID, version)
end
