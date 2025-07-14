local M = {}

function M.get(c, config, utils)
  -- stylua: ignore
  return {

		-- Tree-Sitter groups are defined with an "@" symbol, which must be
		-- specially handled to be valid lua code, we do this via the special
		-- sym function. The following are all valid ways to call the sym function,
		-- for more details see https://www.lua.org/pil/5.html
		--
		-- sym("@text.literal")
		-- sym('@text.literal')
		-- sym"@text.literal"
		-- sym'@text.literal'
		--
		-- For more information see https://github.com/rktjmp/lush.nvim/issues/109

		["@text"] = { fg = c.lainoak },
		["@texcolorscheme.literal"] = { link = "Property" },
		-- ["@texcolorscheme.reference"] = {},
		["@texcolorscheme.strong"] = { link = "Bold" },
		["@texcolorscheme.italic"] = { link = "Italic" },
		["@texcolorscheme.title"] = { link = "Keyword" },
		["@texcolorscheme.uri"] = {
			fg = c.syntaxFunction,
			sp = c.syntaxFunction,
			underline = true,
		},
		["@texcolorscheme.underline"] = { link = "Underlined" },
		["@symbol"] = { fg = c.cementBH },
		["@texcolorscheme.todo"] = { link = "Todo" },
		["@comment"] = { link = "Comment" },
		["@punctuation"] = { link = "Punctuation" },
		["@punctuation.bracket"] = { fg = c.sanAndres },
		["@punctuation.delimiter"] = { fg = c.lainoak },
		["@punctuation.terminator.statement"] = { link = "Delimiter" },
		["@punctuation.special"] = { fg = c.untzaga },
		["@punctuation.separator.keyvalue"] = { fg = c.syntaxError },

		["@texcolorscheme.diff.add"] = { fg = c.astelehena },

		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = { fg = c.torreIpurua },
		["@constancolorscheme.builtin"] = { link = "Keyword" },
		-- ["@constancolorscheme.macro"] = {},
		-- ["@define"] = {},
		-- ["@macro"] = {},
		["@string"] = { link = "String" },
		["@string.escape"] = { fg = utils.shade(c.arrate, 0.45) },
		["@string.special"] = { fg = utils.shade(c.syntaxFunction, 0.45) },
		-- ["@character"] = {},
		-- ["@character.special"] = {},
		["@number"] = { link = "Number" },
		["@enum"] = { link = "Number" },
		["@boolean"] = { link = "Boolean" },
		-- ["@float"] = {},
		["@function"] = {
			link = "Function",
			italic = config.italics.functions or false,
		},
		["@function.call"] = { link = "Function" },
		["@function.builtin"] = { link = "Function" },
		-- ["@function.macro"] = {},
		["@parameter"] = { link = "Parameter" },
		["@method"] = { link = "Function" },
		["@field"] = { link = "Property" },
		["@property"] = { link = "Property" },
		["@constructor"] = { fg = c.lainoak },
		-- ["@conditional"] = {},
		-- ["@repeat"] = {},
		["@label"] = { link = "Label" },
		["@operator"] = { link = "Operator" },
		["@exception"] = { link = "Exception" },
		["@variable"] = {
			fg = c.sanBlas,
			italic = config.italics.variables or false,
		},
		["@variable.builtin"] = { fg = c.sanBlas },
		["@variable.member"] = { fg = c.lainoak },
		["@variable.parameter"] = {
			fg = c.mainText,
			italic = config.italics.variables or false,
		},
		["@type"] = { link = "Type" },
		["@type.definition"] = { fg = c.mainText },
		["@type.builtin"] = { fg = c.syntaxFunction },
		["@type.qualifier"] = { fg = c.syntaxFunction },
		["@keyword"] = { link = "Keyword" },
		-- ["@storageclass"] = {},
		-- ["@structure"] = {},
		["@namespace"] = { link = "Type" },
		["@annotation"] = { link = "Label" },
		-- ["@include"] = {},
		-- ["@preproc"] = {},
		["@debug"] = { fg = c.morea },
		["@tag"] = { link = "Tag" },
		["@tag.builtin"] = { link = "Tag" },
		["@tag.delimiter"] = { fg = c.cementBH },
		["@tag.attribute"] = { fg = c.morea },
		["@tag.jsx.element"] = { fg = c.syntaxFunction },
		["@attribute"] = { fg = c.morea },
		["@error"] = { link = "Error" },
		["@warning"] = { link = "WarningMsg" },
		["@info"] = { fg = c.syntaxFunction },

		-- Specific languages
		-- overrides
		["@label.json"] = { fg = c.property }, -- For json
		["@label.help"] = { link = "@texcolorscheme.uri" }, -- For help files
		["@texcolorscheme.uri.html"] = { underline = true }, -- For html

		-- semantic highlighting
		["@lsp.type.namespace"] = { link = "@namespace" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.enumMember"] = { fg = c.syntaxFunction },
		["@lsp.type.interface"] = { link = "@type" },
		["@lsp.type.struct"] = { link = "@type" },
		["@lsp.type.parameter"] = { link = "@parameter" },
		["@lsp.type.property"] = { link = "@text" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.method"] = { link = "@method" },
		["@lsp.type.macro"] = { link = "@label" },
		["@lsp.type.decorator"] = { link = "@label" },
		["@lsp.typemod.function.declaration"] = { link = "@function" },
		["@lsp.typemod.function.readonly"] = { link = "@function" },
		["@lsp.typemod.variable.readonly"] = { link = "@enum" },
		["@lsp.typemod.variable.readonly.python"] = { link = "@enum" },

    ["@markup.heading.1.markdown"] = {link = "@Constant"},
    ["@markup.heading.2.markdown"] = {link = "@Type"},
    ["@markup.heading.3.markdown"] = {link = "@Method"},
    ["@markup.heading.4.markdown"] = {link = "@Function"},
    ["@markup.heading.5.markdown"] = {link = "@Type"},
    ["@markup.heading.6.markdown"] = {link = "@Variable"},
	}
end

return M
