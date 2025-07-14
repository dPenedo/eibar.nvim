local M = {}

function M.get(c, opts)
  -- stylua: ignore
	return {
		RenderMarkdownH1Bg = {
			bg = c.base03,
			fg = c.untzaga,
		},
		RenderMarkdownH2Bg = {
			bg = c.base03,
			fg = c.torreIpurua,
		},
		RenderMarkdownH3Bg = {
			bg = c.base03,
		},
		RenderMarkdownH4Bg = {
			bg = c.base03,
		},
		RenderMarkdownH5Bg = {
			bg = c.base03,
		},
	}
end

return M
