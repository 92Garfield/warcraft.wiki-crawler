-- C_SpellBook API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_SpellBook
C_SpellBook = {}

---
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
function C_SpellBook.CastSpellBookItem(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns true if player knows any Disenchant spells.
---@return boolean contains 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_SpellBook.ContainsAnyDisenchantSpell()
end

---If found, returns the first slot position of a SpellBookItem matching the specified spell and criteria
---@param spellIdentifier number |string : SpellIdentifier
---@param includeHidden boolean ? = false - If true, search includes SpellBookItems that are hidden from the SpellBook UI (ex: spells that have been replaced, are also in a Flyout, etc)
---@param includeFlyouts boolean ? = true - If true, search includes Flyout SpellBookItems containing the specified spell
---@param includeFutureSpells boolean ? = false - If true, search includes SpellBookItems for spells that have not yet been learned
---@param includeOffSpec boolean ? = false - If true, search includes SpellBookItems belonging to non-active specializations; If spell is in active and inactive spec, the active spec slot will always be returned
---@return number spellBookItemSlotIndex 
---@return Enum.SpellBookSpellBank spellBookItemSpellBank 
function C_SpellBook.FindSpellBookSlotForSpell(spellIdentifier, includeHidden, includeFlyouts, includeFutureSpells, includeOffSpec)
end

---Returns general, class, and active spec spells that are learned at the specified level.
---@param level number 
---@return number spellIDs []
---@since Patch 9.1.0 (2021-06-29): Added.
function C_SpellBook.GetCurrentLevelSpells(level)
end

---Returns the number of tabs in the spellbook.
---@return number numSpellBookSkillLines 
---@since Patch 11.0.0 (2024-07-23): Added, replacement for GetNumSpellTabs.
function C_SpellBook.GetNumSpellBookSkillLines()
end

---
---@param skillLineID number 
---@return number skillIndex ? - Will be nil if the specified SkillLine could not be found, or if it is not one of the player's tracked skill lines
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SpellBook.GetSkillLineIndexByID(skillLineID)
end

---Returns nothing if item doesn't exist or isn't a spell
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return boolean autoCastAllowed - True if this spell is allowed to be auto-cast
---@return boolean autoCastEnabled - True if auto-casting this spell is currently enabled (usually by the player)
function C_SpellBook.GetSpellBookItemAutoCast(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns number of times a SpellBookItem can be cast, typically based on availability of things like required reagent items; Always returns 0 if item is not found or is not a spell
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return number castCount 
function C_SpellBook.GetSpellBookItemCastCount(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns a table of info about the charges of a charge-accumulating SpellBookItem; May return nil if item is not found or is not charge-based
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return SpellChargeInfo chargeInfo 
function C_SpellBook.GetSpellBookItemCharges(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns the cooldown info of a spell.
---@param spellBookItemSlotIndex number - Spellbook slot index, ranging from 1 through the total number of spells across all tabs and pages
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return SpellCooldownInfo spellCooldownInfo ? - Returns nil if item doesn't exist or if this kind of item doesn't display cooldowns (ex: future or offspec spells)
---@since Patch 11.0.0 (2024-07-23): Added, replacement for GetSpellCooldown.
function C_SpellBook.GetSpellBookItemCooldown(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return string description - May be empty if spell's data isn't loaded yet; Listen for SPELL_TEXT_UPDATE event, or use SpellMixin to load asynchronously
function C_SpellBook.GetSpellBookItemDescription(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns info for a spellbook item.
---@param spellBookItemSlotIndex number - Spellbook slot index, ranging from 1 through the total number of spells across all tabs and pages
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return SpellBookItemInfo spellBookItemInfo ?
---@since Patch 11.0.0 (2024-07-23): Added, replacement for GetSpellBookItemInfo.
function C_SpellBook.GetSpellBookItemInfo(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns the level the spell is learned at; May return a different value if the player is currently Level Linked with another player; Returns 0 if item is not a Spell
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return number levelLearned 
function C_SpellBook.GetSpellBookItemLevelLearned(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return string spellLink 
function C_SpellBook.GetSpellBookItemLink(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns nil if item doesn't exist or if this kind of item doesn't display cooldowns (ex: future or offspec spells)
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return number startTime 
---@return number duration 
function C_SpellBook.GetSpellBookItemLossOfControlCooldown(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns the name of a spellbook item.
---@param spellBookItemSlotIndex number - Spellbook slot index, ranging from 1 through the total number of spells across all tabs and pages
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return string name - Name of the spell as it appears in the spell book, e.g. "Lesser Heal"
---@return string subName - May be empty if spell's data isn't loaded yet; Listen for SPELL_TEXT_UPDATE event, or use SpellMixin to load asynchronously
---@since Patch 11.0.0 (2024-07-23): Added, replacement for GetSpellBookItemName.
function C_SpellBook.GetSpellBookItemName(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns a table containing one or more SpellPowerCostInfos, one for each power type a SpellBookItem costs.
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return SpellPowerCostInfo powerCosts []? - May return nil if item is not found or has no resource costs
function C_SpellBook.GetSpellBookItemPowerCost(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Get the index of the SkillLine this SpellBookItem is part of
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return number skillLineIndex ? - Will be nil if the specified SpellBookItem doesn't exist or isn't part of a SkillLine
function C_SpellBook.GetSpellBookItemSkillLineIndex(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return number iconID : fileID
function C_SpellBook.GetSpellBookItemTexture(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns nil if SpellBookItem is not associated with a trade skill
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return string spellLink 
function C_SpellBook.GetSpellBookItemTradeSkillLink(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---
---@param spellBookItemSlotIndex number - Spellbook slot index, ranging from 1 through the total number of spells across all tabs and pages
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return Enum.SpellBookItemType itemType 
function C_SpellBook.GetSpellBookItemType(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns info for the specified spellbook skill line.
---@param skillLineIndex number - The index of the skill line, ascending from 1.
---@return SpellBookSkillLineInfo skillLineInfo ?
---@since Patch 11.0.0 (2024-07-23): Added, replacement for GetSpellTabInfo.
function C_SpellBook.GetSpellBookSkillLineInfo(skillLineIndex)
end

---Returns the number of available abilities for the player's combat pet.
---@return number numPetSpells - The number of pet abilities available, or nil if you do not have a pet with a spell book.
---@return string petNameToken - Pet type, can be "DEMON" or "PET".
---@since Patch 11.0.0 (2024-07-23): Added, replacement for HasPetSpells.
function C_SpellBook.HasPetSpells()
end

---Returns true if the SpellBookItem is the player's melee Auto Attack spell
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return boolean isAutoAttack 
function C_SpellBook.IsAutoAttackSpellBookItem(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns true if the SpellBookItem comes from a Class Talent
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return boolean isClassTalent 
function C_SpellBook.IsClassTalentSpellBookItem(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns true if the SpellBookItem comes from a PvP Talent
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return boolean isPvPTalent 
function C_SpellBook.IsPvPTalentSpellBookItem(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns true if the SpellBookItem is the player's ranged Auto Attack spell (ex: Shoot, Auto Shot, etc)
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return boolean isRangedAutoAttack 
function C_SpellBook.IsRangedAutoAttackSpellBookItem(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns true if the SpellBookIem can be cast on hostile targets
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return boolean isHarmful 
function C_SpellBook.IsSpellBookItemHarmful(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns true if the SpellBookIem can be cast on the player or other friendly targets
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return boolean isHelpful 
function C_SpellBook.IsSpellBookItemHelpful(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns true if the current target is within range of the SpellBookIem; False if out of range; Nil if range check was invalid
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return boolean inRange ? - May be nil if the range check was invalid, ie due to unknown/invalid spell, missing/invalid target, etc
function C_SpellBook.IsSpellBookItemInRange(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns true if the SpellBookItem belongs to a non-active class specialization
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return boolean isOffSpec 
function C_SpellBook.IsSpellBookItemOffSpec(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns true if the SpellBookItem is a passive spell; Will always return false if it is not a spell
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return boolean isPassive 
function C_SpellBook.IsSpellBookItemPassive(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns whether the SpellBookIem is currently castable.
---@param spellBookItemSlotIndex number - Spellbook slot index, ranging from 1 through the total number of spells across all tabs and pages
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return boolean isUsable - True if the spell is usable, false otherwise. A spell might be unusable for a variety of reasons, such as:
The player hasn't learned the spell
The player lacks required mana or reagents
Reactive conditions haven't been met
---@since Patch 11.0.0 (2024-07-23): Added, replacement for IsUsableSpell.
function C_SpellBook.IsSpellBookItemUsable(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns true if a spell should be found in the spellbook. This function can also return true for spells that aren't known, such as override spells granted by an aura linked to class talents
---@param spellID number 
---@param spellBank Enum.SpellBookSpellBank ? = Player
---@return boolean isInSpellBook 
function C_SpellBook.IsSpellInSpellBook(spellID, spellBank)
end

---Returns true if a player knows a spell. This function can also return true for spells that aren't in the spellbook, such as temporarily-granted abilities
---@param spellID number 
---@param spellBank Enum.SpellBookSpellBank ? = Player
---@return boolean isKnown 
function C_SpellBook.IsSpellKnown(spellID, spellBank)
end

---Returns true if a spell is considered to be known or present in the spellbook
---@param spellID number 
---@param spellBank Enum.SpellBookSpellBank ? = Player
---@return boolean isKnownOrInSpellBook 
function C_SpellBook.IsSpellKnownOrInSpellBook(spellID, spellBank)
end

---
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
function C_SpellBook.PickupSpellBookItem(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
function C_SpellBook.SetSpellBookItemAutoCastEnabled(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---Returns true if the SpellBookIem has a min and/or max range greater than 0; Will always return false if it is not a spell
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
---@return boolean hasRange 
function C_SpellBook.SpellBookItemHasRange(spellBookItemSlotIndex, spellBookItemSpellBank)
end

---
---@param spellBookItemSlotIndex number 
---@param spellBookItemSpellBank Enum.SpellBookSpellBank 
function C_SpellBook.ToggleSpellBookItemAutoCast(spellBookItemSlotIndex, spellBookItemSpellBank)
end
