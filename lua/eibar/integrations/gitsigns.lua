local M = {}

function M.get(c, opts, utils)
	local add_ln_bg = utils.mix(c.arrate, c.base02, 0.12)
	local change_ln_bg = utils.mix(c.damasquinado, c.base02, 0.10)
	local untracked_ln_bg = utils.mix(c.astelehena, c.base02, 0.10)

  -- stylua: ignore
  return {
    -- Sign column
    GitSignsAdd          = { fg = c.arrate },
    GitSignsChange        = { fg = c.damasquinado },
    GitSignsDelete        = { fg = c.syntaxError },
    GitSignsChangedelete  = { fg = c.untzaga },
    GitSignsTopdelete     = { link = "GitSignsDelete" },
    GitSignsUntracked     = { fg = c.astelehena },

    -- Number column
    GitSignsAddNr         = { link = "GitSignsAdd" },
    GitSignsChangeNr      = { link = "GitSignsChange" },
    GitSignsDeleteNr      = { link = "GitSignsDelete" },
    GitSignsChangedeleteNr = { link = "GitSignsChangedelete" },
    GitSignsTopdeleteNr   = { link = "GitSignsDelete" },
    GitSignsUntrackedNr   = { link = "GitSignsUntracked" },

    -- Full line highlight (linehl)
    GitSignsAddLn         = { bg = add_ln_bg },
    GitSignsChangeLn      = { bg = change_ln_bg },
    GitSignsUntrackedLn   = { bg = untracked_ln_bg },

    -- Word diff
    GitSignsAddInline     = { bg = utils.mix(c.arrate, c.base02, 0.35) },
    GitSignsChangeInline  = { bg = utils.mix(c.damasquinado, c.base02, 0.30) },
    GitSignsDeleteInline  = { bg = utils.mix(c.syntaxError, c.base02, 0.30) },
    GitSignsAddLnInline   = { link = "GitSignsAddInline" },
    GitSignsChangeLnInline = { link = "GitSignsChangeInline" },
    GitSignsDeleteVirtLnInLine = { link = "GitSignsDeleteInline" },
    GitSignsAddVirtLnInLine = { link = "GitSignsAddInline" },
    GitSignsDeleteVirtLn  = { bg = utils.mix(c.syntaxError, c.base02, 0.15) },

    -- Preview hunk float
    GitSignsAddPreview    = { link = "DiffAdd" },
    GitSignsDeletePreview = { link = "DiffDelete" },

    -- Virtual text
    GitSignsCurrentLineBlame = { fg = c.commentText, italic = true },
  }
end

return M
