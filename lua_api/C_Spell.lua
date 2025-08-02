-- C_Spell API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_Spell
C_Spell = {}

---
---@param spellID number 
function C_Spell.CancelSpellByID(spellID)
end

---
---@param spellIdentifier number |string : SpellIdentifier -  Using name will always check for an override on that spell
---@return boolean spellExists 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Spell.DoesSpellExist(spellIdentifier)
end

---Used in conjunction with SpellRangeCheckUpdate to inform the UI when a spell goes in or out of range with the current target.
---@param spellIdentifier number |string : SpellIdentifier
---@param enable boolean - True if changes in range for the spell should dispatch SpellRangeCheckUpdate. False if the spell no longer needs the event.
function C_Spell.EnableSpellRangeCheck(spellIdentifier, enable)
end

---
---@param spellIdentifier number |string : SpellIdentifier
---@param spec number ? = 0 - Which Class Specialization to consider, as overrides may vary by Spec; Defaults to player's current Spec
---@return number baseSpellID - Returns the spellID passed in if there is no override
function C_Spell.GetBaseSpell(spellIdentifier, spec)
end

---
---@param spellIdentifier number |string : SpellIdentifier
---@return DeadlyDebuffInfo deadlyDebuffInfo 
function C_Spell.GetDeadlyDebuffInfo(spellIdentifier)
end

---
---@param spellID number 
---@return string rarityBorderAtlas : AtlasID
---@since Patch 9.0.2 (2020-11-17): Added.
function C_Spell.GetMawPowerBorderAtlasBySpellID(spellID)
end

---
---@param spellID number 
---@return string link 
function C_Spell.GetMawPowerLinkBySpellID(spellID)
end

---Returns the ID for the override spell.
---@param spellIdentifier number |string : SpellIdentifier
---@param spec number ? = 0 - Which Class Specialization to consider, as overrides may vary by Spec; Defaults to player's current Spec
---@param onlyKnown boolean ? = true
---@param ignoreOverrideSpellID number ? = 0
---@return number overrideSpellID - Returns the spellID for the active version of the spell
function C_Spell.GetOverrideSpell(spellIdentifier, spec, onlyKnown, ignoreOverrideSpellID)
end

---
---@param schoolMask number 
---@return string result 
function C_Spell.GetSchoolString(schoolMask)
end

---Returns nil if spell is not found
---@param spellIdentifier number |string : SpellIdentifier
---@return boolean autoCastAllowed 
---@return boolean autoCastEnabled 
function C_Spell.GetSpellAutoCast(spellIdentifier)
end

---Returns number of times a spell can be cast, typically based on availability of things like required reagent items; Returns 0 if spell is not found
---@param spellIdentifier number |string : SpellIdentifier
---@return number castCount 
function C_Spell.GetSpellCastCount(spellIdentifier)
end

---Returns a table of info about the charges of a charge-accumulating spell; May return nil if spell is not found or is not charge-based
---@param spellIdentifier number |string : SpellIdentifier
---@return SpellChargeInfo chargeInfo 
function C_Spell.GetSpellCharges(spellIdentifier)
end

---Returns the cooldown info of a spell.
---@param spellIdentifier number |string : SpellIdentifier - Spell ID, name, name(subtext), or link
---@return SpellCooldownInfo spellCooldownInfo ? - Returns nil if spell is not found
---@since Patch 11.0.0 (2024-07-23): Added, replacement for GetSpellCooldown.
function C_Spell.GetSpellCooldown(spellIdentifier)
end

---Returns nil if spell is not found
---@param spellIdentifier number |string : SpellIdentifier
---@return string description - May be empty if spell's data isn't loaded yet; Listen for SPELL_TEXT_UPDATE event, or use SpellMixin to load asynchronously
function C_Spell.GetSpellDescription(spellIdentifier)
end

---Returns the spell ID for a given SpellIdentifier.
---@param spellIdentifier number |string : SpellIdentifier - Using name will always check for an override on that spell; If passed a spell ID, will return same id as was passed
---@return number spellID 
function C_Spell.GetSpellIDForSpellIdentifier(spellIdentifier)
end

