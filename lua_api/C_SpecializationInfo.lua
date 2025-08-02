-- C_SpecializationInfo API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_SpecializationInfo
C_SpecializationInfo = {}

---Returns true if the player is allowed to use the PvP talent UI, or false and a reason string if not.
---@return boolean canUse 
---@return string failureReason 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SpecializationInfo.CanPlayerUsePVPTalentUI()
end

---Returns true if the player is allowed to use the specialization UI, or false and a reason string if not.
---@return boolean canUse 
---@return string failureReason 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SpecializationInfo.CanPlayerUseTalentSpecUI()
end

---Returns true if the player is allowed to use the talent UI, or false and a reason string if not.
---@return boolean canUse 
---@return string failureReason 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_SpecializationInfo.CanPlayerUseTalentUI()
end

---
---@param isInspect boolean ?
---@param isPet boolean ?
---@return number groupIndex 
function C_SpecializationInfo.GetActiveSpecGroup(isInspect, isPet)
end

---
---@return number selectedPvpTalentIDs [] - Usable by GetPvpTalentInfoByID()
---@since Patch 8.0.1 (2018-07-17): Added.
function C_SpecializationInfo.GetAllSelectedPvpTalentIDs()
end

---
---@param specID number 
---@return number classID ?
function C_SpecializationInfo.GetClassIDFromSpecID(specID)
end

---
---@param inspectedUnit string 
---@param talentIndex number 
---@return number selectedTalentID ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_SpecializationInfo.GetInspectSelectedPvpTalent(inspectedUnit, talentIndex)
end

---
---@param classID number 
---@return number specCount 
---@since Patch 11.2.0 (2025-08-05): Changed specID argument to classID.
function C_SpecializationInfo.GetNumSpecializationsForClassID(classID)
end

---
---@return boolean hasUnspentSlot 
---@return boolean hasNewTalent 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_SpecializationInfo.GetPvpTalentAlertStatus()
end

---
---@param talentID number 
---@return PvpTalentInfo talentInfo ?
function C_SpecializationInfo.GetPvpTalentInfo(talentID)
end

---
---@param talentIndex number 
---@return PvpTalentSlotInfo slotInfo ?
---@since Patch 8.2.5 (2019-09-24): Added level field.
function C_SpecializationInfo.GetPvpTalentSlotInfo(talentIndex)
end

---
---@param talentIndex number 
---@return number requiredLevel ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_SpecializationInfo.GetPvpTalentSlotUnlockLevel(talentIndex)
end

---
---@param talentID number 
---@return number requiredLevel ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_SpecializationInfo.GetPvpTalentUnlockLevel(talentID)
end

---Returns the list of SpecializationIDs that are part of a specSet.
---@param specSetID number 
---@return number specIDs []
---@since Patch 9.0.2 (2020-11-17): Added.
function C_SpecializationInfo.GetSpecIDs(specSetID)
end

---
---@param isInspect boolean ?
---@param isPet boolean ?
---@param specGroupIndex number ?
---@return number specializationIndex 
function C_SpecializationInfo.GetSpecialization(isInspect, isPet, specGroupIndex)
end

---
---@param specializationIndex number 
---@param isInspect boolean ? = false
---@param isPet boolean ? = false
---@param inspectTarget string ?
---@param sex number ?
---@param groupIndex number ?
---@return number specId ? = 0
---@return string name ?
---@return string description ?
---@return number icon ? : fileID
---@return string role ?
---@return number primaryStat ?
---@return number pointsSpent ? = 0
---@return string background ?
---@return number previewPointsSpent ? = 0
---@return boolean isUnlocked ? = true
function C_SpecializationInfo.GetSpecializationInfo(specializationIndex, isInspect, isPet, inspectTarget, sex, groupIndex)
end

---
---@param specializationIndex number 
---@param isInspect boolean ?
---@param isPet boolean ?
---@return number spellIDs []
function C_SpecializationInfo.GetSpecializationMasterySpells(specializationIndex, isInspect, isPet)
end

---
---@param specializationID number 
---@return number spellID []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_SpecializationInfo.GetSpellsDisplay(specializationID)
end

---
---@param query TalentInfoQuery 
---@return TalentInfoResult result ?
function C_SpecializationInfo.GetTalentInfo(query)
end

---Returns whether player talent specialization info has been initialized.
---@return boolean isSpecializationDataInitialized 
---@since Patch 8.1.5 (2019-03-12): Added.
function C_SpecializationInfo.IsInitialized()
end

---
---@param talentID number 
---@return boolean locked 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_SpecializationInfo.IsPvpTalentLocked(talentID)
end

---
---@param specSetID number 
---@return boolean matches 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_SpecializationInfo.MatchesCurrentSpecSet(specSetID)
end

---
---@param specIndex number 
---@param petNumber number ?
function C_SpecializationInfo.SetPetSpecialization(specIndex, petNumber)
end

---
---@param talentID number 
---@param locked boolean 
---@since Patch 8.0.1 (2018-07-17): Added.
function C_SpecializationInfo.SetPvpTalentLocked(talentID, locked)
end

---
---@param specIndex number 
---@return boolean success 
function C_SpecializationInfo.SetSpecialization(specIndex)
end
