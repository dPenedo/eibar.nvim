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

	inactiveText = "#5A5E6D",
	lineNumberText = "#686D7E",
	disabledText = "#75798A",
	selectedText = "#C8CCE0",
	windowBorder = "#43485B", -- Antes #232527 (más oscuro y azulado)
	focusedBorder = "#373B4A", -- Antes #3C4042 (saturado)
	emphasizedBorder = "#292C38", -- Antes #2D3133 (azul profundo)
	commentText = "#8F817A", -- Antes #8A8E8F (gris frío con matiz)

	syntaxError = "#D1484E",
	stringText = "#99BD6B",
	successText = "#5AB894", -- astelehena
	damasquinado = "#D9B84F",
	warningText = "#D8BC64",
	lainoak = "#B5C1E3", -- Unificado con linkText
	etxea = "#669CB7", -- sin uso
	egoIbaia = "#96C2E2",
	syntaxFunction = "#9BAFE8", -- Coliseo
	morea = "#A99BC5",
	keyword = "#C983A2",
	torreIpurua = "#EDB397",
	sanAndres = "#DECAA6",
	untzaga = "#D98363",
	cementBH = "#BDC0AD",
	syntaxOperator = "#bbbbbb", -- sustituir por cementBH?
}
