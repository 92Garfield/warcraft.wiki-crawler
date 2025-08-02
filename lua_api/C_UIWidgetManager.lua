-- C_UIWidgetManager API
-- Auto-generated Lua API stubs
-- https://warcraft.wiki.gg/

---@class C_UIWidgetManager
C_UIWidgetManager = {}

---Returns all widgets for a widget set ID.
---@param setID number UiWidgetSetID
---@return UIWidgetInfo widgets []
---@since Patch 8.0.1 (2018-07-17): Added.
function C_UIWidgetManager.GetAllWidgetsBySetID(setID)
end

---
---@return number setID : UiWidgetSetID - Returns 2
---@since Patch 8.0.1 (2018-07-17): Added.
function C_UIWidgetManager.GetBelowMinimapWidgetSetID()
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return BulletTextListWidgetVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetBulletTextListWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number 
---@return ButtonHeaderWidgetVisualizationInfo widgetInfo ?
function C_UIWidgetManager.GetButtonHeaderWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return CaptureBarWidgetVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added tooltipLoc, modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetCaptureBarWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return CaptureZoneVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added tooltipLoc, modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetCaptureZoneVisualizationInfo(widgetID)
end

---The DiscreteProgressSteps UI Widget is used for the Eye of the Jailer display while in the Maw.
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return DiscreteProgressStepsVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added tooltipLoc, modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetDiscreteProgressStepsVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return DoubleIconAndTextWidgetVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added tooltipLoc, modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetDoubleIconAndTextWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return DoubleStateIconRowVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added tooltipLoc, modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetDoubleStateIconRowVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return DoubleStatusBarWidgetVisualizationInfo widgetInfo ?
---@since Patch 9.2.0 (2022-02-22): Added fillMotionType field.
function C_UIWidgetManager.GetDoubleStatusBarWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return FillUpFramesWidgetVisualizationInfo widgetInfo ?
function C_UIWidgetManager.GetFillUpFramesWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return HorizontalCurrenciesWidgetVisualizationInfo widgetInfo ?
---@since Patch 8.0.1 (2018-07-17): Added.
function C_UIWidgetManager.GetHorizontalCurrenciesWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return IconAndTextWidgetVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added tooltipLoc, modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetIconAndTextWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return IconTextAndBackgroundWidgetVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetIconTextAndBackgroundWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return IconTextAndCurrenciesWidgetVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added tooltipLoc, modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetIconTextAndCurrenciesWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return ItemDisplayVisualizationInfo widgetInfo ?
function C_UIWidgetManager.GetItemDisplayVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return MapPinAnimationWidgetVisualizationInfo widgetInfo ?
function C_UIWidgetManager.GetMapPinAnimationWidgetVisualizationInfo(widgetID)
end

---
---@return number setID : UiWidgetSetID - Returns 240
---@since Patch 8.2.0 (2019-06-25): Added.
function C_UIWidgetManager.GetObjectiveTrackerWidgetSetID()
end

---
---@return number setID : UiWidgetSetID - Returns 283
---@since Patch 8.3.0 (2020-01-14): Added.
function C_UIWidgetManager.GetPowerBarWidgetSetID()
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return ScenarioHeaderCurrenciesAndBackgroundWidgetVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetScenarioHeaderCurrenciesAndBackgroundWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return ScenarioHeaderDelvesWidgetVisualizationInfo widgetInfo ?
function C_UIWidgetManager.GetScenarioHeaderDelvesWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return ScenarioHeaderTimerWidgetVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetScenarioHeaderTimerWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return SpacerVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added.
function C_UIWidgetManager.GetSpacerVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return SpellDisplayVisualizationInfo widgetInfo ?
---@since Patch 11.0.2 (2024-08-13): Removed shownState, enabledState fields.
function C_UIWidgetManager.GetSpellDisplayVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return StackedResourceTrackerWidgetVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added tooltipLoc, modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetStackedResourceTrackerWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return StatusBarWidgetVisualizationInfo widgetInfo ?
---@since Patch 10.1.0 (2023-05-02): Added textEnabledState, textFontType, textSizeType  fields.
function C_UIWidgetManager.GetStatusBarWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return TextColumnRowVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added.
function C_UIWidgetManager.GetTextColumnRowVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return TextWithStateWidgetVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added tooltipLoc, hAlign, modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetTextWithStateWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return TextWithSubtextWidgetVisualizationInfo widgetInfo ?
function C_UIWidgetManager.GetTextWithSubtextWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return TextureAndTextRowVisualizationInfo widgetInfo ?
---@since Patch 10.0.2 (2022-11-15): Changed textSizeType field from UIWidgetTextSizeType to UIWidgetTextureAndTextSizeType.
function C_UIWidgetManager.GetTextureAndTextRowVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return TextureAndTextVisualizationInfo widgetInfo ?
---@since Patch 8.2.0 (2019-06-25): Added.
function C_UIWidgetManager.GetTextureAndTextVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return TextureWithAnimationVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added tooltipLoc, modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetTextureWithAnimationVisualizationInfo(widgetID)
end

---Returns the widget set ID for the top center part of the screen.
---@return number setID : UiWidgetSetID - Returns 1
---@since Patch 8.0.1 (2018-07-17): Added.
function C_UIWidgetManager.GetTopCenterWidgetSetID()
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return TugOfWarWidgetVisualizationInfo widgetInfo ?
function C_UIWidgetManager.GetTugOfWarWidgetVisualizationInfo(widgetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return UnitPowerBarWidgetVisualizationInfo widgetInfo ?
---@since Patch 9.2.0 (2022-02-22): Added.
function C_UIWidgetManager.GetUnitPowerBarWidgetVisualizationInfo(widgetID)
end

---
---@param widgetSetID number UiWidgetSetID
---@return UIWidgetSetInfo widgetSetInfo 
---@since Patch 9.0.2 (2020-11-17): Added.
function C_UIWidgetManager.GetWidgetSetInfo(widgetSetID)
end

---
---@param widgetID number - Returned from UPDATE_UI_WIDGET and C_UIWidgetManager.GetAllWidgetsBySetID()
---@return ZoneControlVisualizationInfo widgetInfo ?
---@since Patch 9.1.0 (2021-06-29): Added tooltipLoc, modelSceneLayer, scriptedAnimationEffectID fields.
function C_UIWidgetManager.GetZoneControlVisualizationInfo(widgetID)
end

---
---@param unitToken string UnitId
---@param isGuid boolean ? = false
---@since Patch 9.1.5 (2021-11-02): Added isGuid
function C_UIWidgetManager.RegisterUnitForWidgetUpdates(unitToken, isGuid)
end

---
---@param unit string ? : UnitId
---@since Patch 9.0.1 (2020-10-13): Added.
function C_UIWidgetManager.SetProcessingUnit(unit)
end

---
---@param unit string ? : UnitId
---@since Patch 9.1.5 (2021-11-02): Added.
function C_UIWidgetManager.SetProcessingUnitGuid(unit)
end

---
---@param unitToken string UnitId
---@param isGuid boolean ? = false
---@since Patch 9.1.5 (2021-11-02): Added isGuid
function C_UIWidgetManager.UnregisterUnitForWidgetUpdates(unitToken, isGuid)
end
