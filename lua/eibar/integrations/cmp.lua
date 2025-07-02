local M = {}

function M.get(c, opts)
  -- stylua: ignore
	return {
		CmpItemAbbr = { fg = c.mainText },
		CmpItemAbbrDeprecated = { fg = c.mainText, strikethrough = true },
		CmpItemKind = { fg = c.syntaxFunction },
		CmpItemMenu = { fg = c.mainText },
		CmpItemAbbrMatch = { fg = c.successText, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = c.successText, bold = true },
		-- kind support
		CmpItemKindSnippet = { fg = c.stringText },
		CmpItemKindKeyword = { fg = c.damasquinado },
		CmpItemKindText = { fg = c.warningText },
		CmpItemKindMethod = { fg = c.morea },
		CmpItemKindConstructor = { fg = c.morea },
		CmpItemKindFunction = { fg = c.morea },
		CmpItemKindFolder = { fg = c.morea },
		CmpItemKindModule = { fg = c.morea },
		CmpItemKindConstant = { fg = c.morea },
		CmpItemKindField = { fg = c.morea },
		CmpItemKindProperty = { fg = c.successText },
		CmpItemKindEnum = { fg = c.successText },
		CmpItemKindUnit = { fg = c.successText },
		CmpItemKindClass = { fg = c.warningText },
		CmpItemKindVariable = { fg = c.damasquinado },
		CmpItemKindFile = { fg = c.lainoak },
		CmpItemKindInterface = { fg = c.stringText },
		CmpItemKindColor = { fg = c.damasquinado },
		CmpItemKindReference = { fg = c.damasquinado },
		CmpItemKindEnumMember = { fg = c.damasquinado },
		CmpItemKindStruct = { fg = c.syntaxFunction },
		CmpItemKindValue = { fg = c.warningText },
		CmpItemKindEvent = { fg = c.syntaxFunction },
		CmpItemKindOperator = { fg = c.damasquinado },
		CmpItemKindTypeParameter = { fg = c.damasquinado },
		CmpItemKindCopilot = { fg = c.lainoak },
	}
end

return M
