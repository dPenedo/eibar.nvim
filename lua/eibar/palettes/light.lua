local config = require("eibar.config")

return {
	-- Fondos muy claros con tonos grises
	base00 = "#eeeeee", -- Fondo más blanco (antes #161616)
	base01 = config.transparent and "none" or "#ededed", -- Gris muy claro (antes #222222)
	base02 = "#EAEAEA", -- Gris claro (antes #282828)
	base03 = "#DDDDDD", -- Gris medio claro (antes #343434)
	base04 = "#D0D0D0", -- Gris medio (antes #404040)
	base05 = "#999999", -- Gris más oscuro para texto secundario (antes #555555)

	-- Bordes
	focusedBorder = "#C8CCD7", -- Más claro que el original #2E323D
	windowBorder = "#B8BCC8", -- Más claro que el original #373B48

	-- Textos y elementos principales (oscuros para contraste)
	mainText = "#2A2A2A", -- Texto principal oscuro (antes #E2E0DB)
	sanBlas = "#3A3A3A", -- Más oscuro que el original #F0E7D5
	lineNumberText = "#717686", -- Similar luminosidad pero invertido
	lainoak = "#4A5E8D", -- Azul más oscuro (antes #B5C1E3)
	commentText = "#726868", -- Gris cálido oscuro (antes #9D9390)

	-- Colores de sintaxis (versiones más oscuras)
	syntaxError = "#8F1C22", -- Rojo intenso (antes #B0282E)
	arrate = "#3A6D3A", -- Verde bosque (antes #558757)
	astelehena = "#1A7A50", -- Verde esmeralda oscuro (antes #2A8E64)
	damasquinado = "#A58828", -- Amarillo mostaza (antes #C9A83B)
	warningText = "#8F7A40", -- Amarillo tierra (antes #B39F61)
	egoIbaia = "#3A72A2", -- Azul petróleo (antes #5692C2)
	syntaxFunction = "#3A4F9D", -- Azul real (antes #5B6FB8)
	morea = "#5A4D8A", -- Púrpura intenso (antes #7B6DA5)
	keyword = "#7A4562", -- Borgoña (antes #A56382)
	torreIpurua = "#A57347", -- Naranja terracota (antes #CD9367)
	sanAndres = "#9A854C", -- Beige oscuro intenso (antes #BEAA76)

	-- Acentos
	untzaga = "#8F4A2A",

	-- Buscar
	cementBH = "#7A7263", -- Verde militar oscuro (antes #A59E8F)

	-- Elementos de UI
	menuOptionBg = "#2A3B88", -- Azul marino intenso (antes #3A4B98)
}
