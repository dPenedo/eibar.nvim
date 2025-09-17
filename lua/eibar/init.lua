local config = require("eibar.config")
local groups_module = require("eibar.base_groups")
local colors_module = require("eibar.theme")
local utils = require("eibar.utils")
local terminal = require("eibar.integrations.terminal")
local integrations = require("eibar.integrations")

local M = {}

function M.setup(values)
	values = values or {}
	local merged_config = vim.tbl_extend("force", config.defaults, values)
	for k, v in pairs(merged_config) do
		config[k] = v
	end
end

function M.colorscheme()
	if vim.version().minor < 8 then
		vim.notify("Neovim 0.8+ is required for eibar colorscheme", vim.log.levels.ERROR, { title = "eibar" })
		return
	end

	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end

	vim.g.VM_theme_set_by_colorscheme = true
	vim.o.termguicolors = true
	vim.g.colors_name = "eibar"

	local colors = colors_module.setup()
	terminal.set(colors)

	local groups = groups_module.get_groups(colors, config, utils)

	local ok, plugin_highlights = pcall(integrations.highlights)
	if ok then
		groups = vim.tbl_extend("force", groups, plugin_highlights)
	else
		vim.notify("Error loading plugin highlights: " .. plugin_highlights, vim.log.levels.ERROR)
	end

	local user_overrides = type(config.overrides) == "function" and config.overrides() or config.overrides or {}
	groups = vim.tbl_extend("force", groups, user_overrides)

	for group, opts in pairs(groups) do
		if group == "Normal" and config.transparent then
			opts.bg = "none"
		end
		vim.api.nvim_set_hl(0, group, opts)
	end
end

-- WARN: not working
local function set_background(style)
	local valid = { normal = true, contrast = true, cyan = true }
	if not valid[style] then
		vim.notify("Eibar: background inválido (" .. style .. ")", vim.log.levels.ERROR)
		return
	end

	config.background_style = style
	vim.cmd("colorscheme eibar")
	vim.notify("Eibar background set to " .. style, vim.log.levels.INFO)
end

vim.api.nvim_create_user_command("EibarBackground", function(opts)
	set_background(opts.args)
end, {
	nargs = 1,
	complete = function()
		return { "normal", "contrast", "cyan" }
	end,
})

return M
