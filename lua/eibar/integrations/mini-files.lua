local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
  MiniFilesBorder         = {fg = c.windowBorder},
  MiniFilesBorderModified = {fg = c.morea},
  --   MiniFilesCursorLine     = "CursorLine",
  --   MiniFilesDirectory      = "Directory",
  --   MiniFilesFile           = { fg = c.fg_float },
  --   MiniFilesNormal         = "NormalFloat",
  --   MiniFilesTitle          = "FloatTitle",
  --   MiniFilesTitleFocused   = { fg = c.border_highlight, bg = c.bg_float, bold = true },
  }
end

return M
