function INRLR_CreateOptionsPanel()

	local VERTICAL_SPACE_BETWEEN_ELEMENTS = 15

	--[[ Main Panel ]]--
	local INRLRConfigFrame = CreateFrame('Frame', 'INRLRConfigFrame', InterfaceOptionsFramePanelContainer)
	INRLRConfigFrame:Hide()
	INRLRConfigFrame.name = INRLR_LONG_ADDON_NAME
	InterfaceOptions_AddCategory(INRLRConfigFrame)

	--[[ Title ]]--
	local TitleLabel = INRLRConfigFrame:CreateFontString(nil, 'ARTWORK', 'GameFontNormalLarge')
	TitleLabel:SetPoint('TOPLEFT', INRLRConfigFrame, 'TOPLEFT', 16, -16)
	TitleLabel:SetText(INRLR_LONG_ADDON_NAME)

	-- [[ Version ]] --
	local AddonVersion = GetAddOnMetadata("InRLootRoll", "Version")
	local VersionLabel = INRLRConfigFrame:CreateFontString(nil, 'ARTWORK', 'GameFontNormalSmall')
	VersionLabel:SetPoint('BOTTOMLEFT', TitleLabel, 'BOTTOMRIGHT', 8, 0)
	VersionLabel:SetText('v' .. AddonVersion)

	--[[ Author ]]--
	local AuthorLabel = INRLRConfigFrame:CreateFontString(nil, 'ARTWORK', 'GameFontNormalSmall')
	AuthorLabel:SetPoint('TOPRIGHT', INRLRConfigFrame, 'TOPRIGHT', -16, -24)
	AuthorLabel:SetText('Author: ' .. INRLR_AUTHOR_NAME)

	--[[ INRLR_INCLUDE_BOE ]]--
	INRLR_IncludeBOECheckbox = CreateFrame('CheckButton', 'INRLRIncludeBOE', INRLRConfigFrame, 'InterfaceOptionsCheckButtonTemplate')
	INRLR_IncludeBOECheckbox:SetPoint('TOPLEFT', TitleLabel, 'BOTTOMLEFT', 0, -VERTICAL_SPACE_BETWEEN_ELEMENTS)
	INRLR_IncludeBOECheckbox:SetChecked(INRLR_INCLUDE_BOE)

	local IncludeBOELabel = INRLR_IncludeBOECheckbox:CreateFontString(nil, 'ARTWORK', 'GameFontHighlight')
	IncludeBOELabel:SetPoint('LEFT', INRLR_IncludeBOECheckbox, 'RIGHT', 0, 0)
	IncludeBOELabel:SetText('Include Bind on Equip items')

	--[[ INRLR_CURRENT_SPEC_ONLY ]]--
	INRLR_CurrentSpecOnlyCheckbox = CreateFrame('CheckButton', 'INRLRCurrentSpecOnly', INRLRConfigFrame, 'InterfaceOptionsCheckButtonTemplate')
	INRLR_CurrentSpecOnlyCheckbox:SetPoint('TOPLEFT', INRLR_IncludeBOECheckbox, 'BOTTOMLEFT', 0, -VERTICAL_SPACE_BETWEEN_ELEMENTS)
	INRLR_CurrentSpecOnlyCheckbox:SetChecked(INRLR_CURRENT_SPEC_ONLY)

	local CurrentSpecOnlyLabel = INRLR_CurrentSpecOnlyCheckbox:CreateFontString(nil, 'ARTWORK', 'GameFontHighlight')
	CurrentSpecOnlyLabel:SetPoint('LEFT', INRLR_CurrentSpecOnlyCheckbox, 'RIGHT', 0, 0)
	CurrentSpecOnlyLabel:SetText('Evaluate based on current spec only')

	--[[ INRLR_NOTIFY_GROUP ]]--
	INRLR_NotifyGroupCheckbox = CreateFrame('CheckButton', 'INRLRNotifyGroup', INRLRConfigFrame, 'InterfaceOptionsCheckButtonTemplate')
	INRLR_NotifyGroupCheckbox:SetPoint('TOPLEFT', INRLR_CurrentSpecOnlyCheckbox, 'BOTTOMLEFT', 0, -VERTICAL_SPACE_BETWEEN_ELEMENTS)
	INRLR_NotifyGroupCheckbox:SetChecked(INRLR_NOTIFY_GROUP)

	local NotifyGroupLabel = INRLR_NotifyGroupCheckbox:CreateFontString(nil, 'ARTWORK', 'GameFontHighlight')
	NotifyGroupLabel:SetPoint('LEFT', INRLR_NotifyGroupCheckbox, 'RIGHT', 0, 0)
	NotifyGroupLabel:SetText('Notify group (automatically disabled in LFR)')

	--[[ INRLR_COORDINATE_ROLLS ]]--
	INRLR_CoordinateRollsCheckbox = CreateFrame('CheckButton', 'INRLRCoordinateRolls', INRLRConfigFrame, 'InterfaceOptionsCheckButtonTemplate')
	INRLR_CoordinateRollsCheckbox:SetPoint('TOPLEFT', INRLR_NotifyGroupCheckbox, 'BOTTOMLEFT', 0, -VERTICAL_SPACE_BETWEEN_ELEMENTS)
	INRLR_CoordinateRollsCheckbox:SetChecked(INRLR_COORDINATE_ROLLS)

	INRLR_CoordinateRollsLabel1 = INRLR_CoordinateRollsCheckbox:CreateFontString(nil, 'ARTWORK', 'GameFontHighlight')
	INRLR_CoordinateRollsLabel1:SetPoint('LEFT', INRLR_CoordinateRollsCheckbox, 'RIGHT', 0, 0)
	INRLR_CoordinateRollsLabel1:SetText('Coordinate rolls (group leaders or assistants only)')

	INRLR_CoordinateRollsLabel2 = INRLR_CoordinateRollsCheckbox:CreateFontString(nil, 'ARTWORK', 'GameFontHighlight')
	INRLR_CoordinateRollsLabel2:SetPoint('TOPLEFT', INRLR_CoordinateRollsLabel1, 'BOTTOMLEFT', 20, -10)
	INRLR_CoordinateRollsLabel2:SetText('Manage loot rolls. Players can whisper the roll coordinator with "trade" or "trade [item]" to initiate rolls.')
	INRLR_CoordinateRollsLabel2:SetWordWrap(true)
	INRLR_CoordinateRollsLabel2:SetJustifyH('LEFT')
	INRLR_CoordinateRollsLabel2:SetWidth(450)

	--[[ INRLR_CHECK_CHARACTER_LEVEL ]]--
	INRLR_CheckCharacterLevelCheckbox = CreateFrame('CheckButton', 'INRLRCheckCharacterLevel', INRLRConfigFrame, 'InterfaceOptionsCheckButtonTemplate')
	INRLR_CheckCharacterLevelCheckbox:SetPoint('TOPLEFT', INRLR_CoordinateRollsCheckbox, 'BOTTOMLEFT', 0, -VERTICAL_SPACE_BETWEEN_ELEMENTS*2)
	INRLR_CheckCharacterLevelCheckbox:SetChecked(INRLR_CHECK_CHARACTER_LEVEL)

	local CheckCharacterLevelLabel = INRLR_CheckCharacterLevelCheckbox:CreateFontString(nil, 'ARTWORK', 'GameFontHighlight')
	CheckCharacterLevelLabel:SetPoint('LEFT', INRLR_CheckCharacterLevelCheckbox, 'RIGHT', 0, 0)
	CheckCharacterLevelLabel:SetText('Exclude notifications if character is too low level to equip item')

	--[[ INRLR_HIGHLIGHT_RAID_FRAMES ]]--
	INRLR_HighlightRaidFramesCheckbox = CreateFrame('CheckButton', 'INRLRHighlightRaidFrames', INRLRConfigFrame, 'InterfaceOptionsCheckButtonTemplate')
	INRLR_HighlightRaidFramesCheckbox:SetPoint('TOPLEFT', INRLR_CheckCharacterLevelCheckbox, 'BOTTOMLEFT', 0, -VERTICAL_SPACE_BETWEEN_ELEMENTS)
	INRLR_HighlightRaidFramesCheckbox:SetChecked(INRLR_HIGHLIGHT_RAID_FRAMES)

	local HighlightRaidFramesLabel = INRLR_HighlightRaidFramesCheckbox:CreateFontString(nil, 'ARTWORK', 'GameFontHighlight')
	HighlightRaidFramesLabel:SetPoint('LEFT', INRLR_HighlightRaidFramesCheckbox, 'RIGHT', 0, 0)
	HighlightRaidFramesLabel:SetText('Show tradeable items in raid frames')

	--[[ INRLR_HIGHLIGHT_SIZE ]]--
	INRLR_HighlightSizeSlider = CreateFrame("Slider", "INRLRHighlightSize", INRLRConfigFrame, "OptionsSliderTemplate")
	INRLRConfigFrame.ScalingSlider = slider
	INRLR_HighlightSizeSlider:SetOrientation("HORIZONTAL")
	INRLR_HighlightSizeSlider:SetMinMaxValues(10, 30)
	INRLR_HighlightSizeSlider:SetValueStep(1)
	INRLR_HighlightSizeSlider:SetObeyStepOnDrag(true)
	INRLR_HighlightSizeSlider:SetWidth(180)
	INRLR_HighlightSizeSlider:SetHeight(16)
	INRLR_HighlightSizeSlider:SetPoint("LEFT", HighlightRaidFramesLabel, "RIGHT", 20, 0)
	_G[INRLR_HighlightSizeSlider:GetName().."High"]:SetText("large")
	_G[INRLR_HighlightSizeSlider:GetName().."Low"]:SetText("small")
	_G[INRLR_HighlightSizeSlider:GetName().."Text"]:SetText("icon size")
	INRLR_HighlightSizeSlider:SetValue(INRLR_HIGHLIGHT_SIZE)

	--[[ Thank you message ]] --
	local ThankYouLabel = INRLRConfigFrame:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
	ThankYouLabel:SetPoint('BOTTOM', INRLRConfigFrame, 'BOTTOM', 0, 48)
	ThankYouLabel:SetText('Thank you to all of the players who trade loot to others who can use it! Your generosity is part of what makes the WoW community great.\nYou rock!!!')
	ThankYouLabel:SetWidth(300)
	ThankYouLabel:SetWordWrap(true)

	--[[ OnShow Event]]
	INRLRConfigFrame:SetScript('OnShow', function(frame)
		INRLR_IncludeBOECheckbox:SetChecked(INRLR_INCLUDE_BOE)
		INRLR_CurrentSpecOnlyCheckbox:SetChecked(INRLR_CURRENT_SPEC_ONLY)
		INRLR_CheckCharacterLevelCheckbox:SetChecked(INRLR_CHECK_CHARACTER_LEVEL)
		INRLR_HighlightRaidFramesCheckbox:SetChecked(INRLR_HIGHLIGHT_RAID_FRAMES)
		INRLR_NotifyGroupCheckbox:SetChecked(INRLR_NOTIFY_GROUP)
		INRLR_CoordinateRollsCheckbox:SetChecked(INRLR_COORDINATE_ROLLS)
		INRLR_HighlightSizeSlider:SetValue(INRLR_HIGHLIGHT_SIZE)
	end)

	--[[ Okay Action ]]--
	function INRLRConfigFrame.okay(arg1, arg2, arg3, ...)
		INRLR_INCLUDE_BOE = INRLR_IncludeBOECheckbox:GetChecked()
		INRLR_CURRENT_SPEC_ONLY = INRLR_CurrentSpecOnlyCheckbox:GetChecked()
		INRLR_CHECK_CHARACTER_LEVEL = INRLR_CheckCharacterLevelCheckbox:GetChecked()
		INRLR_HIGHLIGHT_RAID_FRAMES = INRLR_HighlightRaidFramesCheckbox:GetChecked()
		INRLR_NOTIFY_GROUP = INRLR_NotifyGroupCheckbox:GetChecked()
		INRLR_COORDINATE_ROLLS = INRLR_CoordinateRollsCheckbox:GetChecked()
		INRLR_HIGHLIGHT_SIZE = INRLR_HighlightSizeSlider:GetValue()
		INRLR_ResizeHighlights()
	end

end
