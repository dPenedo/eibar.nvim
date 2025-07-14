local M = {}

function M.get_groups(c, config, utils)
	local bg = config.transparent and "NONE" or c.base01
	local diff_add = utils.shade(c.astelehena, 0.5, c.base01)
	local diff_delete = utils.shade(c.syntaxError, 0.5, c.base01)
	local diff_change = utils.shade(c.syntaxFunction, 0.5, c.base01)
	local diff_text = utils.shade(c.warningText, 0.5, c.base01)

	local groups = {
		-- base
		Normal = { fg = c.mainText, bg = bg },
		LineNr = { fg = c.lineNumberText, bg = c.base00 },
		ColorColumn = {
			bg = c.base03,
		},
		Conceal = {},
		Cursor = { fg = c.base01, bg = c.mainText },
		lCursor = { link = "Cursor" },
		CursorIM = { link = "Cursor" },
		CursorLine = { bg = c.base03 },
		CursorLineNr = { fg = c.torreIpurua, bg = c.base02 },
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
		Folded = { fg = c.mainText, bg = c.base03 },
		FoldColumn = { link = "SignColumn" },
		IncSearch = {
			bg = utils.mix(c.sanAndres, c.base01, math.abs(0.90)),
			fg = c.base01,
		},
		Substitute = { link = "IncSearch" },
		MatchParen = { fg = c.damasquinado, bold = true, bg = c.base03 },
		ModeMsg = { link = "Normal" },
		MsgArea = { link = "Normal" },
		-- MsgSeparator = {},
		MoreMsg = { fg = c.syntaxFunction },
		NonText = { fg = utils.shade(c.base01, 0.30) },
		NormalFloat = { bg = c.base04 },
		NormalNC = { link = "Normal" },
		Pmenu = { link = "NormalFloat" },
		PmenuSel = { bg = c.menuOptionBg },
		PmenuSbar = {
			bg = utils.shade(c.syntaxFunction, 0.5, c.base01),
		},
		PmenuThumb = { bg = utils.shade(c.base01, 0.20) },
		Question = { fg = c.syntaxFunction },
		QuickFixLine = { fg = c.syntaxFunction },
		SpecialKey = { fg = c.keyword },
		StatusLine = { fg = c.mainText, bg = bg },
		StatusLineNC = {
			fg = c.lineNumberText,
			bg = c.base02,
		},
		TabLine = {
			bg = c.base02,
			fg = c.lineNumberText,
		},
		TabLineFill = { link = "TabLine" },
		TabLineSel = {
			bg = c.base01,
			fg = c.sanBlas,
		},
		Search = { bg = utils.shade(c.menuOptionBg, 1, c.bg) },
		SpellBad = { undercurl = true, sp = c.syntaxError },
		SpellCap = { undercurl = true, sp = c.syntaxFunction },
		SpellLocal = { undercurl = true, sp = c.morea },
		SpellRare = { undercurl = true, sp = c.warningText },
		Title = { fg = c.syntaxFunction },
		Visual = {
			bg = utils.shade(c.syntaxFunction, 0.40, c.base01),
		},
		VisualNOS = { link = "Visual" },
		WarningMsg = { fg = c.warningText, bg = c.base03 },
		Whitespace = { fg = c.cementBH },
		WildMenu = { bg = c.menuOptionBg },
		Comment = {
			fg = c.commentText,
			italic = config.italics.comments or false,
		},

		Constant = { fg = c.untzaga },
		String = {
			fg = c.arrate,
			italic = config.italics.strings or false,
		},
		Character = { fg = c.arrate },
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
		Conditional = { fg = c.keyword },
		-- Repeat = {},
		Label = { fg = c.syntaxFunction },
		Operator = { fg = c.damasquinado },
		Keyword = { link = "Statement", italic = config.italics.keywords or false },
		Exception = { fg = c.keyword },

		PreProc = { link = "Keyword" },
		-- Include = {},
		Define = { fg = c.morea },
		Macro = { link = "Define" },
		PreCondit = { fg = c.keyword },

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
		Ignore = { fg = c.base01 },
		Error = { link = "ErrorMsg" },
		Todo = { fg = c.warningText, bold = true },

		LspReferenceText = { bg = diff_text },
		LspReferenceRead = { link = "LspReferenceText" },
		LspReferenceWrite = { link = "LspReferenceText" },
		-- LspCodeLens = {},
		-- LspCodeLensSeparator = {},
		LspSignatureActiveParameter = { link = "LspReferenceText" },

		FloatBorder = { bg = c.base03, fg = c.windowBorder }, -- Bordes
		LspFloatWinNormal = { link = "NormalFloat" }, -- Contenido del hover
		LspFloatWinBorder = { link = "FloatBorder" },

		DiagnosticError = { link = "Error" },
		DiagnosticWarn = { link = "WarningMsg" },
		DiagnosticInfo = { fg = c.syntaxFunction },
		DiagnosticHint = { fg = c.cementBH, bg = c.base02 },
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
