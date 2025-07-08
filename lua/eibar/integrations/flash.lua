local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
		-- Flash
		FlashBackdrop = {
			fg = c.commentText,
		},
		FlashLabel = {
			fg = c.editorBg,
			bg = c.untzaga,
			bold = true,
		},
		--Snacks
		SnacksPickerSelected = {
			bg = c.untzaga,
		},

  }
end

return M
