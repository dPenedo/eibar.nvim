local M = {}

function M.get(c, opts)
  -- stylua: ignore
	return {
		CmpItemAbbr = { fg = c.mainText },
		CmpItemAbbrDeprecated = { fg = c.mainText, strikethrough = true },
		CmpItemKind = { fg = c.syntaxFunction },
		CmpItemMenu = { fg = c.mainText },
		CmpItemAbbrMatch = { fg = c.astelehena, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = c.astelehena, bold = true },
		-- kind support
		CmpItemKindSnippet = { fg = c.arrate },
		CmpItemKindKeyword = { fg = c.damasquinado },
		CmpItemKindText = { fg = c.warningText },
		CmpItemKindMethod = { fg = c.morea },
		CmpItemKindConstructor = { fg = c.morea },
		CmpItemKindFunction = { fg = c.morea },
		CmpItemKindFolder = { fg = c.morea },
		CmpItemKindModule = { fg = c.morea },
		CmpItemKindConstant = { fg = c.morea },
		CmpItemKindField = { fg = c.morea },
		CmpItemKindProperty = { fg = c.astelehena },
		CmpItemKindEnum = { fg = c.astelehena },
		CmpItemKindUnit = { fg = c.astelehena },
		CmpItemKindClass = { fg = c.warningText },
		CmpItemKindVariable = { fg = c.damasquinado },
		CmpItemKindFile = { fg = c.lainoak },
		CmpItemKindInterface = { fg = c.arrate },
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
