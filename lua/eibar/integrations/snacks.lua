local M = {}

function M.get(c, opts)
  -- stylua: ignore
	return {
		SnacksIndent = {
			fg = c.focusedBorder,
		},
		SnacksIndentScope = {
			fg = c.lainoak,
		},
	}
end

return M
