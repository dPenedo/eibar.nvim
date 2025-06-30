local config = require("eibar.config")

return {

	-- Backgrounds
	editorBg = config.transparent and "none" or "#11141D", -- Más azulado (antes #11191D)
	sidebarBg = "#1D1F26", -- Gris oscuro con matiz azul (antes #1F2122)
	popupBg = "#22242D", -- Gris medio-oscuro azulado (antes #242628)
	floatingBg = "#21232C", -- Gris con tono frío (antes #27292B)

	-- Accent background (menuOptionBg ya tiene el tono deseado)
	menuOptionBg = "#4A5AA8", -- Se mantiene igual (azul saturado)

	-- Whites (se mantienen igual, son neutros)
	mainText = "#E2E0DB",
	sanBlas = "#F0E7E5",
	emphasisText = "#fafafa",
	commandText = "#e0e0e0",

	-- Greys ajustados al hue de #2A3E7B (azul-violáceo)
	inactiveText = "#5A5E6D", -- Antes #5E6263 (más saturado)
	disabledText = "#75798A", -- Antes #7E8283 (tonalidad fría)
	lineNumberText = "#686D7E", -- Antes #6C7071 (azul grisáceo)
	selectedText = "#C8CCE0", -- Antes #D4D8D9 (toque azul claro)
	inactiveSelectionText = "#D8DCEB", -- Antes #E2E6E7 (azul muy claro)
	windowBorder = "#43485B", -- Antes #232527 (más oscuro y azulado)
	focusedBorder = "#373B4A", -- Antes #3C4042 (saturado)
	emphasizedBorder = "#292C38", -- Antes #2D3133 (azul profundo)
	commentText = "#8F817A", -- Antes #8A8E8F (gris frío con matiz)
	terminalGray = "#7A7E8F", -- Unificado con comentarios (antes #8A8E8F)

	-- Reds
	--Reds Errors, warnings
	syntaxError = "#D1484E",
	errorText = "#cd3131",

	--Green	Success, strings
	stringText = "#99BD6B",
	successText = "#5AB894", -- astelehena
	--Yellow	Warnings, keywords
	damasquinado = "#D9B84F",
	warningEmphasis = "#cd9731",
	warningText = "#D8BC64",
	--Blue	Functions, links
	-- TODO: unificar azules en 2
	lainoak = "#B5C1E3", -- Unificado con linkText
	-- etxea = "#8FAECF",
	etxea = "#669CB7",
	egoIbaia = "#96C2E2",
	syntaxFunction = "#A5D0F0",

	syntaxKeyword = "#9E93B4",
	--Magenta	Special keywords, constants
	keyword = "#C983A2",
	specialKeyword = "#9E93B4",
	--Cyan	Comments, docs

	torreIpurua = "#EDB397",
	sanAndres = "#DECAA6",
	-- untzaga = "#E5A399",
	untzaga = "#D57653",
	cementBH = "#BDC0AD",
	syntaxOperator = "#bbbbbb",
}
