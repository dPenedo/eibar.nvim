local colors = require("eibar.theme").setup()
local config = require("eibar.config")
local theme = {}

local bg = config.transparent and "NONE" or colors.base02

theme.normal = {
	a = { bg = colors.syntaxFunction, fg = colors.base01, gui = "bold" },
	b = { bg = colors.windowBorder, fg = colors.commentText },
	c = { bg = bg, fg = colors.commentText },
	x = { bg = colors.focusedBorder, fg = colors.syntaxFunction },
}

theme.insert = {
	a = {
		bg = colors.arrate,
		fg = colors.base01,
		gui = "bold",
	},
	b = { bg = bg, fg = colors.commentText },
}

theme.terminal = {
	a = {
		bg = colors.astelehena,
		fg = colors.base01,
		gui = "bold",
	},
	b = { bg = bg, fg = colors.commentText },
}

theme.command = {
	a = {
		bg = colors.astelehena,
		fg = colors.base01,
		gui = "bold",
	},
	b = { bg = bg, fg = colors.commentText },
}

theme.visual = {
	a = {
		bg = colors.keyword,
		fg = colors.base01,
		gui = "bold",
	},
	b = { bg = bg, fg = colors.commentText },
}

theme.replace = {
	a = {
		bg = colors.warningText,
		fg = colors.base01,
		gui = "bold",
	},
	b = { bg = bg, fg = colors.commentText },
}

theme.inactive = {
	a = { bg = colors.commentText, fg = colors.base01 },
	b = { bg = bg, fg = colors.warningText, gui = "bold" },
	c = { bg = bg, fg = colors.warningText },
}

return theme
