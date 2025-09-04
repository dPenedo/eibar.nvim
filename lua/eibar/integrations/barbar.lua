local M = {}

function M.get(c, opts)
	return {
		-- Buffer current (activo)
		BufferCurrent = { bg = c.focusedBorder, fg = c.sanBlas },
		BufferCurrentIndex = { bg = c.focusedBorder, fg = c.lainoak },
		BufferCurrentMod = { bg = c.focusedBorder, fg = c.torreIpurua, bold = true },
		BufferCurrentSign = { bg = c.focusedBorder, fg = c.lainoak },
		BufferCurrentTarget = { bg = c.focusedBorder, fg = c.syntaxError },
		-- Buffer visible (otros buffers visibles)
		BufferVisible = { bg = c.base03, fg = c.sanBlas },
		BufferVisibleIndex = { bg = c.base03, fg = c.egoIbaia },
		BufferVisibleMod = { bg = c.base03, fg = c.warningText },
		BufferVisibleSign = { bg = c.base03, fg = c.commentText },
		BufferVisibleTarget = { bg = c.base03, fg = c.syntaxError },

		-- Buffer inactive (buffers ocultos)
		BufferInactive = { bg = c.base03, fg = c.cementBH },
		BufferInactiveIndex = { bg = c.base03, fg = c.cementBH },
		BufferInactiveMod = { bg = c.base03, fg = c.warningText },
		BufferInactiveSign = { bg = c.base03, fg = c.base03 },
		BufferInactiveTarget = { bg = c.base03, fg = c.syntaxError },
	}
end

return M