---Some spell data - such as subtext and description - are load on demand. You can use SpellMixin:ContinueOnSpellLoad() to asynchronously query the data.
---@param spellIdentifier number |string : SpellIdentifier - Using name will always check for an override on that spell; If passed a spell ID, will return same id as was passed.
---@return SpellInfo spellInfo ? - Returns nil if spell is not found
---@since Patch 11.0.0 (2024-07-23): Added; returns a structured table. Replacement for GetSpellInfo and C_SpellBook.GetSpellInfo.
function C_Spell.GetSpellInfo(spellIdentifier)
end

---Returns the level the spell is learned at; May return a different value if the player is currently Level Linked with another player
---@param spellIdentifier number |string : SpellIdentifier
---@return number levelLearned 
function C_Spell.GetSpellLevelLearned(spellIdentifier)
end

---Returns the hyperlink for a spell.
---@param spellIdentifier number |string : SpellIdentifier
---@param glyphID number ?
---@return string spellLink : spellLink - Returns nil if spell is not found
function C_Spell.GetSpellLink(spellIdentifier, glyphID)
end

---Returns nil if spell is not found
---@param spellIdentifier number |string : SpellIdentifier
---@return number startTime 
---@return number duration 
function C_Spell.GetSpellLossOfControlCooldown(spellIdentifier)
end

---Returns nil if spell is not found
---@param spellIdentifier number |string : SpellIdentifier
---@return string name 
function C_Spell.GetSpellName(spellIdentifier)
end

---Returns a table containing one or more SpellPowerCostInfos, one for each power type this spell costs
---@param spellIdentifier number |string : SpellIdentifier
---@return SpellPowerCostInfo powerCosts []? - May return nil if spell is not found or has no resource costs
function C_Spell.GetSpellPowerCost(spellIdentifier)
end

---
---@return number result 
function C_Spell.GetSpellQueueWindow()
end

---Returns the rank of a spell that corresponds to an ability within a ranked SkillLine (ex: a crafting Recipe); Returns nil if spell is not found, or isn't part of a ranked SkillLine
---@param spellIdentifier number |string : SpellIdentifier
---@return number rank 
function C_Spell.GetSpellSkillLineAbilityRank(spellIdentifier)
end

---Returns nil if spell is not found
---@param spellIdentifier number |string : SpellIdentifier
---@return string subtext - May be empty if spell's data isn't loaded yet; Listen for SPELL_TEXT_UPDATE event, or use SpellMixin to load asynchronously
function C_Spell.GetSpellSubtext(spellIdentifier)
end

---Returns nothing if spell is not found
---@param spellIdentifier number |string : SpellIdentifier
---@return number iconID : fileID
---@return number originalIconID : fileID
function C_Spell.GetSpellTexture(spellIdentifier)
end

---Returns nil if spell is not associated with a trade skill
---@param spellIdentifier number |string : SpellIdentifier
---@return string spellLink 
function C_Spell.GetSpellTradeSkillLink(spellIdentifier)
end

---Returns true if the spell is the player's melee Auto Attack spell
---@param spellIdentifier number |string : SpellIdentifier
---@return boolean isAutoAttack 
function C_Spell.IsAutoAttackSpell(spellIdentifier)
end

---Returns true if the spell is an auto repeat player spell
---@param spellIdentifier number |string : SpellIdentifier
---@return boolean isAutoRepeat 
function C_Spell.IsAutoRepeatSpell(spellIdentifier)
end

---Returns true if the spell comes from a Class Talent
---@param spellIdentifier number |string : SpellIdentifier
---@return boolean isAutoRepeat 
function C_Spell.IsClassTalentSpell(spellIdentifier)
end

---Returns true if the spell is currently being cast or is queued to be cast
---@param spellIdentifier number |string : SpellIdentifier
---@return boolean isCurrentSpell 
function C_Spell.IsCurrentSpell(spellIdentifier)
end

