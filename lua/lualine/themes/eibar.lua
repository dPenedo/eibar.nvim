local c = require("eibar.theme").setup()
local config = require("eibar.config")
local theme = {}

local bg = config.transparent and "NONE" or c.base02

theme.normal = {
	a = { bg = c.syntaxFunction, fg = c.base01, gui = "bold" },
	b = { bg = c.focusedBorder, fg = c.lainoak },
	c = { bg = bg, fg = c.sanBlas },
	x = { bg = c.focusedBorder, fg = c.syntaxFunction },
}

theme.insert = {
	a = {
		bg = c.arrate,
		fg = c.base01,
		gui = "bold",
	},
	b = { bg = c.focusedBorder, fg = c.torreIpurua },
}

theme.terminal = {
	a = {

		bg = c.astelehena,
		fg = c.base01,
		gui = "bold",
	},
	b = { bg = bg, fg = c.commentText },
}

theme.command = {
	a = {
		bg = c.astelehena,
		fg = c.base01,
		gui = "bold",
	},
	b = { bg = bg, fg = c.commentText },
}

theme.visual = {
	a = {
		bg = c.keyword,
		fg = c.base01,
		gui = "bold",
	},
	b = { bg = bg, fg = c.commentText },
}

theme.replace = {
	a = {
		bg = c.warningText,
		fg = c.base01,
		gui = "bold",
	},
	b = { bg = bg, fg = c.commentText },
}

theme.inactive = {
	a = { bg = c.commentText, fg = c.base01 },
	b = { bg = bg, fg = c.lineNumberText, gui = "bold" },
	c = { bg = bg, fg = c.lineNumberText },
}

return theme
