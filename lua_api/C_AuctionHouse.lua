-- C_AuctionHouse API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_AuctionHouse
C_AuctionHouse = {}

---Returns required deposit for posting a commodity and quantity.
---@param itemID number 
---@param duration number - 1 for 12 hours, 2 for 24 hours, 3 for 48 hours
---@param quantity number - number of items to auction
---@return number depositCost ?
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.CalculateCommodityDeposit(itemID, duration, quantity)
end

---Returns required deposit for posting a specific item and quantity.
---@param item ItemLocationMixin 🔗
---@param duration number - 1 for 12 hours, 2 for 24 hours, 3 for 48 hours
---@param quantity number - quantity of items to auction
---@return number depositCost ?
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.CalculateItemDeposit(item, duration, quantity)
end

---Returns if the auction can be cancelled. If it can't, load it with QueryOwnedAuctions.
---@param ownedAuctionID number 
---@return boolean canCancelAuction 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.CanCancelAuction(ownedAuctionID)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.
---@param ownedAuctionID number 
---@since Patch 9.1.5 (2021-11-02): Protected when called from a (macro) script.
function C_AuctionHouse.CancelAuction(ownedAuctionID)
end

---Abort an incomplete commodity purchase to avoid it conflicting with another purchase.
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.CancelCommoditiesPurchase()
end

---Stop posting auctions for an non-commodity item.
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.CancelSell()
end

---Close the auction house window.
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.CloseAuctionHouse()
end

---Completes a commodity item purchase.
---@param itemID number 
---@param quantity number 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.ConfirmCommoditiesPurchase(itemID, quantity)
end

---
---@param item ItemLocationMixin 🔗
---@param duration number 
---@param quantity number 
---@param unitPrice number 
---@since Patch 9.2.5 (2022-05-31): Added.
function C_AuctionHouse.ConfirmPostCommodity(item, duration, quantity, unitPrice)
end

---
---@param item ItemLocationMixin 🔗
---@param duration number 
---@param quantity number 
---@param bid number ?
---@param buyout number ?
---@since Patch 9.2.5 (2022-05-31): Added.
function C_AuctionHouse.ConfirmPostItem(item, duration, quantity, bid, buyout)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return boolean favoritesAreAvailable 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.FavoritesAreAvailable()
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param auctionID number 
---@return AuctionInfo priceInfo ?
---@since Patch 9.2.0 (2022-02-22): Added.
function C_AuctionHouse.GetAuctionInfoByID(auctionID)
end

---Prints all subclass IDs for the Consumables category.
---@param classID number - Item classID
---@return number subClasses []
---@since Patch 8.3.0 (2020-01-14): Added, replaces GetAuctionItemSubClasses()
function C_AuctionHouse.GetAuctionItemSubClasses(classID)
end

---Returns the available quantity of an item for posting.
---@param item ItemLocationMixin 🔗
---@return number listCount 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetAvailablePostCount(item)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param bidIndex number 
---@return BidInfo bid ?
---@since Patch 9.0.1 (2020-10-13): Added minBid field.
function C_AuctionHouse.GetBidInfo(bidIndex)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param bidTypeIndex number 
---@return ItemKey typeItemKey ?
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetBidType(bidTypeIndex)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return BidInfo bids []
---@since Patch 9.2.5 (2022-05-31): Added.
function C_AuctionHouse.GetBids()
end

---Returns the currently loaded summary results resulting from SendBrowseQuery.
---@return BrowseResultInfo browseResults []
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetBrowseResults()
end

---Returns the cost for cancelling a specific owned auction. This is non-zero if it has a bid.
---@param ownedAuctionID number 
---@return number cancelCost 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetCancelCost(ownedAuctionID)
end

---Returns search results for a commodity item.
---@param itemID number 
---@param commoditySearchResultIndex number 
---@return CommoditySearchResultInfo result ?
---@since Patch 9.0.5 (2021-03-09): Added totalNumberOfOwners field.
function C_AuctionHouse.GetCommoditySearchResultInfo(itemID, commoditySearchResultIndex)
end

