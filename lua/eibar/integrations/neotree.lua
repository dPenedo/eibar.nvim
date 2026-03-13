local M = {}

function M.get(c, opts)
  -- stylua: ignore
  return {
    NeoTreeNormal          = { fg = c.sanBlas, bg = c.base03 },
    NeoTreeNormalNC        = { fg = c.sanBlas, bg = c.base03 },
    NeoTreeSignColumn      = { bg = c.base03 },
    NeoTreeEndOfBuffer     = { fg = c.base03, bg = c.base03 },
    NeoTreeCursorLine      = { bg = c.base04 },
    NeoTreeDimText         = { fg = c.lineNumberText },
    NeoTreeMessage         = { fg = c.commentText, italic = true },
    NeoTreeIndentMarker    = { fg = c.windowBorder },
    NeoTreeExpander        = { fg = c.lineNumberText },

    NeoTreeWinSeparator    = { fg = c.base02, bg = c.base01 },
    NeoTreeFloatBorder     = { fg = c.windowBorder, bg = c.base01 },
    NeoTreeFloatTitle      = { fg = c.syntaxFunction, bg = c.base01, bold = true },
    NeoTreeTitleBar        = { fg = c.base00, bg = c.syntaxFunction, bold = true },

    NeoTreeRootName        = { fg = c.syntaxFunction, bg = c.base03, bold = true },
    NeoTreeDirectoryIcon   = { fg = c.syntaxFunction },
    NeoTreeDirectoryName   = { fg = c.syntaxFunction },
    NeoTreeFileName        = { fg = c.sanBlas },
    NeoTreeFileNameOpened  = { fg = c.lainoak, bold = true },
    NeoTreeSymbolicLinkTarget = { fg = c.cementBH },
    NeoTreeDotfile         = { fg = c.commentText },
    NeoTreeHiddenByName    = { fg = c.commentText },
    NeoTreeFilterTerm      = { fg = c.damasquinado, bold = true },
    NeoTreeModified        = { fg = c.warningText },

    NeoTreeGitAdded        = { fg = c.arrate },
    NeoTreeGitConflict     = { fg = c.syntaxError, bold = true },
    NeoTreeGitDeleted      = { fg = c.syntaxError },
    NeoTreeGitIgnored      = { fg = c.lineNumberText },
    NeoTreeGitModified     = { fg = c.damasquinado },
    NeoTreeGitUnstaged     = { fg = c.untzaga },
    NeoTreeGitUntracked    = { fg = c.astelehena },
    NeoTreeGitStaged       = { fg = c.arrate },

    NeoTreeTabActive           = { fg = c.sanBlas, bg = c.base03, bold = true },
    NeoTreeTabInactive         = { fg = c.commentText, bg = c.base01 },
    NeoTreeTabSeparatorActive  = { fg = c.base03, bg = c.base03 },
    NeoTreeTabSeparatorInactive = { fg = c.base01, bg = c.base01 },
  }
end

return M
