-- C_EncodingUtil API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_EncodingUtil
C_EncodingUtil = {}

---Compresses a supplied string.
---@param source stringView 
---@param method Enum.CompressionMethod ? = Deflate
---@return string output 
function C_EncodingUtil.CompressString(source, method)
end

---Decodes a Base64 encoded string.
---@param source stringView 
---@param variant Enum.Base64Variant ? = Standard
---@return string output 
function C_EncodingUtil.DecodeBase64(source, variant)
end

---Decodes a Base16 (hexadecimal) encoded string.
---@param source string 
---@return string output 
function C_EncodingUtil.DecodeHex(source)
end

---Decompresses a compressed string.
---@param source stringView 
---@param method Enum.CompressionMethod 
---@return string output 
function C_EncodingUtil.DecompressString(source, method)
end

---Deserializes a CBOR data string to a Lua value.
---@param source stringView 
---@return any value 
function C_EncodingUtil.DeserializeCBOR(source)
end

---Deserializes a JSON data string to a Lua value.
---@param source string 
---@return any value 
function C_EncodingUtil.DeserializeJSON(source)
end

---Converts a string to a Base64 encoded representation.
---@param source stringView 
---@param variant Enum.Base64Variant ? = Standard
---@return string output 
function C_EncodingUtil.EncodeBase64(source, variant)
end

---Converts a string to a Base16 (hexadecimal) encoded representation.
---@param source stringView 
---@return string output 
function C_EncodingUtil.EncodeHex(source)
end

---Serializes a Lua value to a CBOR data string.
---@param value any 
---@param options CBORSerializationOptions ?
---@return string output 
function C_EncodingUtil.SerializeCBOR(value, options)
end

---Serializes a Lua value to a JSON data string.
---@param value any 
---@param options JSONSerializationOptions ?
---@return string output 
function C_EncodingUtil.SerializeJSON(value, options)
end
