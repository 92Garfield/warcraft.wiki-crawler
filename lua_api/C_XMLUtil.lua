-- C_XMLUtil API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_XMLUtil
C_XMLUtil = {}

---Returns information about a defined XML template.
---@param name string - The name of the template to query.
---@return XMLTemplateInfo info ? - Information about the queried template if found, or nil if the template does not exist.
---@since Patch 10.0.0 (2022-10-25): Added.
function C_XMLUtil.GetTemplateInfo(name)
end

---Returns a list of all registered XML templates.
---@return XMLTemplateListInfo templates [] - An array of tables for each registered XML template.
---@since Patch 10.0.0 (2022-10-25): Added.
function C_XMLUtil.GetTemplates()
end
