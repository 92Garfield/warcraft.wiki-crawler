-- C_CurrencyInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_CurrencyInfo
C_CurrencyInfo = {}

---
---@param currencyID number 
---@return boolean canTransferCurrency 
---@return Enum.AccountCurrencyTransferResult failureReason ?
function C_CurrencyInfo.CanTransferCurrency(currencyID)
end

---
---@return boolean doesCurrentFilterRequireAccountCurrencyData 
function C_CurrencyInfo.DoesCurrentFilterRequireAccountCurrencyData()
end

---
---@param currencyID number CurrencyID
---@return boolean warModeApplies ?
---@return boolean limitOncePerTooltip ?
---@since Patch 8.2.0 (2019-06-25): Added limitOncePerTooltip return.
function C_CurrencyInfo.DoesWarModeBonusApply(currencyID)
end

---Expands/collapses a currency list header.
---@param index number 
---@param expand boolean 
---@since Patch 9.0.1 (2020-10-13): Moved to C_CurrencyInfo.ExpandCurrencyList()
function C_CurrencyInfo.ExpandCurrencyList(index, expand)
end

---
---@param currencyID number 
---@return CharacterCurrencyData accountCurrencyData []
function C_CurrencyInfo.FetchCurrencyDataFromAccountCharacters(currencyID)
end

---
---@return CurrencyTransferTransaction currencyTransferTransactions []
function C_CurrencyInfo.FetchCurrencyTransferTransactions()
end

---
---@return number azeriteCurrencyID - Returns 553.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_CurrencyInfo.GetAzeriteCurrencyID()
end

---Returns info for a tracked currency in the backpack.
---@param index number 
---@return BackpackCurrencyInfo info 
---@since Patch 9.0.1 (2020-10-13): Moved to C_CurrencyInfo.GetBackpackCurrencyInfo()
function C_CurrencyInfo.GetBackpackCurrencyInfo(index)
end

---
---@param currencyType number 
---@param quantity number ?
---@return  info structure - CurrencyDisplayInfo
---@since Patch 8.0.1 (2018-07-17): Added.
function C_CurrencyInfo.GetBasicCurrencyInfo(currencyType, quantity)
end

---
---@param amount number : WOWMONEY 
---@return number result : fileID
function C_CurrencyInfo.GetCoinIcon(amount)
end

---
---@param amount number : WOWMONEY 
---@param separator string ? = ,
---@return string result 
function C_CurrencyInfo.GetCoinText(amount, separator)
end

---
---@param amount number : WOWMONEY 
---@param fontHeight number ? = 14
---@return string result 
function C_CurrencyInfo.GetCoinTextureString(amount, fontHeight)
end

---
---@param currencyID number 
---@param quantity number 
---@return number totalQuantityConsumed ?
function C_CurrencyInfo.GetCostToTransferCurrency(currencyID, quantity)
end

---
---@param currencyType number CurrencyID
---@param quantity number 
---@return CurrencyDisplayInfo info 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_CurrencyInfo.GetCurrencyContainerInfo(currencyType, quantity)
end

---
---@param type number 
---@return string description 
function C_CurrencyInfo.GetCurrencyDescription(type)
end

---
---@return Enum.CurrencyFilterType filterType 
function C_CurrencyInfo.GetCurrencyFilter()
end

---Converts currency links to IDs.
---@param currencyLink string currencyLink
---@return number currencyID : CurrencyID
---@since Patch 8.0.1 (2018-07-17): Added.
function C_CurrencyInfo.GetCurrencyIDFromLink(currencyLink)
end

---Returns info for a currency by ID.
---@param type number CurrencyID
---@return CurrencyInfo info 
---@since Patch 9.0.1 (2020-10-13): Moved to C_CurrencyInfo.GetCurrencyInfo() and returns structured data.
function C_CurrencyInfo.GetCurrencyInfo(type)
end

---Returns info for a currency by ID.
---@param type number CurrencyID
---@return CurrencyInfo info 
---@since Patch 9.0.1 (2020-10-13): Moved to C_CurrencyInfo.GetCurrencyInfo() and returns structured data.
function C_CurrencyInfo.GetCurrencyInfoFromLink(type)
end

---Returns a currency link.
---@param type number CurrencyID
---@param amount number ?
---@return string link : currencyLink
---@since Patch 9.0.1 (2020-10-13): Moved to C_CurrencyInfo.GetCurrencyLink()
function C_CurrencyInfo.GetCurrencyLink(type, amount)
end

