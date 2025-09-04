local M = {}

function M.set(colors)
	vim.g.terminal_color_0 = colors.base01
	vim.g.terminal_color_1 = colors.syntaxError
	vim.g.terminal_color_2 = colors.arrate
	vim.g.terminal_color_3 = colors.keyword
	vim.g.terminal_color_4 = colors.syntaxFunction
	vim.g.terminal_color_5 = colors.morea
	vim.g.terminal_color_6 = colors.lainoak
	vim.g.terminal_color_7 = colors.mainText
	vim.g.terminal_color_8 = colors.lineNumberText
	vim.g.terminal_color_9 = colors.untzaga
	vim.g.terminal_color_10 = colors.arrate
	vim.g.terminal_color_11 = colors.warningText
	vim.g.terminal_color_12 = colors.cementBH
	vim.g.terminal_color_13 = colors.syntaxError
	vim.g.terminal_color_14 = colors.astelehena
	vim.g.terminal_color_15 = colors.commentText
	vim.g.terminal_color_background = colors.base01
	vim.g.terminal_color_foreground = colors.mainText
end

return M
