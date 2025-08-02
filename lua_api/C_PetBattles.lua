-- C_PetBattles API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_PetBattles
C_PetBattles = {}

---Accepts a pending PvP duel invitation.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.AcceptPVPDuel()
end

---Accepts a pending PvP match from the queue.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.AcceptQueuedPVPMatch()
end

---Returns whether the player can currently accept the queued PvP pet battle match.
---@return boolean canAccept - true if the player can currently accept the queued PvP pet battle match invitation, false otherwise.
---@since Patch 5.3.0 (2013-05-21): Added.
function C_PetBattles.CanAcceptQueuedPVPMatch()
end

---Returns whether or not the active pet can be swapped out in the pet battle.
---@return boolean usable - True if active pet can swap out, false otherwise
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.CanActivePetSwapOut()
end

---Returns whether or not the pet can swap in to the active position.
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@return boolean usable - True if the pet is able to swap in, false otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.CanPetSwapIn(petIndex)
end

---Declines a pending PvP pet battle duel invitation.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.CancelPVPDuel()
end

---Changes the active pet out for a different pet in a pet battle.
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.ChangePet(petIndex)
end

---Declines a pending PvP match from the queue.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.DeclineQueuedPVPMatch()
end

---Forfeits the current Pet Battle immediately.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.ForfeitGame()
end

---Returns the effect info for a pet's ability.
---@param abilityID number - The ID of this ability.
---@param turnIndex number - The turn in question for this ability. This can be obtained from C_PetBattles.GetAbilityProcTurnIndex.
---@param effectIndex number - The effect in question for this ability. This can be obtained from the unparsed description for this ability with extensive string manipulation, but currently no ability has more than 7 effects, so loops work too.
---@param effectName string - One of the effect names from C_PetBattles.GetAllEffectNames.
---@return number value - The information you requested for a specific element of a certain effect of a certain ability at a specific turn.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetAbilityEffectInfo(abilityID, turnIndex, effectIndex, effectName)
end

---Returns ability information for an ability in a slot on a pet that you own.
---@param petOwner number - 1: Current player, 2: Opponent
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@param abilityIndex number - Accepted values are 1-3, corresponding to the ability in the slot with that number.
---@return number id - The ID of the ability returned back.
---@return string name - The name of the ability.
---@return string icon - The full path to the ability's icon.
---@return number maxCooldown - The normal cooldown period for the ability.
---@return string unparsedDescription - The ability's description in its pure and unparsed form.
---@return number numTurns - Duration of the ability. This is typically 1, but some abilities last multiple rounds.
---@return number petType - Returned values are 1-10, based on the pet's type.
---@return boolean noStrongWeakHints - True if the ability should not show Strong/Weak indicators, false otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetAbilityInfo(petOwner, petIndex, abilityIndex)
end

---Returns very detailed information about a specific ability.
---@param id number - ID of the ability.
---@return number id - The ID of the ability returned back.
---@return string name - The name of the ability.
---@return string icon - The full path to the ability's icon.
---@return number maxCooldown - The normal cooldown period for the ability.
---@return string unparsedDescription - The ability's description in its pure and unparsed form.
---@return number numTurns - Duration of the ability. This is typically 1, but some abilities last multiple rounds.
---@return number petType - Returned values are 1-10, based on the battlePetTypeID⊞
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetAbilityInfoByID(id)
end

---Returns the turn index for a specific ability and proc type.
---@param abilityID number - ID of the ability.
---@param procType number - Index corresponding to a proc type.
---@return number turnIndex - Number of rounds that the ability has been in play.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetAbilityProcTurnIndex(abilityID, procType)
end

---Returns information about a pet's ability's current state in the pet battle.
---@param petOwner number - 1: Current player, 2: Opponent
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@param actionIndex number - Accepted values are 1-3, corresponding to the ability buttons from left to right.
---@return boolean isUsable - if ability can be used
---@return number currentCooldown - turns until ability can be used (if not usable due to cooldown)
---@return number currentLockdown - turns until ability can be used (if not usable due to lockdowns, such as Nevermore)
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetAbilityState(petOwner, petIndex, actionIndex)
end

---Returns the modification state for an ability.
---@param abilityID number - ID of the ability.
---@param stateID number - ID of a state for Pet Battles.
---@return number abilityStateMod - The ability's modification state.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetAbilityStateModification(abilityID, stateID)
end

---Returns the index of the active pet for the specified owner in the pet battle.
---@param petOwner number - 1: Current player, 2: Opponent
---@return number petIndex - Returned values are always 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetActivePet(petOwner)
end