---Returns how many of the commodity is on sale.
---@param itemID number 
---@return number totalQuantity 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetCommoditySearchResultsQuantity(itemID)
end

---Returns the level (from 1-120, BfA levels) that some items would be crafted at.
---@param itemKey ItemKey 
---@return number extraInfo 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetExtraBrowseInfo(itemKey)
end

---Returns groups of filters for use in the Filter dropdown in the Buy tab.
---@return AuctionHouseFilterGroup filterGroups []
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetFilterGroups()
end

---Returns if the item is a commodity, item or neither.
---@param item ItemLocationMixin 🔗
---@return Enum.ItemCommodityStatus isCommodity 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetItemCommodityStatus(item)
end

---Returns an auction house item key from an item location.
---@param item ItemLocationMixin 🔗
---@return ItemKey itemKey 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetItemKeyFromItem(item)
end

---Returns more details about an item from its item key, including its name.
---@param itemKey ItemKey 
---@return ItemKeyInfo itemKeyInfo ?
---@since Hotfix (2020-02-27): Added appearanceLink return value[1]  (Build: 33528)
function C_AuctionHouse.GetItemKeyInfo(itemKey)
end

---Returns the required level to use an item found on the auction house.
---@param itemKey ItemKey 
---@return number requiredLevel 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_AuctionHouse.GetItemKeyRequiredLevel(itemKey)
end

---Returns search results for an item.
---@param itemKey ItemKey 
---@return ItemSearchResultInfo result ?
---@since Patch 9.0.5 (2021-03-09): Added totalNumberOfOwners field.
function C_AuctionHouse.GetItemSearchResultInfo(itemKey)
end

---Returns how many of the item is available on the auction house.
---@param itemKey ItemKey 
---@return number totalQuantity 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetItemSearchResultsQuantity(itemKey)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return number maxBid ?
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetMaxBidItemBid()
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return number maxBuyout ?
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetMaxBidItemBuyout()
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param itemID number 
---@return number maxUnitPrice ?
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetMaxCommoditySearchResultPrice(itemID)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param itemKey ItemKey 
---@return number maxBid ?
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetMaxItemSearchResultBid(itemKey)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param itemKey ItemKey 
---@return number maxBuyout ?
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetMaxItemSearchResultBuyout(itemKey)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return number maxBid ?
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetMaxOwnedAuctionBid()
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return number maxBuyout ?
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetMaxOwnedAuctionBuyout()
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return number numBidTypes 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetNumBidTypes()
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return number numBids 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetNumBids()
end

---Returns the number of commodity results, the different prices.
---@param itemID number 
---@return number numSearchResults 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetNumCommoditySearchResults(itemID)
end

---Returns the number of item results, the different auctions.
---@param itemKey ItemKey 
---@return number numItemSearchResults 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetNumItemSearchResults(itemKey)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return number numOwnedAuctionTypes 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetNumOwnedAuctionTypes()
end

---Returns the number of auctions the player has active on the auction house.
---@return number numOwnedAuctions 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetNumOwnedAuctions()
end

---Returns the amount of auctions.
---@return number numReplicateItems 
---@since Patch 8.3.0 (2020-01-14): Added. Replaces GetNumAuctionItems(). [1]
function C_AuctionHouse.GetNumReplicateItems()
end

---Returns information for one of the player's active auctions.
---@param ownedAuctionIndex number 
---@return OwnedAuctionInfo ownedAuction ?
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetOwnedAuctionInfo(ownedAuctionIndex)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param ownedAuctionTypeIndex number 
---@return ItemKey typeItemKey ?
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetOwnedAuctionType(ownedAuctionTypeIndex)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return OwnedAuctionInfo ownedAuctions []
---@since Patch 9.2.5 (2022-05-31): Added.
function C_AuctionHouse.GetOwnedAuctions()
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return number quoteDurationSeconds 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetQuoteDurationRemaining()
end

