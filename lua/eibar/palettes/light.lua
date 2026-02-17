local function get_palette()
	local config = require("eibar.config")
	return {
	-- Fondos muy claros con tonos grises
	base00 = "#eeeeee", -- Fondo más blanco
	base01 = config.transparent and "none" or "#ededed", -- Gris muy claro
	base02 = "#EAEAEA", -- Gris claro
	base03 = "#DDDDDD", -- Gris medio claro
	base04 = "#D0D0D0", -- Gris medio
	base05 = "#999999", -- Gris más oscuro para texto secundario
	-- Bordes
	focusedBorder = "#C8CCD7",
	windowBorder = "#B8BCC8",

	-- Textos y elementos principales (más oscuros para mayor contraste)
	mainText = "#1a1a1a", -- Texto principal muy oscuro (antes #2A2A2A)
	sanBlas = "#2a2a2a", -- Muy oscuro (antes #3A3A3A)
	lineNumberText = "#B8BCC8",
	lainoak = "#2d4470", -- Azul más intenso (antes #4A5E8D)
	commentText = "#a8a0a0", -- Gris cálido MUY claro para comentarios (antes #726868)
	-- Colores de sintaxis (más saturados y oscuros)
	syntaxError = "#c71f28", -- Rojo muy intenso (antes #8F1C22)
	arrate = "#2d5a2d", -- Verde bosque intenso (antes #3A6D3A)
	astelehena = "#0d6642", -- Verde esmeralda muy oscuro (antes #1A7A50)
	damasquinado = "#967718", -- Amarillo mostaza intenso (antes #A58828)
	warningText = "#7d6830", -- Amarillo tierra intenso (antes #8F7A40)
	egoIbaia = "#236196", -- Azul petróleo intenso (antes #3A72A2)
	syntaxFunction = "#2a3d8a", -- Azul real intenso (antes #3A4F9D)
	morea = "#4a3877", -- Púrpura muy intenso (antes #5A4D8A)
	keyword = "#66334d", -- Borgoña intenso (antes #7A4562)
	torreIpurua = "#8f5d35", -- Naranja terracota intenso (antes #A57347)
	sanAndres = "#7a6135", -- Beige oscuro muy intenso (antes #9A854C)
	keywordSpecial = "#a33d27", -- Notablemente más rojizo
	-- Acentos
	untzaga = "#b55936", -- Más oscuro e intenso
	-- Buscar
	cementBH = "#685f50", -- Verde militar más oscuro (antes #7A7263)
	-- Elementos de UI
	menuOptionBg = "#1a2b75", -- Azul marino muy intenso (antes #2A3B88)
}
end

return get_palette
