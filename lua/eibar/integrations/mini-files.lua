local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniFilesNormal  = { fg = c.sanBlas, bg = c.base03 },
    MiniFilesBorder  = { fg = c.windowBorder, bg = c.base03 },
    MiniFilesTitle   = { fg = c.syntaxFunction, bg = c.base03, bold = true },
    MiniFilesCursorLine = { bg = c.base04 },
    MiniFilesDirectory  = { fg = c.syntaxFunction, bold = true },
    MiniFilesFile    = { fg = c.sanBlas },

    -- mini.icons
    MiniIconsAzure  = { fg = c.syntaxFunction },
    MiniIconsBlue   = { fg = c.egoIbaia },
    MiniIconsCyan   = { fg = c.cementBH },
    MiniIconsGreen  = { fg = c.arrate },
    MiniIconsGrey   = { fg = c.lineNumberText },
    MiniIconsOrange = { fg = c.untzaga },
    MiniIconsPurple = { fg = c.morea },
    MiniIconsRed    = { fg = c.syntaxError },
    MiniIconsYellow = { fg = c.damasquinado },
  }
end

return M
