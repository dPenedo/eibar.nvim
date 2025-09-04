local M = {
	plugins = {
		["nvim-cmp"] = require("eibar.integrations.cmp"),
		-- ["bufferline"] = require("eibar.integrations.bufferline"),
		["snacks"] = require("eibar.integrations.snacks"),
		["indent-blankline"] = require("eibar.integrations.indent"),
		["treesitter"] = require("eibar.integrations.treesitter"),
		["markdown"] = require("eibar.integrations.markdown"),
		["barbar"] = require("eibar.integrations.barbar"),
		["flash"] = require("eibar.integrations.flash"),
		["mini-files"] = require("eibar.integrations.mini-files"),
	},
}

local utils = require("eibar.utils")

function M.highlights()
	local colors = require("eibar.theme").setup()
	local config = require("eibar.config")
	local all_highlights = {}

	for name, plugin in pairs(M.plugins) do
		if plugin then
			if plugin.get then -- Plugins con función estándar get(c, config, utils)
				all_highlights = vim.tbl_extend("force", all_highlights, plugin.get(colors, config, utils))
			elseif plugin.highlights then -- Plugins legacy
				all_highlights = vim.tbl_extend("force", all_highlights, plugin.highlights(config))
			end
		else
			vim.notify("Plugin " .. name .. " failed to load", vim.log.levels.WARN)
		end
	end

	return all_highlights
end

return M
