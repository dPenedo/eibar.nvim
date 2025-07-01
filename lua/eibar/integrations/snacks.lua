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

    SnacksPickerMatch    = { fg = c.untzaga},
	}
end

return M
