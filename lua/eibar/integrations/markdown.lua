local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    RenderMarkdownH1Bg = {
      bg = c.base02,
      -- fg = c.untzaga,
    },
    RenderMarkdownH2Bg = {
      bg = c.base02,
      -- fg = c.torreIpurua,
    },
    RenderMarkdownH2Fg = {
      fg = c.torreIpurua,
    },
    RenderMarkdownH3Bg = {
      bg = c.base02,
    },
    RenderMarkdownH4Bg = {
      bg = c.base02,
    },
    RenderMarkdownH5Bg = {
      bg = c.base02,
    },
    RenderMarkdownLink = {
      fg = c.lainoak,
      bold = true
    },
    RenderMarkdownWikiLink = {
      link = "@RenderMarkdownLink"
    }
  }
end

return M
