local M = {}
local config = require("eibar.config")

function M.get(c, opts)
	local bg = config.transparent and "NONE" or c.sidebarBg
	return {
		background = { bg = bg },
		buffer_visible = { fg = c.lineNumberText, bg = bg },
		buffer_selected = {
			fg = c.mainText,
			bg = c.editorBg,
		},
		duplicate = {
			fg = c.mainText,
			bg = bg,
			italic = config.italics.bufferline or false,
		},
		duplicate_visible = {
			fg = c.mainText,
			bg = bg,
			italic = config.italics.bufferline or false,
		},
		duplicate_selected = {
			fg = c.mainText,
			bg = c.editorBg,
			italic = config.italics.bufferline or false,
		},

		tab = { fg = c.mainText, bg = bg },
		tab_selected = {
			fg = c.mainText,
			bg = c.editorBg,
		},
		tab_close = { fg = c.syntaxError, bg = bg },
		indicator_selected = {
			fg = c.syntaxFunction,
			bg = c.editorBg,
			bold = true,
		},

		separator = { fg = c.editorBg, bg = bg },
		separator_selected = {
			fg = c.editorBg,
			bg = c.editorBg,
		},
		separator_visible = { fg = c.editorBg, bg = bg },
		offset_separator = { fg = c.editorBg, bg = bg },
		tab_separator = { fg = c.editorBg, bg = bg },
		tab_separator_selected = {
			fg = c.editorBg,
			bg = c.editorBg,
		},

		close_button = { fg = c.lineNumberText, bg = bg },
		close_button_visible = { fg = c.syntaxError, bg = bg },
		close_button_selected = {
			fg = c.syntaxError,
			bg = c.editorBg,
		},

		fill = { bg = bg },

		numbers = { fg = c.lineNumberText, bg = bg },
		numbers_visible = { fg = c.lineNumberText, bg = bg },
		numbers_selected = {
			fg = c.mainText,
			bg = c.editorBg,
			italic = config.italics.bufferline or false,
		},

		error = { fg = c.syntaxError, bg = bg },
		error_visible = { fg = c.syntaxError, bg = bg },
		error_selected = {
			fg = c.syntaxError,
			bg = c.editorBg,
			italic = config.italics.bufferline or false,
		},
		error_diagnostic = { fg = c.syntaxError, bg = bg },
		error_diagnostic_visible = { fg = c.syntaxError, bg = bg },
		error_diagnostic_selected = {
			fg = c.syntaxError,
			bg = c.editorBg,
		},

		warning = { fg = c.warningText, bg = bg },
		warning_visible = { fg = c.warningText, bg = bg },
		warning_selected = {
			fg = c.warningText,
			bg = c.editorBg,
			italic = config.italics.bufferline or false,
		},
		warning_diagnostic = { fg = c.warningText, bg = bg },
		warning_diagnostic_visible = { fg = c.warningText, bg = bg },
		warning_diagnostic_selected = {
			fg = c.warningText,
			bg = c.editorBg,
		},

		info = { fg = c.syntaxFunction, bg = bg },
		info_visible = { fg = c.syntaxFunction, bg = bg },
		info_selected = {
			fg = c.syntaxFunction,
			bg = c.editorBg,
			italic = config.italics.bufferline or false,
		},
		info_diagnostic = { fg = c.syntaxFunction, bg = bg },
		info_diagnostic_visible = { fg = c.syntaxFunction, bg = bg },
		info_diagnostic_selected = {
			fg = c.syntaxFunction,
			bg = c.editorBg,
		},

		hint = { fg = c.astelehena, bg = bg },
		hint_visible = { fg = c.astelehena, bg = bg },
		hint_selected = {
			fg = c.astelehena,
			bg = c.editorBg,
			italic = config.italics.bufferline or false,
		},
		hint_diagnostic = { fg = c.astelehena, bg = bg },
		hint_diagnostic_visible = { fg = c.astelehena, bg = bg },
		hint_diagnostic_selected = {
			fg = c.astelehena,
			bg = c.editorBg,
		},

		diagnostic = { fg = c.lineNumberText, bg = bg },
		diagnostic_visible = { fg = c.lineNumberText, bg = bg },
		diagnostic_selected = {
			fg = c.lineNumberText,
			bg = c.editorBg,
			italic = config.italics.bufferline or false,
		},

		modified = { fg = c.warningText, bg = bg },
		modified_selected = {
			fg = c.warningText,
			bg = c.editorBg,
		},
	}
end

return M
