local M = {}

function M.set(colors)
	vim.g.terminal_color_0 = colors.editorBg
	vim.g.terminal_color_1 = colors.syntaxError
	vim.g.terminal_color_2 = colors.successText
	vim.g.terminal_color_3 = colors.untzaga
	vim.g.terminal_color_4 = colors.syntaxFunction
	vim.g.terminal_color_5 = colors.syntaxKeyword
	vim.g.terminal_color_6 = colors.lainoak
	vim.g.terminal_color_7 = colors.mainText
	vim.g.terminal_color_8 = colors.inactiveText
	vim.g.terminal_color_9 = colors.errorText
	vim.g.terminal_color_10 = colors.stringText
	vim.g.terminal_color_11 = colors.warningText
	vim.g.terminal_color_12 = colors.syntaxOperator
	vim.g.terminal_color_13 = colors.syntaxError
	vim.g.terminal_color_14 = colors.stringText
	vim.g.terminal_color_15 = colors.commentText
	vim.g.terminal_color_background = colors.editorBg
	vim.g.terminal_color_foreground = colors.mainText
end

return M
