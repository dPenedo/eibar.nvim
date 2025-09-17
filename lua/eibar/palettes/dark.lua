local config = require("eibar.config")

local backgrounds = {
	normal = {
		base00 = "#101010",
		base01 = "#222222",
		base02 = "#2b2b2b",
		base03 = "#303030",
		base04 = "#393939",
		base05 = "#3d3d3d",
	},
	contrast = {
		base00 = "#0d0d0d",
		base01 = "#151515",
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
		base03 = "#0F252B", -- igual que base02
		base04 = "#152B36", -- entre #252B2D y #053343
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
}

local bgs = backgrounds[config.background_style] or backgrounds.normal

return {
	base00 = bgs.base00,
	base01 = bgs.base01,
	base02 = bgs.base02,
	base03 = bgs.base03,
	base04 = bgs.base04,
	base05 = bgs.base05,
	focusedBorder = "#2E323D",
	windowBorder = "#464E77",
	menuOptionBg = "#4A5AA8",
	mainText = "#ECEAE4",
	sanBlas = "#F0E7D5",
	lineNumberText = "#6A6F80",
	lainoak = "#B5C1E3",
	commentText = "#83796C",
	syntaxError = "#D1484E",
	arrate = "#95B987",
	astelehena = "#4AAE84",
	damasquinado = "#E9C86B",
	warningText = "#E3CF91",
	egoIbaia = "#71A2C6",
	syntaxFunction = "#9BAFE8",
	morea = "#B8A7DD",
	keyword = "#D788AB",
	torreIpurua = "#EDB397",
	sanAndres = "#DFBC90",
	untzaga = "#D98363",
	cementBH = "#85A7AD",
}
