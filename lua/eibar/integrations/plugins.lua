local colors = require("eibar.theme").setup() -- O require 'eibar.palettes.dark'

local M = {}

function M.highlights()
	return {
		CmpItemAbbr = { fg = colors.mainText },
		CmpItemAbbrDeprecated = { fg = colors.mainText, strikethrough = true },
		CmpItemKind = { fg = colors.syntaxFunction },
		CmpItemMenu = { fg = colors.mainText },
		CmpItemAbbrMatch = { fg = colors.successText, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = colors.successText, bold = true },

		-- kind support
		CmpItemKindSnippet = { fg = colors.stringText },
		CmpItemKindKeyword = { fg = colors.damasquinado },
		CmpItemKindText = { fg = colors.warningEmphasis },
		CmpItemKindMethod = { fg = colors.syntaxKeyword },
		CmpItemKindConstructor = { fg = colors.syntaxKeyword },
		CmpItemKindFunction = { fg = colors.syntaxKeyword },
		CmpItemKindFolder = { fg = colors.syntaxKeyword },
		CmpItemKindModule = { fg = colors.syntaxKeyword },
		CmpItemKindConstant = { fg = colors.syntaxKeyword },
		CmpItemKindField = { fg = colors.syntaxKeyword },
		CmpItemKindProperty = { fg = colors.successText },
		CmpItemKindEnum = { fg = colors.successText },
		CmpItemKindUnit = { fg = colors.successText },
		CmpItemKindClass = { fg = colors.warningText },
		CmpItemKindVariable = { fg = colors.damasquinado },
		CmpItemKindFile = { fg = colors.lainoak },
		CmpItemKindInterface = { fg = colors.stringText },
		CmpItemKindColor = { fg = colors.damasquinado },
		CmpItemKindReference = { fg = colors.damasquinado },
		CmpItemKindEnumMember = { fg = colors.damasquinado },
		CmpItemKindStruct = { fg = colors.syntaxFunction },
		CmpItemKindValue = { fg = colors.warningEmphasis },
		CmpItemKindEvent = { fg = colors.syntaxFunction },
		CmpItemKindOperator = { fg = colors.damasquinado },
		CmpItemKindTypeParameter = { fg = colors.damasquinado },
		CmpItemKindCopilot = { fg = colors.lainoak },

		-- IndentBlankline
		IndentBlanklineChar = { fg = colors.floatingBg },
		IndentBlanklineSpaceChar = { fg = colors.floatingBg },
		IndentBlanklineSpaceCharBlankline = { fg = colors.floatingBg },
		-- IndentBlanklineContextChar = { fg = theme.ui.special },
		-- IndentBlanklineContextStart = { sp = theme.ui.special, underline = true },
		IblIndent = { fg = colors.floatingBg },
		IblWhitespace = { fg = colors.floatingBg },
		-- IblScope = { fg = theme.ui.special },

		-- SnacksIndent
		SnacksIndent = {
			fg = colors.focusedBorder,
		},
		SnacksIndentScope = {
			fg = colors.lainoak,
		},
	}
end

return M
