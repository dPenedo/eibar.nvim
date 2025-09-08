local config = require("eibar.config")

local backgrounds = {
	normal = {
		base00 = "#161616",
		base01 = config.transparent and "none" or "#222222",
		base02 = "#282828",
		base03 = "#343434",
		base04 = "#404040",
		base05 = "#555555",
	},
	contrast = {
		base00 = "#0f0f0f",
		base01 = config.transparent and "none" or "#181818",
		base02 = "#202020",
		base03 = "#2a2a2a",
		base04 = "#333333",
		base05 = "#444444",
	},
	cyan = {
		base00 = "#080f0f",
		base01 = config.transparent and "none" or "#0d1a1a",
		base02 = "#103636",
		base03 = "#144b4b",
		base04 = "#1a6060",
		base05 = "#1f7575",
	},
}

local bgs = backgrounds[config.background_style] or backgrounds.normal
print("backgrounds[config.background_style] => ", config.background_style)
return {
	base00 = bgs.base00,
	base01 = bgs.base01,
	base02 = bgs.base02,
	base03 = bgs.base03,
	base04 = bgs.base04,
	base05 = bgs.base05,
	focusedBorder = "#2E323D",
	windowBorder = "#464E77",
	menuOptionBg = "#4A5AA8", -- Beiztegi
	mainText = "#ECEAE4", -- Brighter than sanBlas?
	sanBlas = "#F0E7D5", -- Main fg
	lineNumberText = "#6A6F80",
	lainoak = "#B5C1E3",
	commentText = "#83796C", -- muted brown - gray
	syntaxError = "#D1484E",
	arrate = "#95B987", -- Strings
	astelehena = "#4AAE84", -- Not for code, for accept, correct and so on
	damasquinado = "#E9C86B",
	warningText = "#E3CF91",
	egoIbaia = "#96C2E2",
	syntaxFunction = "#9BAFE8",
	morea = "#B8A7DD",
	keyword = "#D788AB",
	torreIpurua = "#EDB397",
	sanAndres = "#DFBC90",
	-- Accents
	untzaga = "#D98363",
	cementBH = "#85A7AD",
}
