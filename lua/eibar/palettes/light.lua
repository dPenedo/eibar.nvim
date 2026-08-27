local backgrounds = {
	eibar = {
		-- hue 162, inverso del eibar oscuro, saturación baja para que no tire a verde
		base00 = "#ccd1d0",
		base01 = "#c8cecd",
		base02 = "#c4cbc9",
		base03 = "#b7c2be",
		base04 = "#a9b8b4",
		base05 = "#9fb5af",
	},
	sanblas = {
		base00 = "#d1cfcc",
		base01 = "#cfcdc8",
		base02 = "#cbc9c4",
		base03 = "#c2bfb7",
		base04 = "#b8b4a9",
		base05 = "#a39e8f",
	},
}

local function get_palette()
	local config = require("eibar.config")
	local bgs = backgrounds[config.background_style] or backgrounds.eibar

	return {
		base00 = bgs.base00,
		base01 = bgs.base01,
		base02 = bgs.base02,
		base03 = bgs.base03,
		base04 = bgs.base04,
		base05 = bgs.base05,
		-- UI
		focusedBorder = "#A9B7CC",
		windowBorder = "#265B64",

		-- Text
		mainText = "#272620",
		sanBlas = "#201D13",
		lineNumberText = "#749999",
		commentText = "#968670",

		-- Syntax
		syntaxFunction = "#394b6e",
		morea = "#504666",
		lainoak = "#404A6C",
		-- egoIbaia = "#215466",
		egoIbaia = "#497180",

		keyword = "#6A2C74",
		keywordSpecial = "#863522",
		arrate = "#2E5420",
		astelehena = "#205C44",
		damasquinado = "#68541D",
		torreIpurua = "#6E4428",
		sanAndres = "#605328",
		untzaga = "#823C24",

		-- Diagnostics
		syntaxError = "#8E262B",
		warningText = "#5D5623",
		cementBH = "#386066",
	}
end

return get_palette
