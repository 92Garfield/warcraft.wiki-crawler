-- C_AccountStore API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_AccountStore
C_AccountStore = {}

---
---@param itemID number 
---@return boolean purchaseStarted 
function C_AccountStore.BeginPurchase(itemID)
end

---
---@param storeFrontID number 
---@return number categories []
function C_AccountStore.GetCategories(storeFrontID)
end

---
---@param categoryID number 
---@return AccountStoreCategoryInfo info 
function C_AccountStore.GetCategoryInfo(categoryID)
end

---
---@param categoryID number 
---@return number itemIDs []
function C_AccountStore.GetCategoryItems(categoryID)
end

---
---@param currencyID number 
---@return number amount 
function C_AccountStore.GetCurrencyAvailable(currencyID)
end

---
---@param storeFrontID number 
---@return number currencyID ?
function C_AccountStore.GetCurrencyIDForStore(storeFrontID)
end

---
---@param currencyID number 
---@return AccountStoreCurrencyInfo info 
function C_AccountStore.GetCurrencyInfo(currencyID)
end

---
---@param itemID number 
---@return AccountStoreItemInfo info ?
function C_AccountStore.GetItemInfo(itemID)
end

---
---@param storeFrontID number 
---@return Enum.AccountStoreState state 
function C_AccountStore.GetStoreFrontState(storeFrontID)
end

---
---@param itemID number 
---@return boolean refundStarted 
function C_AccountStore.RefundItem(itemID)
end

---
---@param storeFrontID number 
function C_AccountStore.RequestStoreFrontInfoUpdate(storeFrontID)
end