---Returns display info for a battle pet from a ReplicateItems result.
---@param index number 
---@return number creatureID 
---@return number displayID 
---@since Patch 8.3.0 (2020-01-14): Added. Replaces GetAuctionItemBattlePetInfo(). [1]
function C_AuctionHouse.GetReplicateItemBattlePetInfo(index)
end

---Returns information about the specified auction.
---@param index number - index, ranging from 0 up to C_AuctionHouse.GetNumReplicateItems()-1
---@return string 1. name ?
---@return number 2. texture ?
---@return number 3. count 
---@return number 4. qualityID 
---@return boolean 5. usable ?
---@return number 6. level 
---@return string 7. levelType ?
---@return number 8. minBid 
---@return number 9. minIncrement 
---@return number 10. buyoutPrice 
---@return number 11. bidAmount 
---@return string 12. highBidder ?
---@return string 13. bidderFullName ?
---@return string 14. owner ? - Always returns nil, except for your own auctions.
---@return string 15. ownerFullName ? - Always returns nil
---@return number 16. saleStatus 
---@return number 17. itemID 
---@return boolean 18. hasAllInfo ?
---@since Patch 9.0.2 (2020-11-17): Hotfixed owner and ownerFullName to always return nil (except for your own auctions) as that seemed to be the cause of disconnects.
function C_AuctionHouse.GetReplicateItemInfo(index)
end

---Returns the item link (if loaded) for an item from a ReplicateItems result.
---@param index number 
---@return string itemLink ?  - ItemLink
---@since Patch 8.3.0 (2020-01-14): Added. Replaces GetAuctionItemLink(). [1]
function C_AuctionHouse.GetReplicateItemLink(index)
end

---Returns the time left for an auction.
---@param index number 
---@return number timeLeft 
---@since Patch 8.3.0 (2020-01-14): Added. Replaces GetAuctionItemTimeLeft(). [1]
function C_AuctionHouse.GetReplicateItemTimeLeft(index)
end

---Identifies the breakpoints for describing an auction's remaining duration using time-left bands.
---@param timeLeftBand Enum.AuctionHouseTimeLeftBand 
---@return number timeLeftMinSeconds - Minimum duration for auctions in this band.
---@return number timeLeftMaxSeconds - Maximum duration for auctions in this band.
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.GetTimeLeftBandInfo(timeLeftBand)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return boolean hasFavorites 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.HasFavorites()
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return boolean hasFullBidResults 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.HasFullBidResults()
end

---Returns if the last group of summary results (groups of 500) is available.
---@return boolean hasFullBrowseResults 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.HasFullBrowseResults()
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param itemID number 
---@return boolean hasFullResults 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.HasFullCommoditySearchResults(itemID)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param itemKey ItemKey 
---@return boolean hasFullResults 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.HasFullItemSearchResults(itemKey)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return boolean hasFullOwnedAuctionResults 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.HasFullOwnedAuctionResults()
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@return boolean hasMaxFavorites 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.HasMaxFavorites()
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param itemKey ItemKey 
---@return boolean hasSearchResults 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.HasSearchResults(itemKey)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param itemKey ItemKey 
---@return boolean isFavorite 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.IsFavoriteItem(itemKey)
end

---Returns true if an item from your bag can be posted on the auction house.
---@param item ItemLocationMixin 🔗
---@param displayError boolean ? = true
---@return boolean valid 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.IsSellItemValid(item, displayError)
end

---Returns if the next query will be throttled, either delayed or cancelled.
---@return boolean canSendThrottledMessage 
---@since Patch 8.3.0 (2020-01-14): Added. (Build 33237, Feb 3 2020)
function C_AuctionHouse.IsThrottledMessageSystemReady()
end

