-- C_BarberShop API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_BarberShop
C_BarberShop = {}

---Submits chosen barber shop customizations to the server for application.
---@return boolean success 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.ApplyCustomizationChoices()
end

---Dismisses the barber shop UI, cancelling all customizations.
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.Cancel()
end

---Clears all actively previewed customization choices on the character.
---@param clearSavedChoices boolean ? = false
---@since Patch 9.1.0 (2021-06-29): Added clearSavedChoices argument.
function C_BarberShop.ClearPreviewChoices(clearSavedChoices)
end

---
---@return CharCustomizationCategory categories []
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.GetAvailableCustomizations()
end

---Returns the current camera zoom level.
---@return number zoomLevel 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.GetCurrentCameraZoom()
end

---
---@return PlayerInfoCharacterData characterData 
---@since Patch 10.0.5 (2023-01-24): Replaced BarberShopCharacterData with PlayerInfoCharacterData.
function C_BarberShop.GetCurrentCharacterData()
end

---Returns the cost of the currently selected customizations.
---@return number cost 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.GetCurrentCost()
end

---
---@return number chrModelID ?
function C_BarberShop.GetViewingChrModel()
end

---
---@return boolean hasAlteredForm 
function C_BarberShop.HasAlteredForm()
end

---
---@return boolean hasChanges 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.HasAnyChanges()
end

---
---@param featureMask Enum.ChrModelFeatureFlags 
---@return boolean hasCustomizationFeature 
function C_BarberShop.HasCustomizationFeature(featureMask)
end

---Returns true if the player is currently customizing an alternate form.
---@return boolean isViewingAlteredForm 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.IsViewingAlteredForm()
end

---
---@param choiceID number 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_BarberShop.MarkCustomizationChoiceAsSeen(choiceID)
end

---
---@param optionID number 
---@since Patch 9.1.5 (2021-11-02): Added.
function C_BarberShop.MarkCustomizationOptionAsSeen(optionID)
end

---Previews a customization choice on the character without selecting it.
---@param optionID number 
---@param choiceID number 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.PreviewCustomizationChoice(optionID, choiceID)
end

---
---@since Patch 9.1.0 (2021-06-29): Added.
function C_BarberShop.RandomizeCustomizationChoices()
end

---Resets the camera rotation.
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.ResetCameraRotation()
end

---Resets all selected customization choices.
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.ResetCustomizationChoices()
end

---Rotates the camera by the specified number of degrees.
---@param diffDegrees number 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.RotateCamera(diffDegrees)
end

---
---@since Patch 9.1.5 (2021-11-02): Added.
function C_BarberShop.SaveSeenChoices()
end

---Sets the distance offset of the camera.
---@param offset number 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.SetCameraDistanceOffset(offset)
end

---Sets the zoom level of the camera.
---@param zoomLevel number 
---@param keepCustomZoom boolean ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.SetCameraZoomLevel(zoomLevel, keepCustomZoom)
end

---Selects a customization choice.
---@param optionID number 
---@param choiceID number 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.SetCustomizationChoice(optionID, choiceID)
end

---Controls whether or not the character should be dressed.
---@param dressedState boolean 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.SetModelDressState(dressedState)
end

---Changes the selected gender of the character.
---@param sex Enum.UnitSex 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.SetSelectedSex(sex)
end

---Controls whether the alternate form for a character is being customized.
---@param isViewingAlteredForm boolean 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.SetViewingAlteredForm(isViewingAlteredForm)
end

---
---@param chrModelID number ?
---@param spellShapeshiftFormID number ?
---@since Patch 11.1.0 (2025-02-25): Added spellShapeshiftFormID argument.
function C_BarberShop.SetViewingChrModel(chrModelID, spellShapeshiftFormID)
end

---Changes the shapeshift form being customized. Set to nil to revert to customizing the characters' normal form.
---@param shapeshiftFormID number ?
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.SetViewingShapeshiftForm(shapeshiftFormID)
end

---Zooms the camera by a specifed amount.
---@param zoomAmount number 
---@since Patch 9.0.1 (2020-10-13): Added.
function C_BarberShop.ZoomCamera(zoomAmount)
end
