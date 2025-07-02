local M = {}

function M.get_groups(colors, config, utils)
	local bg = config.transparent and "NONE" or colors.editorBg
	local diff_add = utils.shade(colors.successText, 0.5, colors.editorBg)
	local diff_delete = utils.shade(colors.syntaxError, 0.5, colors.editorBg)
	local diff_change = utils.shade(colors.syntaxFunction, 0.5, colors.editorBg)
	local diff_text = utils.shade(colors.warningText, 0.5, colors.editorBg)

	local groups = {
		-- base
		Normal = { fg = colors.mainText, bg = bg },
		LineNr = { fg = colors.lineNumberText, bg = colors.sidebarBg },
		ColorColumn = {
			bg = colors.floatingBg,
		},
		Conceal = {},
		Cursor = { fg = colors.editorBg, bg = colors.mainText },
		lCursor = { link = "Cursor" },
		CursorIM = { link = "Cursor" },
		CursorLine = { bg = colors.popupBg },
		CursorColumn = { link = "CursorLine" },
		Directory = { fg = colors.syntaxFunction },
		DiffAdd = { bg = bg, fg = diff_add },
		DiffChange = { bg = bg, fg = diff_change },
		DiffDelete = { bg = bg, fg = diff_delete },
		DiffText = { bg = bg, fg = diff_text },
		EndOfBuffer = { fg = colors.morea },
		TermCursor = { link = "Cursor" },
		TermCursorNC = { link = "Cursor" },
		ErrorMsg = { fg = colors.syntaxError },
		VertSplit = { fg = colors.windowBorder, bg = bg },
		Winseparator = { link = "VertSplit" },
		SignColumn = { link = "Normal" },
		Folded = { fg = colors.mainText, bg = colors.popupBg },
		FoldColumn = { link = "SignColumn" },
		IncSearch = {
			bg = utils.mix(colors.sanAndres, colors.editorBg, math.abs(0.90)),
			fg = colors.editorBg,
		},
		Substitute = { link = "IncSearch" },
		CursorLineNr = { fg = colors.torreIpurua },
		MatchParen = { fg = colors.warningText, bold = true, bg = colors.emphasizedBorder },
		ModeMsg = { link = "Normal" },
		MsgArea = { link = "Normal" },
		-- MsgSeparator = {},
		MoreMsg = { fg = colors.syntaxFunction },
		NonText = { fg = utils.shade(colors.editorBg, 0.30) },
		NormalFloat = { bg = colors.floatingBg },
		NormalNC = { link = "Normal" },
		Pmenu = { link = "NormalFloat" },
		PmenuSel = { bg = colors.menuOptionBg },
		PmenuSbar = {
			bg = utils.shade(colors.syntaxFunction, 0.5, colors.editorBg),
		},
		PmenuThumb = { bg = utils.shade(colors.editorBg, 0.20) },
		Question = { fg = colors.syntaxFunction },
		QuickFixLine = { fg = colors.syntaxFunction },
		SpecialKey = { fg = colors.syntaxOperator },
		StatusLine = { fg = colors.mainText, bg = bg },
		StatusLineNC = {
			fg = colors.inactiveText,
			bg = colors.sidebarBg,
		},
		TabLine = {
			bg = colors.sidebarBg,
			fg = colors.inactiveText,
		},
		TabLineFill = { link = "TabLine" },
		TabLineSel = {
			bg = colors.editorBg,
			fg = colors.emphasisText,
		},
		Search = { bg = utils.shade(colors.menuOptionBg, 1, colors.bg) },
		SpellBad = { undercurl = true, sp = colors.syntaxError },
		SpellCap = { undercurl = true, sp = colors.syntaxFunction },
		SpellLocal = { undercurl = true, sp = colors.morea },
		SpellRare = { undercurl = true, sp = colors.warningText },
		Title = { fg = colors.syntaxFunction },
		Visual = {
			bg = utils.shade(colors.syntaxFunction, 0.40, colors.editorBg),
		},
		VisualNOS = { link = "Visual" },
		WarningMsg = { fg = colors.warningText },
		Whitespace = { fg = colors.syntaxOperator },
		WildMenu = { bg = colors.menuOptionBg },
		Comment = {
			fg = colors.commentText,
			italic = config.italics.comments or false,
		},

		Constant = { fg = colors.untzaga },
		String = {
			fg = colors.stringText,
			italic = config.italics.strings or false,
		},
		Character = { fg = colors.stringText },
		Number = { fg = colors.untzaga },
		Boolean = { fg = colors.untzaga },
		Float = { link = "Number" },

		Identifier = { fg = colors.mainText },
		Function = { fg = colors.syntaxFunction },
		Method = { fg = colors.morea },
		Property = { fg = colors.sanBlas },
		Field = { link = "Property" },
		Parameter = { fg = colors.mainText, italic = config.italics.parameter or false },
		Statement = { fg = colors.keyword },
		Conditional = { fg = colors.syntaxError },
		-- Repeat = {},
		Label = { fg = colors.syntaxFunction },
		Operator = { fg = colors.damasquinado },
		Keyword = { link = "Statement", italic = config.italics.keywords or false },
		Exception = { fg = colors.syntaxError },

		PreProc = { link = "Keyword" },
		-- Include = {},
		Define = { fg = colors.morea },
		Macro = { link = "Define" },
		PreCondit = { fg = colors.syntaxError },

		Type = { fg = colors.morea },
		Struct = { link = "Type" },
		Class = { link = "Type" },

		-- StorageClass = {},
		-- Structure = {},
		-- Typedef = {},

		Attribute = { link = "Character" },
		Punctuation = { fg = colors.cementBH },
		Special = { fg = colors.syntaxOperator },

		SpecialChar = { fg = colors.syntaxError },
		Tag = { fg = colors.lainoak },
		Delimiter = { fg = colors.cementBH },
		-- SpecialComment = {},
		Debug = { fg = colors.morea },

		Underlined = { underline = true },
		Bold = { bold = true },
		Italic = { italic = true },
		Ignore = { fg = colors.editorBg },
		Error = { link = "ErrorMsg" },
		Todo = { fg = colors.warningText, bold = true },

		LspReferenceText = { bg = diff_text },
		LspReferenceRead = { link = "LspReferenceText" },
		LspReferenceWrite = { link = "LspReferenceText" },
		-- LspCodeLens = {},
		-- LspCodeLensSeparator = {},
		LspSignatureActiveParameter = { link = "LspReferenceText" },

		FloatBorder = { bg = colors.floatingBg, fg = colors.windowBorder }, -- Bordes
		LspFloatWinNormal = { link = "NormalFloat" }, -- Contenido del hover
		LspFloatWinBorder = { link = "FloatBorder" },

		DiagnosticError = { link = "Error" },
		DiagnosticWarn = { link = "WarningMsg" },
		DiagnosticInfo = { fg = colors.syntaxFunction },
		DiagnosticHint = { fg = colors.warningText },
		DiagnosticVirtualTextError = { link = "DiagnosticError" },
		DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
		DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
		DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
		DiagnosticUnderlineError = { undercurl = true, link = "DiagnosticError" },
		DiagnosticUnderlineWarn = { undercurl = true, link = "DiagnosticWarn" },
		DiagnosticUnderlineInfo = { undercurl = true, link = "DiagnosticInfo" },
		DiagnosticUnderlineHint = { undercurl = true, link = "DiagnosticHint" },
		-- DiagnosticFloatingError = {},
		-- DiagnosticFloatingWarn = {},
		DiagnosticFloatingInfo = { fg = colors.torreIpurua, bg = colors.focusedBorder },
		-- DiagnosticSignError = {},
		-- DiagnosticSignWarn = {},
		-- DiagnosticSignInfo = {},
		-- DiagnosticSignHint = {},
	}
	return groups
end

return M
