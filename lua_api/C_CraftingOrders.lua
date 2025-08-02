-- C_CraftingOrders API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_CraftingOrders
C_CraftingOrders = {}

---
---@return boolean areNotesDisabled 
function C_CraftingOrders.AreOrderNotesDisabled()
end

---
---@param skillLineAbilityID number 
---@param orderType Enum.CraftingOrderType 
---@return number deposit 
function C_CraftingOrders.CalculateCraftingOrderPostingFee(skillLineAbilityID, orderType)
end

---
---@param skillLineAbilityID number 
---@return boolean canOrder 
function C_CraftingOrders.CanOrderSkillAbility(skillLineAbilityID)
end

---
---@param orderID number 
function C_CraftingOrders.CancelOrder(orderID)
end

---
---@param orderID number 
---@param profession Enum.Profession 
function C_CraftingOrders.ClaimOrder(orderID, profession)
end

---
function C_CraftingOrders.CloseCrafterCraftingOrders()
end

---
function C_CraftingOrders.CloseCustomerCraftingOrders()
end

---
---@param orderID number 
---@param crafterNote string 
---@param profession Enum.Profession 
function C_CraftingOrders.FulfillOrder(orderID, crafterNote, profession)
end

---
---@return CraftingOrderInfo order ?
function C_CraftingOrders.GetClaimedOrder()
end

---
---@return CraftingOrderBucketInfo buckets []
function C_CraftingOrders.GetCrafterBuckets()
end

---
---@return CraftingOrderInfo orders []
function C_CraftingOrders.GetCrafterOrders()
end

---
---@return number time 
function C_CraftingOrders.GetCraftingOrderTime()
end

---
---@return CraftingOrderCustomerCategory categories []
function C_CraftingOrders.GetCustomerCategories()
end

---
---@param params CraftingOrderCustomerSearchParams 
---@return CraftingOrderCustomerSearchResults results 
function C_CraftingOrders.GetCustomerOptions(params)
end

---
---@return CraftingOrderInfo customerOrders []
function C_CraftingOrders.GetCustomerOrders()
end

---
---@return number skillLineID ?
function C_CraftingOrders.GetDefaultOrdersSkillLine()
end

---
---@return CraftingOrderInfo myOrders []
function C_CraftingOrders.GetMyOrders()
end

---
---@return number numFavorites 
function C_CraftingOrders.GetNumFavoriteCustomerOptions()
end

---
---@param profession Enum.Profession 
---@return CraftingOrderClaimsRemainingInfo claimInfo 
function C_CraftingOrders.GetOrderClaimInfo(profession)
end

---
---@return CraftingOrderPersonalOrdersInfo infos []
function C_CraftingOrders.GetPersonalOrdersInfo()
end

---
---@return boolean hasFavorites 
function C_CraftingOrders.HasFavoriteCustomerOptions()
end

---
---@param recipeID number 
---@return boolean favorited 
function C_CraftingOrders.IsCustomerOptionFavorited(recipeID)
end

---
---@param request CraftingOrderRequestMyOrdersInfo 
function C_CraftingOrders.ListMyOrders(request)
end

---
function C_CraftingOrders.OpenCrafterCraftingOrders()
end

---
function C_CraftingOrders.OpenCustomerCraftingOrders()
end

---
---@param orderID number 
---@return boolean recraftable 
function C_CraftingOrders.OrderCanBeRecrafted(orderID)
end

---
function C_CraftingOrders.ParseCustomerOptions()
end

---Posts a public work order for  [Shock-Spring Coil] while providing all the materials.
---@param orderInfo NewCraftingOrderInfo 
function C_CraftingOrders.PlaceNewOrder(orderInfo)
end

---
---@param orderID number 
---@param crafterNote string 
---@param profession Enum.Profession 
function C_CraftingOrders.RejectOrder(orderID, crafterNote, profession)
end

---
---@param orderID number 
---@param profession Enum.Profession 
function C_CraftingOrders.ReleaseOrder(orderID, profession)
end

---#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.Requests issued from dynamic scripts will result in no data being returned from subsequent calls to C_CraftingOrders.GetCrafterOrders.
---@param request CraftingOrderRequestInfo 
function C_CraftingOrders.RequestCrafterOrders(request)
end

---
---@param request CraftingOrderRequestInfo 
function C_CraftingOrders.RequestCustomerOrders(request)
end

---
---@param recipeID number 
---@param favorited boolean 
function C_CraftingOrders.SetCustomerOptionFavorited(recipeID, favorited)
end

---
---@return boolean showTab 
function C_CraftingOrders.ShouldShowCraftingOrderTab()
end

---
---@param skillLineID number 
---@return boolean hasOrders 
function C_CraftingOrders.SkillLineHasOrders(skillLineID)
end

---
function C_CraftingOrders.UpdateIgnoreList()
end
