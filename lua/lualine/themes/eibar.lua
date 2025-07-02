local colors = require("eibar.theme").setup()
local config = require("eibar.config")
local theme = {}

local bg = config.transparent and "NONE" or colors.editorBg

theme.normal = {
	a = { bg = colors.blue, fg = colors.editorBg, gui = "bold" },
	b = { bg = bg, fg = colors.commentText },
	c = { bg = bg, fg = colors.editorBg },
}

theme.insert = {
	a = {
		bg = colors.syntaxError,
		fg = colors.editorBg,
		gui = "bold",
	},
	b = { bg = bg, fg = colors.commentText },
}

theme.terminal = {
	a = {
		bg = colors.successText,
		fg = colors.editorBg,
		gui = "bold",
	},
	b = { bg = bg, fg = colors.commentText },
}

theme.command = {
	a = {
		bg = colors.successText,
		fg = colors.editorBg,
		gui = "bold",
	},
	b = { bg = bg, fg = colors.commentText },
}

theme.visual = {
	a = {
		bg = colors.morea,
		fg = colors.editorBg,
		gui = "bold",
	},
	b = { bg = bg, fg = colors.commentText },
}

theme.replace = {
	a = {
		bg = colors.warningText,
		fg = colors.editorBg,
		gui = "bold",
	},
	b = { bg = bg, fg = colors.commentText },
}

theme.inactive = {
	a = { bg = colors.commentText, fg = colors.editorBg },
	b = { bg = bg, fg = colors.warningText, gui = "bold" },
	c = { bg = bg, fg = colors.warningText },
}

return theme
