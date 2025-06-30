local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
		-- IndentBlankline
		IndentBlanklineChar = { fg = c.floatingBg },
		IndentBlanklineSpaceChar = { fg = c.floatingBg },
		IndentBlanklineSpaceCharBlankline = { fg = c.floatingBg },
		-- IndentBlanklineContextChar = { fg = theme.ui.special },
		-- IndentBlanklineContextStart = { sp = theme.ui.special, underline = true },
		IblIndent = { fg = c.floatingBg },
		IblWhitespace = { fg = c.floatingBg },
		-- IblScope = { fg = theme.ui.special },
  }
end

return M
