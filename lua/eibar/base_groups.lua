local M = {}

function M.get_groups(c, config, utils)
	local bg = config.transparent and "NONE" or c.base01
	local diff_add = utils.shade(c.astelehena, 0.5, c.base01)
	local diff_delete = utils.shade(c.syntaxError, 0.5, c.base01)
	local diff_change = utils.shade(c.syntaxFunction, 0.5, c.base01)
	local diff_text = utils.shade(c.warningText, 0.5, c.base01)

	local groups = {
		-- base
		Normal = { fg = c.sanBlas, bg = bg },
		ColorColumn = {
			bg = c.base03,
		},
		Conceal = {},
		Cursor = { fg = c.base01, bg = c.sanBlas },
		lCursor = { link = "Cursor" },
		CursorIM = { link = "Cursor" },
		CursorLine = { bg = c.base03 },
		LineNr = { fg = c.lineNumberText, bg = c.base02 },
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
		StatusLine = { bg = c.base04, fg = c.lainoak },
		StatusLineNC = {
			fg = c.sanBlas,
			bg = c.base02,
		},
		TabLine = {
			bg = c.base03,
			fg = c.lineNumberText,
		},
		TabLineFill = { fg = c.lainoak },
		TabLineSel = {
			bg = c.focusedBorder,
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

		Identifier = { fg = c.sanBlas },
		Function = { fg = c.syntaxFunction, bold = true },
		Method = { fg = c.morea },
		Property = { fg = c.sanAndres },
		Field = { link = "Property" },
		Parameter = { fg = c.sanBlas, italic = config.italics.parameter or false },
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
		Ignore = { fg = c.base04 },
		Error = { link = "ErrorMsg" },
		Todo = { fg = c.warningText, bold = true },

		LspReferenceText = { bg = diff_text },
		LspReferenceRead = { link = "LspReferenceText" },
		LspReferenceWrite = { link = "LspReferenceText" },
		-- LspCodeLens = {},
		-- LspCodeLensSeparator = {},
		LspSignatureActiveParameter = { link = "LspReferenceText" },

		LspInlayHint = { fg = c.base05, italic = config.italics.parameter or false },

		FloatBorder = { bg = c.base03, fg = c.windowBorder }, -- Bordes
		LspFloatWinNormal = { link = "NormalFloat" }, -- Contenido del hover
		LspFloatWinBorder = { link = "FloatBorder" },

		DiagnosticError = { link = "Error", bg = c.base03 },
		DiagnosticWarn = { link = "WarningMsg", bg = c.base03 },
		DiagnosticInfo = { fg = c.syntaxFunction, bg = c.base03 },
		DiagnosticHint = { fg = c.cementBH, bg = c.base03 },
		DiagnosticOk = { fg = c.astelehena, bg = c.base03 },

		DiagnosticVirtualTextError = { link = "DiagnosticError" },
		DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
		DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
		DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
		DiagnosticUnderlineError = { sp = c.syntaxError, undercurl = true, underline = true },
		DiagnosticUnderlineWarn = { undercurl = true, underline = true, sp = c.warningText },
		DiagnosticUnderlineInfo = { undercurl = true, underline = true, sp = c.egoIbaia },
		DiagnosticUnderlineHint = { undercurl = true, underline = true, sp = c.lainoak },
		-- DiagnosticFloatingError = {},
		-- DiagnosticFloatingWarn = {},
		DiagnosticFloatingInfo = { fg = c.torreIpurua, bg = c.focusedBorder },
		DiagnosticFloatingError = { link = "DiagnosticError" },
		DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
		-- DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
		DiagnosticFloatingHint = { link = "DiagnosticHint" },
		-- DiagnosticSignError = {},
		-- DiagnosticSignWarn = {},
		-- DiagnosticSignInfo = {},
		-- DiagnosticSignHint = {},
	}
	return groups
end

return M
