local M = {}

local palettes = {
	dark = require("eibar.palettes.dark"),
	light = require("eibar.palettes.light"),
}

function M.setup()
	local background = vim.o.background
	local palette_fn = palettes[background] or palettes.dark
	return palette_fn()
end

return M
