local M = {}

function M.get(c, opts)
  -- stylua: ignore
	return {
		RenderMarkdownH1Bg = {
			bg = c.floatingBg,
			fg = c.untzaga,
		},
		RenderMarkdownH2Bg = {
			bg = c.popupBg,
			fg = c.torreIpurua,
		},
		RenderMarkdownH3Bg = {
			bg = c.popupBg,
		},
		RenderMarkdownH4Bg = {
			bg = c.popupBg,
		},
		RenderMarkdownH5Bg = {
			bg = c.popupBg,
		},
	}
end

return M
