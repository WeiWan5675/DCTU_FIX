local Lib_UIDropDownMenu_SetWidth_org = Lib_UIDropDownMenu_SetWidth

local version, build, date, tocversion = GetBuildInfo()


function GetPlayerBuff(buffId, buffFilter)
	local buffIndex, untilCancelled
	local name, rank, icon, count, debuffType, duration, expirationTime, isMine, isStealable = UnitAura("player", buffId, buffFilter)
	if(duration == nil) then
		untilCancelled = 1
	end
	if(name == nil) then
		buffIndex = 0
	else
		buffIndex = buffId
	end
	return buffIndex, untilCancelled
end

function GetPlayerBuffName(buffIndex)

	local name, rank, icon, count, debuffType, duration, expirationTime, isMine, isStealable = UnitAura("player", buffIndex,"HELPFUL")
	return name

end

function GetPlayerBuffTimeLeft(buffIndex)
	local name, rank, icon, count, debuffType, duration, expirationTime, isMine, isStealable = UnitAura("player", buffIndex,"HELPFUL")
	if expirationTime then
		return expirationTime - GetTime()
	else
		return 0
	end

end

function OptionsFrame_DisableCheckBox(checkBox)
	--checkBox:SetChecked(0);
	checkBox:Disable();
	getglobal(checkBox:GetName().."Text"):SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
end

function OptionsFrame_EnableCheckBox(checkBox, setChecked, checked, isWhite)
	if ( setChecked ) then
		checkBox:SetChecked(checked);
	end
	checkBox:Enable();
	if ( isWhite ) then
		getglobal(checkBox:GetName().."Text"):SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	else
		getglobal(checkBox:GetName().."Text"):SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	end
	
end

function OptionsFrame_DisableSlider(slider)
	local name = slider:GetName()
	if not getglobal(name) then return end
	getglobal(name):EnableMouse(false)
	getglobal(name.."Text"):SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b)
	getglobal(name.."Low"):SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b)
	getglobal(name.."High"):SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b)
end

function OptionsFrame_EnableSlider(slider)
	local name = slider:GetName()
	if not getglobal(name) then return end
	getglobal(name):EnableMouse(true)
	getglobal(name.."Text"):SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b)
	getglobal(name.."Low"):SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
	getglobal(name.."High"):SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
end

function OptionsFrame_EnableCheckBox(obj)
	obj:Enable()
end

BACKDROP_TOOLTIP_NOTILEEDGE_16_16_5555 = {
	bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = true,
	tileSize = 16,
	edgeSize = 16,
	insets = { left = 5, right = 5, top = 5, bottom = 5 },
}

BACKDROP_TOOLTIP_NOTILEEDGE_16_16_5555 = {
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = true,
	tileSize = 16,
	edgeSize = 16,
	insets = { left = -1, right = -1, top = -1, bottom = -1 },
}

BACKDROP_TOOLTIP_8_8_2222 = {
	bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = true,
	tileSize = 8,
	edgeSize = 8,
	insets = { left = 2, right = 2, top = 2, bottom = 2 },
}

DCTCastBarTemplate_BORDERDROP_COLOR = CreateColor(0.1,0.22,0.35,1)

DCT_OptionFrameBox_BORDERDROP_COLOR = CreateColor(0.4,0.4,0.4)
DCT_OptionFrameBox_BORDERDROPBORDER_COLOR = CreateColor(0.5,0.5,0.5)
DCT_OptionsFrameBG_BORDERDROP_COLOR = CreateColor(0.1,0.1,0.1)
DCT_OptionsFrameBG_BORDERDROPBORDER_COLOR = CreateColor(0.4,0.4,0.4)

DCTAniOption_BORDERDROP_COLOR = CreateColor(0.15,0.15,0.15)