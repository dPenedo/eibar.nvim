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
    SnacksDashboardIcon       = { fg = c.syntaxFunction },
    SnacksDashboardDesc       = { fg = c.untzaga },
    SnacksDashboardFooter     = { fg = c.sanAndres },
    SnacksDashboardHeader     = { fg = c.arrate },
    SnacksDashboardKey        = { fg = c.syntaxFunction },
    SnacksDashboardSpecial    = { fg = c.sanBlas },
    SnacksDashboardDir        = { fg = c.keyword },


    SnacksPicker    = { bg = c.base03},
    SnacksPickerMatch    = { fg = c.untzaga},
	}
end

return M