---Returns info for a currency in the currency tab.
---@param index number 
---@return CurrencyInfo info 
---@since Patch 9.0.1 (2020-10-13): Moved to C_CurrencyInfo.GetCurrencyListInfo()
function C_CurrencyInfo.GetCurrencyListInfo(index)
end

---Get the currencyLink for the specified currency list index.
---@param index number 
---@return string link : currencyLink
---@since Patch 9.0.1 (2020-10-13): Moved to C_CurrencyInfo.GetCurrencyListLink()
function C_CurrencyInfo.GetCurrencyListLink(index)
end

---Returns the amount of currencies and headers in the currency tab.
---@return number currencyListSize 
---@since Patch 9.0.1 (2020-10-13): Moved to C_CurrencyInfo.GetCurrencyListSize()
function C_CurrencyInfo.GetCurrencyListSize()
end

---
---@return number dragonIslesSuppliesCurrencyID 
function C_CurrencyInfo.GetDragonIslesSuppliesCurrencyID()
end

---Gets the faction ID for currency that is immediately converted into reputation with that faction instead.
---@param currencyID number 
---@return number factionID ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_CurrencyInfo.GetFactionGrantedByCurrency(currencyID)
end

---
---@param currencyID number 
---@param requestedQuantity number 
---@return number maxTransferableAmount ?
function C_CurrencyInfo.GetMaxTransferableAmountFromQuantity(currencyID, requestedQuantity)
end

---
---@return number warResourceCurrencyID - Returns 1560.
---@since Patch 8.0.1 (2018-07-17): Added.
function C_CurrencyInfo.GetWarResourcesCurrencyID()
end

---
---@return boolean isReady 
function C_CurrencyInfo.IsAccountCharacterCurrencyDataReady()
end

---
---@param currencyID number 
---@return boolean isAccountTransferableCurrency 
function C_CurrencyInfo.IsAccountTransferableCurrency(currencyID)
end

---
---@param currencyID number 
---@return boolean isAccountWideCurrency 
function C_CurrencyInfo.IsAccountWideCurrency(currencyID)
end

---
---@param currencyID number 
---@param quantity number 
---@return boolean isCurrencyContainer 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_CurrencyInfo.IsCurrencyContainer(currencyID, quantity)
end

---
---@return boolean currencyTransferInProgress 
function C_CurrencyInfo.IsCurrencyTransferInProgress()
end

---
---@return boolean isReady 
function C_CurrencyInfo.IsCurrencyTransferTransactionDataReady()
end

---Picks up a currency to the cursor.
---@param type number 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_CurrencyInfo.PickupCurrency(type)
end

---
---@param currencyID number 
---@return boolean hasMaxQuantity 
function C_CurrencyInfo.PlayerHasMaxQuantity(currencyID)
end

---
---@param currencyID number 
---@return boolean hasMaxWeeklyQuantity 
function C_CurrencyInfo.PlayerHasMaxWeeklyQuantity(currencyID)
end

---
function C_CurrencyInfo.RequestCurrencyDataForAccountCharacters()
end

---
---@param sourceCharacterGUID string WOWGUID
---@param currencyID number 
---@param quantity number 
function C_CurrencyInfo.RequestCurrencyFromAccountCharacter(sourceCharacterGUID, currencyID, quantity)
end

---Tracks a currency in the backpack.
---@param index number 
---@param backpack boolean - Pass true to track; false to clear tracking.
---@since Patch 9.0.1 (2020-10-13): Moved to C_CurrencyInfo.SetCurrencyBackpack()
function C_CurrencyInfo.SetCurrencyBackpack(index, backpack)
end

---
---@param currencyType number 
---@param backpack boolean 
function C_CurrencyInfo.SetCurrencyBackpackByID(currencyType, backpack)
end

---
---@param filterType Enum.CurrencyFilterType 
function C_CurrencyInfo.SetCurrencyFilter(filterType)
end

---Marks a currency as unused in the currency tab.
---@param index number 
---@param unused boolean 
---@since Patch 9.0.1 (2020-10-13): Moved to C_CurrencyInfo.SetCurrencyUnused()
function C_CurrencyInfo.SetCurrencyUnused(index, unused)
end
