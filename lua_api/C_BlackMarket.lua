-- C_BlackMarket API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_BlackMarket
C_BlackMarket = {}

---Closes the Black Market window.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_BlackMarket.Close()
end

---Returns info for a Black Market auction.
---@param marketID number - black market auction ID.
---@return string name - item name; nil if no such auction exists.
---@return string texture - icon texture path.
---@return number quantity - amount of the item included in the auction.
---@return string itemType - item type, e.g. "Quest", "Mail", or "Companion Pet"
---@return boolean usable 
---@return number level - item level requirement.
---@return string levelType - e.g. "REQ_LEVEL_ABBR"
---@return string sellerName - localized name of the NPC "selling" the item.
---@return number minBid - minimum amount of copper you can bid for this item.
---@return number minIncrement - minimum amount of copper you must increase the current bid by.
---@return number currBid - the maximum current bid in copper.
---@return boolean youHaveHighBid - true if your bid on this item is currently the highest bid, false otherwise.
---@return number numBids - number of bids made on this item.
---@return number timeLeft - token indicating remaining auction duration, 0 for completed auctions, larger values indicate larger remaining durations. For a localized text version, use _G["AUCTION_TIME_LEFT" .. timeLeft].
---@return string link - Chat link of the item being auctioned.
---@return number marketID - Black Market auction ID of this auction.
---@return number quality 
---@since Patch 5.0.4 (2012-08-28): Added.
function C_BlackMarket.GetHotItem(marketID)
end

---Returns info for a Black Market auction.
---@param marketID number - black market auction ID.
---@return string name - item name; nil if no such auction exists.
---@return string texture - icon texture path.
---@return number quantity - amount of the item included in the auction.
---@return string itemType - item type, e.g. "Quest", "Mail", or "Companion Pet"
---@return boolean usable 
---@return number level - item level requirement.
---@return string levelType - e.g. "REQ_LEVEL_ABBR"
---@return string sellerName - localized name of the NPC "selling" the item.
---@return number minBid - minimum amount of copper you can bid for this item.
---@return number minIncrement - minimum amount of copper you must increase the current bid by.
---@return number currBid - the maximum current bid in copper.
---@return boolean youHaveHighBid - true if your bid on this item is currently the highest bid, false otherwise.
---@return number numBids - number of bids made on this item.
---@return number timeLeft - token indicating remaining auction duration, 0 for completed auctions, larger values indicate larger remaining durations. For a localized text version, use _G["AUCTION_TIME_LEFT" .. timeLeft].
---@return string link - Chat link of the item being auctioned.
---@return number marketID - Black Market auction ID of this auction.
---@return number quality 
---@since Patch 5.0.4 (2012-08-28): Added.
function C_BlackMarket.GetItemInfoByID(marketID)
end

---Returns info for a Black Market auction.
---@param marketID number - black market auction ID.
---@return string name - item name; nil if no such auction exists.
---@return string texture - icon texture path.
---@return number quantity - amount of the item included in the auction.
---@return string itemType - item type, e.g. "Quest", "Mail", or "Companion Pet"
---@return boolean usable 
---@return number level - item level requirement.
---@return string levelType - e.g. "REQ_LEVEL_ABBR"
---@return string sellerName - localized name of the NPC "selling" the item.
---@return number minBid - minimum amount of copper you can bid for this item.
---@return number minIncrement - minimum amount of copper you must increase the current bid by.
---@return number currBid - the maximum current bid in copper.
---@return boolean youHaveHighBid - true if your bid on this item is currently the highest bid, false otherwise.
---@return number numBids - number of bids made on this item.
---@return number timeLeft - token indicating remaining auction duration, 0 for completed auctions, larger values indicate larger remaining durations. For a localized text version, use _G["AUCTION_TIME_LEFT" .. timeLeft].
---@return string link - Chat link of the item being auctioned.
---@return number marketID - Black Market auction ID of this auction.
---@return number quality 
---@since Patch 5.0.4 (2012-08-28): Added.
function C_BlackMarket.GetItemInfoByIndex(marketID)
end

---Returns the number of auctions on the Black Market Auction House.
---@return number numItems - number of auctions on the black market.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_BlackMarket.GetNumItems()
end

---Returns whether the black market is only viewable and bids are disabled.
---@return boolean viewOnly 
---@since Patch 6.2.0 (2015-06-23): Added.
function C_BlackMarket.IsViewOnly()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param marketID number - black market auction ID (not line index!) to bid on.
---@param bid number - bid amount, in copper.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_BlackMarket.ItemPlaceBid(marketID, bid)
end

---Requests updated black market auction information from the server.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_BlackMarket.RequestItems()
end
