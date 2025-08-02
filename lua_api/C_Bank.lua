-- C_Bank API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Bank
C_Bank = {}

---
---@return boolean areAnyBankTypesViewable 
function C_Bank.AreAnyBankTypesViewable()
end

---
---@param bankType Enum.BankType 
function C_Bank.AutoDepositItemsIntoBank(bankType)
end

---
---@param bankType Enum.BankType 
---@return boolean canDepositMoney 
function C_Bank.CanDepositMoney(bankType)
end

---
---@param bankType Enum.BankType 
---@return boolean canPurchaseBankTab 
function C_Bank.CanPurchaseBankTab(bankType)
end

---
---@param bankType Enum.BankType 
---@return boolean canUseBank 
function C_Bank.CanUseBank(bankType)
end

---
---@param bankType Enum.BankType 
---@return boolean canViewBank 
function C_Bank.CanViewBank(bankType)
end

---
---@param bankType Enum.BankType 
---@return boolean canWithdrawMoney 
function C_Bank.CanWithdrawMoney(bankType)
end

---
function C_Bank.CloseBankFrame()
end

---
---@param bankType Enum.BankType 
function C_Bank.DepositMoney(bankType)
end

---
---@param bankType Enum.BankType 
---@return boolean doesBankTypeSupportAutoDeposit 
function C_Bank.DoesBankTypeSupportAutoDeposit(bankType)
end

---
---@param bankType Enum.BankType 
---@return boolean doesBankTypeSupportMoneyTransfer 
function C_Bank.DoesBankTypeSupportMoneyTransfer(bankType)
end

---
---@param bankType Enum.BankType 
---@return Enum.BankLockedReason reason ?
function C_Bank.FetchBankLockedReason(bankType)
end

---
---@param bankType Enum.BankType 
---@return number : WOWMONEY amount 
function C_Bank.FetchDepositedMoney(bankType)
end

---
---@param bankType Enum.BankType 
---@return PurchasableBankTabData nextPurchasableTabData ?
function C_Bank.FetchNextPurchasableBankTabData(bankType)
end

---
---@param bankType Enum.BankType 
---@return number numPurchasedBankTabs 
function C_Bank.FetchNumPurchasedBankTabs(bankType)
end

---
---@param bankType Enum.BankType 
---@return BankTabData purchasedBankTabData []
function C_Bank.FetchPurchasedBankTabData(bankType)
end

---
---@param bankType Enum.BankType 
---@return Enum.BagIndex purchasedBankTabIDs []
function C_Bank.FetchPurchasedBankTabIDs(bankType)
end

---
---@return Enum.BankType viewableBankTypes []
function C_Bank.FetchViewableBankTypes()
end

---
---@param bankType Enum.BankType 
---@return boolean hasMaxBankTabs 
function C_Bank.HasMaxBankTabs(bankType)
end

---
---@param bankType Enum.BankType 
---@return boolean isItemAllowedInBankType 
function C_Bank.IsItemAllowedInBankType(bankType)
end

---
---@param bankType Enum.BankType 
function C_Bank.PurchaseBankTab(bankType)
end

---
---@param bankType Enum.BankType 
function C_Bank.UpdateBankTabSettings(bankType)
end

---
---@param bankType Enum.BankType 
function C_Bank.WithdrawMoney(bankType)
end