---Returns true if the spell is an 'empower' type spell that is cast by pressing and holding, with the on-release cast typically being affected by time held
---@param spellIdentifier number |string : SpellIdentifier
---@return boolean isPressHoldRelease 
function C_Spell.IsPressHoldReleaseSpell(spellIdentifier)
end

---Returns true if the spell comes from a PvP Talent
---@param spellIdentifier number |string : SpellIdentifier
---@return boolean isAutoRepeat 
function C_Spell.IsPvPTalentSpell(spellIdentifier)
end

---Returns true if the spell is the player's ranged Auto Attack spell (ex: Shoot, Auto Shot, etc)
---@param spellIdentifier number |string : SpellIdentifier
---@return boolean isRangedAutoAttack 
function C_Spell.IsRangedAutoAttackSpell(spellIdentifier)
end

---Returns true if data for the spell has already been loaded and cached this session
---@param spellIdentifier number |string : SpellIdentifier
---@return boolean isCached 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Spell.IsSpellDataCached(spellIdentifier)
end

---
---@param spellIdentifier number |string : SpellIdentifier
---@return boolean disabled 
function C_Spell.IsSpellDisabled(spellIdentifier)
end

---Returns true if the spell can be cast on hostile targets
---@param spellIdentifier number |string : SpellIdentifier
---@return boolean isHarmful 
function C_Spell.IsSpellHarmful(spellIdentifier)
end

---Returns true if the spell can be cast on the player or other friendly targets
---@param spellIdentifier number |string : SpellIdentifier
---@return boolean isHelpful 
function C_Spell.IsSpellHelpful(spellIdentifier)
end

---Returns true if the current target is within range of the spell; False if out of range; Nil if range check was invalid
---@param spellIdentifier number |string : SpellIdentifier
---@param targetUnit string ? : UnitToken - Optional specific target; If not supplied, player's current target (if any) will be used
---@return boolean inRange ? - May be nil if the range check was invalid, ie due to unknown/invalid spell, missing/invalid target, etc
function C_Spell.IsSpellInRange(spellIdentifier, targetUnit)
end

---
---@param spellIdentifier number |string : SpellIdentifier
---@return boolean isPassive 
function C_Spell.IsSpellPassive(spellIdentifier)
end

---Returns whether the spell is currently castable.
---@param spellIdentifier number |string : SpellIdentifier - Spell ID, name, name(subtext), or link
---@return boolean isUsable - True if the spell is usable, false otherwise
---@return boolean insufficientPower - True if spell is specifically unusable due to insufficient power (i.e. MANA, RAGE, etc)
---@since Patch 11.0.0 (2024-07-23): Added, replacement for IsUsableSpell.
function C_Spell.IsSpellUsable(spellIdentifier)
end

---
---@param spellIdentifier number |string : SpellIdentifier
function C_Spell.PickupSpell(spellIdentifier)
end

---Requests spell data and fires SPELL_DATA_LOAD_RESULT.
---@param spellIdentifier number |string : SpellIdentifier
---@since Patch 8.0.1 (2018-07-17): Added.
function C_Spell.RequestLoadSpellData(spellIdentifier)
end

---
---@param spellIdentifier number |string : SpellIdentifier
---@param enabled boolean 
function C_Spell.SetSpellAutoCastEnabled(spellIdentifier, enabled)
end

---Returns true if the spell has a min and/or max range greater than 0
---@param spellIdentifier number |string : SpellIdentifier
---@return boolean hasRange 
function C_Spell.SpellHasRange(spellIdentifier)
end

---
---@return boolean isEnchanting 
function C_Spell.TargetSpellIsEnchanting()
end

---
---@return boolean jumpsUpgradeTrack 
function C_Spell.TargetSpellJumpsUpgradeTrack()
end

---
---@return boolean result 
function C_Spell.TargetSpellReplacesBonusTree()
end

---Toggles whether spell's autoCast is enabled
---@param spellIdentifier number |string : SpellIdentifier
function C_Spell.ToggleSpellAutoCast(spellIdentifier)
end