---Returns an auction house item key.
---@param itemID number 
---@param itemLevel number ? = 0
---@param itemSuffix number ? = 0
---@param battlePetSpeciesID number ? = 0 : BattlePetSpeciesID
---@return ItemKey itemKey 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.MakeItemKey(itemID, itemLevel, itemSuffix, battlePetSpeciesID)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.
---@param auctionID number 
---@param bidAmount number - Amount in copper, only accepts gold and silently fails for non-zero copper counts.
---@since Patch 9.1.5 (2021-11-02): Protected when called from a (macro) script.
function C_AuctionHouse.PlaceBid(auctionID, bidAmount)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.
---@param item ItemLocationMixin 🔗
---@param duration number 
---@return  needsConfirmation boolean
---@since Patch 9.2.5 (2022-05-31): Added needsConfirmation return.
function C_AuctionHouse.PostCommodity(item, duration)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.
---@param item ItemLocationMixin 🔗
---@param duration number 
---@return  needsConfirmation boolean
---@since Patch 9.2.5 (2022-05-31): Added needsConfirmation return.
function C_AuctionHouse.PostItem(item, duration)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param sorts AuctionHouseSortType []
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.QueryBids(sorts)
end

---#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.Otherwise it will brick the AH.
---@param sorts AuctionHouseSortType []
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.QueryOwnedAuctions(sorts)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param itemID number 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.RefreshCommoditySearchResults(itemID)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param itemKey ItemKey 
---@since Patch 9.1.0 (2021-06-29): Added minLevelFilter, maxLevelFilter arguments.
function C_AuctionHouse.RefreshItemSearchResults(itemKey)
end

---Queries all auctions listed on the Auction House.
---@since Patch 9.0.2 (2020-11-17): Hotfixed owner and ownerFullName to always return nil (except for your own auctions) as that seemed to be the cause of disconnects.
function C_AuctionHouse.ReplicateItems()
end

---#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.RequestMoreBrowseResults()
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param itemID number 
---@return boolean hasFullResults 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.RequestMoreCommoditySearchResults(itemID)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param itemKey ItemKey 
---@return boolean hasFullResults 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.RequestMoreItemSearchResults(itemKey)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param auctionID number 
---@return string bidderName 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_AuctionHouse.RequestOwnedAuctionBidderInfo(auctionID)
end

---#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.Otherwise it will brick the AH.
---@param sorts AuctionHouseSortType []
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.SearchForFavorites(sorts)
end

---Queries the auction house for summary results of up to 100 specific items.
---@param itemKeys ItemKey []
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.SearchForItemKeys(itemKeys)
end

---#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.Otherwise it will brick the AH.
---@param query AuctionHouseBrowseQuery 
---@since Patch 8.3.0 (2020-01-14): Added, replacing QueryAuctionItems().
function C_AuctionHouse.SendBrowseQuery(query)
end

---#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.Otherwise it will brick the AH.
---@param itemKey ItemKey 
---@since Patch 9.1.0 (2021-06-29): Added minLevelFilter, maxLevelFilter arguments.
function C_AuctionHouse.SendSearchQuery(itemKey)
end

---#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.Otherwise it will brick the AH.
---@param itemKey ItemKey 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.SendSellSearchQuery(itemKey)
end

---Searches are split into 4 sections:
				- Summary (does queries by name and item key)
				- Search (including SellSearch) that returns per-auction results for use when buying or selling
				- Owned (similar to Search, but for auctions you've posted)
---@param itemKey ItemKey 
---@since Patch 8.3.0 (2020-01-14): Added.
function C_AuctionHouse.SetFavoriteItem(itemKey)
end

---
---@return boolean shouldAutoPopulatePrice 
function C_AuctionHouse.ShouldAutoPopulatePrice()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.#noscript - This cannot be called directly from /run and /script (RunScript) and loadstring, e.g. WowLua and WeakAuras.
---@param itemID number 
---@param quantity number 
---@since Patch 9.1.5 (2021-11-02): Protected when called from a (macro) script.
function C_AuctionHouse.StartCommoditiesPurchase(itemID, quantity)
end

---
---@return boolean supportsCopperValues 
function C_AuctionHouse.SupportsCopperValues()
end
