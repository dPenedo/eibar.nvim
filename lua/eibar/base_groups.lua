local M = {}

function M.get_groups(c, config, utils)
	local bg = config.transparent and "NONE" or c.editorBg
	local diff_add = utils.shade(c.successText, 0.5, c.editorBg)
	local diff_delete = utils.shade(c.syntaxError, 0.5, c.editorBg)
	local diff_change = utils.shade(c.syntaxFunction, 0.5, c.editorBg)
	local diff_text = utils.shade(c.warningText, 0.5, c.editorBg)

	local groups = {
		-- base
		Normal = { fg = c.mainText, bg = bg },
		LineNr = { fg = c.lineNumberText, bg = c.sidebarBg },
		ColorColumn = {
			bg = c.floatingBg,
		},
		Conceal = {},
		Cursor = { fg = c.editorBg, bg = c.mainText },
		lCursor = { link = "Cursor" },
		CursorIM = { link = "Cursor" },
		CursorLine = { bg = c.floatingBg },
		CursorColumn = { link = "CursorLine" },
		Directory = { fg = c.syntaxFunction },
		DiffAdd = { bg = bg, fg = diff_add },
		DiffChange = { bg = bg, fg = diff_change },
		DiffDelete = { bg = bg, fg = diff_delete },
		DiffText = { bg = bg, fg = diff_text },
		EndOfBuffer = { fg = c.morea },
		TermCursor = { link = "Cursor" },
		TermCursorNC = { link = "Cursor" },
		ErrorMsg = { fg = c.syntaxError },
		VertSplit = { fg = c.windowBorder, bg = bg },
		Winseparator = { link = "VertSplit" },
		SignColumn = { link = "Normal" },
		Folded = { fg = c.mainText, bg = c.floatingBg },
		FoldColumn = { link = "SignColumn" },
		IncSearch = {
			bg = utils.mix(c.sanAndres, c.editorBg, math.abs(0.90)),
			fg = c.editorBg,
		},
		Substitute = { link = "IncSearch" },
		CursorLineNr = { fg = c.torreIpurua },
		MatchParen = { fg = c.damasquinado, bold = true, bg = c.floatingBg },
		ModeMsg = { link = "Normal" },
		MsgArea = { link = "Normal" },
		-- MsgSeparator = {},
		MoreMsg = { fg = c.syntaxFunction },
		NonText = { fg = utils.shade(c.editorBg, 0.30) },
		NormalFloat = { bg = c.floatingBg },
		NormalNC = { link = "Normal" },
		Pmenu = { link = "NormalFloat" },
		PmenuSel = { bg = c.menuOptionBg },
		PmenuSbar = {
			bg = utils.shade(c.syntaxFunction, 0.5, c.editorBg),
		},
		PmenuThumb = { bg = utils.shade(c.editorBg, 0.20) },
		Question = { fg = c.syntaxFunction },
		QuickFixLine = { fg = c.syntaxFunction },
		SpecialKey = { fg = c.keyword },
		StatusLine = { fg = c.mainText, bg = bg },
		StatusLineNC = {
			fg = c.lineNumberText,
			bg = c.sidebarBg,
		},
		TabLine = {
			bg = c.sidebarBg,
			fg = c.lineNumberText,
		},
		TabLineFill = { link = "TabLine" },
		TabLineSel = {
			bg = c.editorBg,
			fg = c.sanBlas,
		},
		Search = { bg = utils.shade(c.menuOptionBg, 1, c.bg) },
		SpellBad = { undercurl = true, sp = c.syntaxError },
		SpellCap = { undercurl = true, sp = c.syntaxFunction },
		SpellLocal = { undercurl = true, sp = c.morea },
		SpellRare = { undercurl = true, sp = c.warningText },
		Title = { fg = c.syntaxFunction },
		Visual = {
			bg = utils.shade(c.syntaxFunction, 0.40, c.editorBg),
		},
		VisualNOS = { link = "Visual" },
		WarningMsg = { fg = c.warningText, bg = c.floatingBg },
		Whitespace = { fg = c.cementBH },
		WildMenu = { bg = c.menuOptionBg },
		Comment = {
			fg = c.commentText,
			italic = config.italics.comments or false,
		},

		Constant = { fg = c.untzaga },
		String = {
			fg = c.stringText,
			italic = config.italics.strings or false,
		},
		Character = { fg = c.stringText },
		Number = { fg = c.untzaga },
		Boolean = { fg = c.untzaga },
		Float = { link = "Number" },

		Identifier = { fg = c.mainText },
		Function = { fg = c.syntaxFunction },
		Method = { fg = c.morea },
		Property = { fg = c.sanBlas },
		Field = { link = "Property" },
		Parameter = { fg = c.mainText, italic = config.italics.parameter or false },
		Statement = { fg = c.keyword },
		Conditional = { fg = c.syntaxError },
		-- Repeat = {},
		Label = { fg = c.syntaxFunction },
		Operator = { fg = c.damasquinado },
		Keyword = { link = "Statement", italic = config.italics.keywords or false },
		Exception = { fg = c.syntaxError },

		PreProc = { link = "Keyword" },
		-- Include = {},
		Define = { fg = c.morea },
		Macro = { link = "Define" },
		PreCondit = { fg = c.syntaxError },

		Type = { fg = c.egoIbaia },
		Struct = { link = "Type" },
		Class = { link = "Type" },

		-- StorageClass = {},
		-- Structure = {},
		-- Typedef = {},

		Attribute = { link = "Character" },
		Punctuation = { fg = c.cementBH },
		Special = { fg = c.torreIpurua },

		SpecialChar = { fg = c.cementBH },
		Tag = { fg = c.lainoak },
		Delimiter = { fg = c.cementBH },
		-- SpecialComment = {},
		Debug = { fg = c.morea },

		Underlined = { underline = true },
		Bold = { bold = true },
		Italic = { italic = true },
		Ignore = { fg = c.editorBg },
		Error = { link = "ErrorMsg" },
		Todo = { fg = c.warningText, bold = true },

		LspReferenceText = { bg = diff_text },
		LspReferenceRead = { link = "LspReferenceText" },
		LspReferenceWrite = { link = "LspReferenceText" },
		-- LspCodeLens = {},
		-- LspCodeLensSeparator = {},
		LspSignatureActiveParameter = { link = "LspReferenceText" },

		FloatBorder = { bg = c.floatingBg, fg = c.windowBorder }, -- Bordes
		LspFloatWinNormal = { link = "NormalFloat" }, -- Contenido del hover
		LspFloatWinBorder = { link = "FloatBorder" },

		DiagnosticError = { link = "Error" },
		DiagnosticWarn = { link = "WarningMsg" },
		DiagnosticInfo = { fg = c.syntaxFunction },
		DiagnosticHint = { fg = c.cementBH, bg = c.sidebarBg },
		DiagnosticVirtualTextError = { link = "DiagnosticError" },
		DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
		DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
		DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
		DiagnosticUnderlineError = { undercurl = true, underline = true },
		DiagnosticUnderlineWarn = { undercurl = true, underline = true },
		DiagnosticUnderlineInfo = { undercurl = true, underline = true },
		DiagnosticUnderlineHint = { undercurl = true, underline = true },
		-- DiagnosticFloatingError = {},
		-- DiagnosticFloatingWarn = {},
		DiagnosticFloatingInfo = { fg = c.torreIpurua, bg = c.focusedBorder },
		-- DiagnosticSignError = {},
		-- DiagnosticSignWarn = {},
		-- DiagnosticSignInfo = {},
		-- DiagnosticSignHint = {},
	}
	return groups
end

return M
