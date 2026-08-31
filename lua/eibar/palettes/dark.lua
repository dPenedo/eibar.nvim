local backgrounds = {
	normal = {
		base00 = "#101010",
		base01 = "#222222",
		base02 = "#2b2b2b",
		base03 = "#303030",
		base04 = "#393939",
		base05 = "#3d3d3d",
	},
	clean = {
		base00 = "#222222",
		base01 = "#222222",
		base02 = "#222222",
		base03 = "#303030",
		base04 = "#393939",
		base05 = "#505050",
	},
	eibar = {
		-- hue 162
		base00 = "#1a1f1e",
		base01 = "#1e2422",
		base02 = "#252d2b",
		base03 = "#303a37",
		base04 = "#364242",
		base05 = "#3C4848",
	},
	gruv = {
		base00 = "#282828",
		base01 = "#32302f",
		base02 = "#32302f",
		base03 = "#45403d",
		base04 = "#45403d",
		base05 = "#5a524c",
	},
	contrast = {
		base00 = "#0d0d0d",
		base01 = "#101010",
		base02 = "#1c1c1c",
		base03 = "#2d2d2d",
		base04 = "#3d3d3d",
		base05 = "#4e4e4e",
	},
	cyan = {
		base00 = "#1a2426",
		base01 = "#1f2c2e",
		base02 = "#2a383b",
		base03 = "#364548",
		base04 = "#08414F",
		base05 = "#455A61",
	},
	nord = {
		base00 = "#202635",
		base01 = "#2E3440",
		base02 = "#393F4F",
		base03 = "#40495B",
		base04 = "#495366",
		base05 = "#495366",
	},

	solarized_dark = {
		base00 = "#001E27",
		base01 = "#002b36",
		base02 = "#06343F",
		base03 = "#06343F",
		base04 = "#08414F",
		base05 = "#455A61",
	},
	solar_des = {
		base00 = "#08111F", -- entre #101618 y #001E27
		base01 = "#0B1A26", -- entre #161D20 y #00232C
		base02 = "#0F252B", -- entre #1A2224 y #042D33
		base03 = "#10272D",
		base04 = "#063A4C", -- entre #252B2D y #053343
		base05 = "#424C52", -- entre #454E53 y #3B4750
	},
	slate = {
		base00 = "#0f1014",
		base01 = "#17181f",
		base02 = "#1f2030",
		base03 = "#272742",
		base04 = "#2f304d",
		base05 = "#373858",
	},
	kanagawa = {
		base00 = "#1a1a22",
		base01 = "#1F1F28",
		base02 = "#2A2A37",
		base03 = "#363646",
		base04 = "#3e3a48",
		base05 = "#474255", -- borde o separador, aún oscuro
	},
	mocha = {
		base00 = "#181825",
		base01 = "#1e1e2e",
		base02 = "#1E1E2F",
		base03 = "#2A2B3D",
		base04 = "#313245",
		base05 = "#313245",
	},
	everforest = {
		base00 = "#1E2326",
		base01 = "#272E33",
		base02 = "#2E383C",
		base03 = "#374145",
		base04 = "#414B50",
		base05 = "#495156",
	},
	eyecare = {
		base00 = "#1C1916", -- warm dark brown, minimal blue light
		base01 = "#23201B", -- slightly lighter, keeps warmth
		base02 = "#2A2621", -- subtle separation, no harsh edges
		base03 = "#322D27", -- gentle step up
		base04 = "#3B352E", -- borders and UI elements
		base05 = "#4A4239", -- muted warm gray
	},
}

local function get_palette()
	local config = require("eibar.config")
	local bgs = backgrounds[config.background_style] or backgrounds.normal

	return {
		base00 = bgs.base00,
		base01 = bgs.base01,
		base02 = bgs.base02,
		base03 = bgs.base03,
		base04 = bgs.base04,
		base05 = bgs.base05,
		-- UI
		focusedBorder = "#252E3A",
		windowBorder = "#35626a",

		-- Text
		-- mainText = "#ECEAE4",
		mainText = "#C8C6C0",
		-- sanBlas = "#dadbd5",
		sanBlas = "#d7d2be",
		lineNumberText = "#3C4848", -- Take it from base05?
		-- commentText = "#83796C", -- RENOM
		commentText = "#6e655a", -- RENOM

		syntaxFunction = "#7e9cd8",
		morea = "#BBA3EF", -- demasiado brilloso
		-- lainoak = "#7f8aad",
		lainoak = "#a8b0c2",

		-- #a8b0c2  — un escalón arriba, sigue siendo discreto
		-- #aeb8ca  — más nube, más visible
		-- #b0b8c8  — bastante más claro
		egoIbaia = "#71abc0",
		-- morea = "#607853",

		keyword = "#A68CAA", -- RENOM
		arrate = "#95B987",
		damasquinado = "#c1a559",
		sanAndres = "#c8b485",
		cementBH = "#85A7AD",
		keywordSpecial = "#B96552",
		astelehena = "#3F9272",
		torreIpurua = "#C4917C",
		untzaga = "#B66F57",
		syntaxError = "#B84248",
		warningText = "#B9B174",
	}
end

return get_palette
