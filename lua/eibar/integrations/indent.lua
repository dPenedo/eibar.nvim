local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
		-- IndentBlankline
		IndentBlanklineChar = { fg = c.base03 },
		IndentBlanklineSpaceChar = { fg = c.base03 },
		IndentBlanklineSpaceCharBlankline = { fg = c.base03 },
		-- IndentBlanklineContextChar = { fg = theme.ui.special },
		-- IndentBlanklineContextStart = { sp = theme.ui.special, underline = true },
		IblIndent = { fg = c.base03 },
		IblWhitespace = { fg = c.base03 },
		-- IblScope = { fg = theme.ui.special },
  }
end

return M
