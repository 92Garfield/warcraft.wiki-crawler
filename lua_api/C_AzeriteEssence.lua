-- C_AzeriteEssence API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_AzeriteEssence
C_AzeriteEssence = {}

---
---@param essenceID number 
---@param milestoneID number 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.ActivateEssence(essenceID, milestoneID)
end

---
---@param essenceID number 
---@param milestoneID number 
---@return boolean canActivate 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.CanActivateEssence(essenceID, milestoneID)
end

---
---@param milestoneID number 
---@return boolean canDeactivate 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.CanDeactivateEssence(milestoneID)
end

---
---@return boolean canOpen 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.CanOpenUI()
end

---
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.ClearPendingActivationEssence()
end

---
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.CloseForge()
end

---
---@param essenceID number 
---@param rank number 
---@return string link : azessenceLink
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.GetEssenceHyperlink(essenceID, rank)
end

---
---@param essenceID number AzeriteEssence.db2
---@return  info structure - AzeriteEssenceInfo
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.GetEssenceInfo(essenceID)
end

---
---@return  essences structure - AzeriteEssenceInfo[]
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.GetEssences()
end

---
---@param milestoneID number 
---@return number essenceID 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.GetMilestoneEssence(milestoneID)
end

---
---@param milestoneID number 
---@return  info structure - AzeriteMilestoneInfo
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.GetMilestoneInfo(milestoneID)
end

---
---@param milestoneID number 
---@return number spellID 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.GetMilestoneSpell(milestoneID)
end

---
---@return  milestones structure - AzeriteMilestoneInfo[]
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.GetMilestones()
end

---
---@return number numUnlockedEssences 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.GetNumUnlockedEssences()
end

---
---@return number numUsableEssences 
---@since Patch 8.3.0 (2020-01-14): Added. (Build 34601 May 29 2020)
function C_AzeriteEssence.GetNumUsableEssences()
end

---
---@return number essenceID 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.GetPendingActivationEssence()
end

---
---@return boolean hasNeverActivatedAnyEssences 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.HasNeverActivatedAnyEssences()
end

---
---@return boolean hasEssence 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.HasPendingActivationEssence()
end

---
---@return boolean isAtForge 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.IsAtForge()
end

---
---@param essenceID number 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.SetPendingActivationEssence(essenceID)
end

---
---@param milestoneID number 
---@since Patch 8.2.0 (2019-06-25): Added.
function C_AzeriteEssence.UnlockMilestone(milestoneID)
end
