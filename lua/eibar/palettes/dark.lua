local config = require("eibar.config")

return {

	editorBg = config.transparent and "none" or "#181A1B",
	sidebarBg = "#1F2122",
	popupBg = "#242628",
	floatingBg = "#27292B",
	menuOptionBg = "#3A3A88",
	mainText = "#E2E0DB",
	sanBlas = "#F5EFE4",
	emphasisText = "#fafafa",
	commandText = "#e0e0e0",

	inactiveText = "#5E6263", -- Antes #6A6A6A (más cohesión)
	disabledText = "#7E8283", -- Antes #949494
	lineNumberText = "#6C7071", -- Antes #808080
	selectedText = "#D4D8D9", -- Antes #eaeaea (toque azulado)
	inactiveSelectionText = "#E2E6E7", -- Antes #f5f5f5
	windowBorder = "#232527", -- Antes #2a2a2a
	focusedBorder = "#3C4042", -- Antes #444444
	emphasizedBorder = "#2D3133", -- Antes #363636
	syntaxError = "#E01B40",
	torreIpurua = "#EDB397",
	keyword = "#C983A2",
	damasquinado = "#D9B84F",
	sanAndres = "#DECAA6",
	untzaga = "#E5A399",
	cementBH = "#BDC0AD",
	syntaxFunction = "#A5D0F0",
	warningText = "#EEB753",
	syntaxKeyword = "#B0B0E6",
	lainoak = "#A5C0E0", -- Unificado con linkText
	etxea = "#8FAECF",
	-- stringText = "#A9C884",
	stringText = "#8FBC8F",
	warningEmphasis = "#cd9731",
	successText = "#5AB894",
	errorText = "#cd3131",
	specialKeyword = "#9D839E",
	syntaxOperator = "#bbbbbb",
	foregroundEmphasis = "#ffffff",
	commentText = "#8A8E8F", -- Antes #A9A293 (gris frío)
	terminalGray = "#8A8E8F", -- Unificado con comentarios
}
