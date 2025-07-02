local M = {}

function M.get(c, opts)
  -- stylua: ignore
	return {
		RenderMarkdownH1Bg = {
			bg = c.floatingBg,
			fg = c.untzaga,
		},
		RenderMarkdownH2Bg = {
			bg = c.floatingBg,
			fg = c.torreIpurua,
		},
		RenderMarkdownH3Bg = {
			bg = c.floatingBg,
		},
		RenderMarkdownH4Bg = {
			bg = c.floatingBg,
		},
		RenderMarkdownH5Bg = {
			bg = c.floatingBg,
		},
	}
end

return M