---Returns all effect parameter names for Pet Battles.
---@return string effect1, effect2, .. - Each return is the name of a different effect parameter for Pet Battles. These effect names can be passed to C_PetBattles.GetAbilityEffectInfo in order to return information about that effect.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetAllEffectNames()
end

---Returns all state IDs.
---@param stateEnv table ? - If supplied, this table will be filled with all known state IDs.
---@return table<string,number> stateIDs - A table with all state IDs. If stateEnv is supplied, the returned table will be the same table .
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetAllStates(stateEnv)
end

---Returns the modifier for an attack launched by a pet against an enemy pet.
---@param petType number - Index of the pet's type. Accepted values are 1-10.
---@param enemyPetType number - Index of the enemy pet's type. Accepted values are 1-10.
---@return number modifier - The multiplier that should be applied to an attack from petType launched against enemyPetType.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetAttackModifier(petType, enemyPetType)
end

---Returns information for an aura in a pet battle.
---@param petOwner number - 1: Current player, 2: Opponent.
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@param auraIndex number - The number from an index of all active auras.
---@return number auraID - The ability ID of the aura (all auras are abilities too).
---@return number instanceID - A unique identifier for this aura; used for differentiation purposes only.
---@return number turnsRemaining - The number of rounds left for the aura to remain active.
---@return boolean isBuff - True if the aura is displayed to the user, false otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetAuraInfo(petOwner, petIndex, auraIndex)
end

---Returns the current battle state for the pet battle.
---@return number battleState - A value representing the state of the battle.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetBattleState()
end

---Returns the rarity of a specific pet in the current pet battle.
---@param petOwner Enum.BattlePetOwner 
---@return Enum.BattlePetBreedQuality quality 
---@since Patch 11.0.0 (2024-07-23): Changed return value to an enum
The value was decremented by 1, it previously was 1: "Poor", 2: "Common", 3: "Uncommon", 4: "Rare", 5: "Epic", 6: "Legendary"
function C_PetBattles.GetBreedQuality(petOwner)
end

---Returns the current displayID of a specific pet in the pet battle.
---@param petOwner number - 1: Current player, 2: Opponent
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@return number displayID - Display ID of the pet (model/skin combination)
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetDisplayID(petOwner, petIndex)
end

---Returns the percentage of current health your pets will lose if you forfeit the battle.
---@return number forfeitPenalty - percentage of current health each pet in your team will lose, e.g. 10 meaning 10% of current health.
---@since Patch 5.2.0 (2013-03-05): Added.
function C_PetBattles.GetForfeitPenalty()
end

---Returns the current health of a specific pet in the current pet battle.
---@param petOwner number - 1: Current player, 2: Opponent
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@return number health - Current health amount of the pet
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetHealth(petOwner, petIndex)
end

---Returns the current icon of a specific pet in the pet battle.
---@param petOwner Enum.BattlePetOwner 
---@return number iconFileID : fileID - Full path of the species' icon
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetIcon(petOwner)
end

---Returns the level of a specific pet in the current pet battle.
---@param petOwner number - 1: Current player, 2: Opponent
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@return number level - Level of the pet
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetLevel(petOwner, petIndex)
end

---Returns the maximum health of a specific pet in the current pet battle.
---@param petOwner number - 1: Current player, 2: Opponent
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@return number maxHealth - Maximum health amount of the pet
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetMaxHealth(petOwner, petIndex)
end

---Returns the name(s) of a specific pet in the pet battle.
---@param petOwner Enum.BattlePetOwner 
---@return string customName - Name of the pet. If the pet has a custom name, it will be returned here. If not, it returns the species name here as well as in the second return.
---@return string speciesName - Name of the pet's Species.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetName(petOwner)
end

---Returns the number of active auras affecting the current pet in the pet battle.
---@param petOwner number - 1: Current player, 2: Opponent.
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@return number numAuras - Amount of active auras affecting the pet.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetNumAuras(petOwner, petIndex)
end

---Returns the number of pets that the specified owner has in the pet battle.
---@param petOwner number 
---@return number numPets - Amount of pets that the current owner has in the pet battle (always 1-3).
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetNumPets(petOwner)
end

---Returns status information about the current PvP pet battle matchmaking queue.
---@return string queueState - Either "proposal", "queued", "suspended", or nil.
---@return number estimatedTime - The current estimated wait time in seconds, rounded to the nearest second.
---@return number queuedTime - The time that the queue started at, in the same format as GetTime().
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetPVPMatchmakingInfo()
end

---Returns the species ID of a specific pet in the pet battle.
---@param petOwner number - 1: Current player, 2: Opponent
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@return number speciesID - Species ID of the pet
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetPetSpeciesID(petOwner, petIndex)
end

