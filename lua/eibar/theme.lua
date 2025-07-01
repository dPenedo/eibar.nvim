local M = {}

local palettes = {
	dark = require("eibar.palettes.dark"),
	light = require("eibar.palettes.light"),
}

function M.setup()
	local background = vim.o.background
	return palettes[background] or palettes.dark
end

return M
