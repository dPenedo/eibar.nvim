local M = {}

-- Colores por defecto de agentic.nvim (https://github.com/carlos-algms/agentic.nvim)
-- y su color más cercano en la paleta de eibar:
--   diff_delete_word_bg #9a3c3c -> syntaxError (rojo)
--   diff_add_word_bg    #155729 -> astelehena  (verde)
--   status_pending_bg   #5f4d8f -> morea       (morado)
--   status_completed_bg #2d5a3d -> astelehena  (verde, reusado también por PermissionButtonAllow)
--   status_failed_bg    #7a2d2d -> syntaxError (rojo, reusado también por PermissionButtonReject)
--   permission_button_inactive_bg #3a3a3a -> base04 (gris neutro de UI)
--   title_bg  #2787b0 -> egoIbaia (azul/cian)
--   spinner_generating_fg #61afef -> syntaxFunction (azul)
--   spinner_thinking_fg   #c678dd -> morea          (morado)
--   spinner_searching_fg  #e5c07b -> damasquinado   (dorado)
--
-- Para las "píldoras" con fondo saturado (status, botones de permiso, título)
-- se sigue el patrón que usa kanagawa.nvim en sus grupos MiniStatuslineMode*:
-- bg = color de acento sin diluir, fg = base00. base00 es el extremo opuesto
-- de la paleta en cada modo (muy oscuro en el tema dark, muy claro en el
-- light), y como los colores de acento también se invierten entre temas
-- (claros en dark, oscuros en light) el contraste queda garantizado en
-- ambos casos sin necesitar un fg fijo en hexadecimal.
function M.get(c, config, utils)
	return {
		-- Diff highlights
		AgenticDiffDelete = { link = "DiffDelete" },
		AgenticDiffAdd = { link = "DiffAdd" },
		AgenticDiffDeleteWord = { bg = utils.mix(c.syntaxError, c.base00, 0.6), bold = true },
		AgenticDiffAddWord = { bg = utils.mix(c.astelehena, c.base00, 0.6), bold = true },

		-- Status highlights
		AgenticStatusPending = { bg = c.morea, fg = c.base00, bold = true },
		AgenticStatusCompleted = { bg = c.astelehena, fg = c.base00, bold = true },
		AgenticStatusFailed = { bg = c.syntaxError, fg = c.base00, bold = true },
		AgenticCodeBlockFence = { link = "Directory" },

		-- Permission button highlights (bg-based, button-like fill)
		AgenticPermissionButtonAllow = { bg = c.astelehena, fg = c.base00, bold = true },
		AgenticPermissionButtonReject = { bg = c.syntaxError, fg = c.base00, bold = true },
		AgenticPermissionButtonInactive = { bg = c.base04, fg = c.commentText },

		-- Título de la sidebar
		AgenticTitle = { bg = c.base02, fg = c.commentText },

		-- Spinner
		AgenticSpinnerGenerating = { fg = c.syntaxFunction, bold = true },
		AgenticSpinnerThinking = { fg = c.morea, bold = true },
		AgenticSpinnerSearching = { fg = c.damasquinado, bold = true },
		AgenticSpinnerBusy = { link = "Comment" },

		-- Bloque de "thinking" en el chat
		AgenticThinking = { link = "Comment" },
	}
end

return M