---Returns the current pet type of a specific pet in the pet battle.
---@param petOwner number - 1: Current player, 2: Opponent
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@return number petType - Returned values are 1-10.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetPetType(petOwner, petIndex)
end

---Returns the ability ID for the best trap available to the player in the pet battle.
---@return number trapAbilityID - Ability ID of the best trap you have available.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetPlayerTrapAbility()
end

---Returns the current Power of a specific pet in the pet battle.
---@param petOwner number - 1: Current player, 2: Opponent
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@return number power - Current amount of Power that the pet has
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetPower(petOwner, petIndex)
end

---Returns the selected action of a specific pet in the pet battle.
---@return number selectedActionType - 2: Ability, 3: Switch Pet, 4: Trap, 5: Skip turn
---@return number selectedActionIndex - Returned values are 1-3, corresponding to the ability buttons from left to right.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetSelectedAction()
end

---Returns the current Speed of a specific pet in the pet battle.
---@param petOwner number - 1: Current player, 2: Opponent
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@return number speed - Current amount of Speed that the pet has
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetSpeed(petOwner, petIndex)
end

---Returns the value of a specific state for a specific pet in a pet battle.
---@param petOwner number - Accepted values are actually 0 through 2, unlike all (?) other Pet Battle functions.
---@param petIndex number - Accepted values are actually 0 through 3, unlike all (?) other Pet Battle functions.
---@param stateID number - The ID of a Pet Battle's specific State.
---@return number stateValue - The value of the given state for the given pet.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetStateValue(petOwner, petIndex, stateID)
end

---Returns the remaining time and total time for your current turn in a PvP pet battle.
---@return number timeRemaining - Time in seconds remaining before you are forced to pass your turn
---@return number turnTime - Total time in seconds allotted for you to choose an ability
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetTurnTimeInfo()
end

---Returns the experience values of a specific pet in the current pet battle.
---@param petOwner number - 1: Current player, 2: Opponent
---@param petIndex number - Accepted values are 1-3, but the order is based on the initial order. Which pet is currently active is irrelevant to the index, if it was your 3rd pet when you entered battle, it will always be 3 on the index.
---@return number xp - Current experience progress towards the next level of the pet
---@return number maxXp - Total amount of experience required for the pet's current level to increase
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.GetXP(petOwner, petIndex)
end

---Returns whether or not there is a pet battle in progress.
---@return boolean inBattle - True if in a pet battle, false if not
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.IsInBattle()
end

---Returns whether or not a pet battle team is controlled by an NPC.
---@param petOwner number - 1: Current player, 2: Opponent.
---@return boolean isNPC - false if the pet owner is a player, true otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.IsPlayerNPC(petOwner)
end

---Returns whether or not you can skip your turn at the current time.
---@return boolean usable - True if you can skip your turn, false otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.IsSkipAvailable()
end

---Returns whether or not you can use a trap at this time.
---@return boolean usable - True if you can use a trap, false otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.IsTrapAvailable()
end

---Returns whether or not you are waiting on your opponent to decide a course of action in a PvP pet battle.
---@return boolean isWaiting - True if you are waiting on your opponent to choose an action, false otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.IsWaitingOnOpponent()
end

---Returns whether or not there is a wild pet battle in progress.
---@return boolean inWildBattle - True if in a wild pet battle, false if not in a wild pet battle or not in a pet battle at all
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.IsWildBattle()
end

---Starts the process of reporting one of your opponent's battle pets for having a bad name.
---@param petIndex number - Accepted values are 1-3, but the order is based off of the initial order. Which pet is currently active is irrelevant to the index, if it was its 3rd pet when it entered battle, it will always be 3 on the index.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.SetPendingReportBattlePetTarget(petIndex)
end

---Starts the process of reporting the specified battle pet for having a bad name.
---@param unit string UnitToken
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.SetPendingReportTargetFromUnit(unit)
end

---Returns whether or not the UI should show the pet select screen.
---@return boolean shouldShow - True if the pet selection frame should be shown, false otherwise.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.ShouldShowPetSelect()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.SkipTurn()
end

---Challenges the targeted player to a PvP pet battle duel.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.StartPVPDuel()
end

---Adds the current player to the PvP matchmaking queue.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.StartPVPMatchmaking()
end

---Removes the current player from the PvP matchmaking queue.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.StopPVPMatchmaking()
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@param actionIndex number - Accepted values are 1-3, corresponding to the ability buttons from left to right.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.UseAbility(actionIndex)
end

---#hwevent - This requires a hardware event i.e. keyboard/mouse input.
---@since Patch 5.0.4 (2012-08-28): Added.
function C_PetBattles.UseTrap()
end
