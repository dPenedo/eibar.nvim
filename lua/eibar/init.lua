local bufferline = require 'eibar.integrations.bufferline'
local cmp = require 'eibar.integrations.cmp'
local colors = require('eibar.theme').setup()
local config = require 'eibar.config'
local utils = require 'eibar.utils'
local theme = {}

local function set_terminal_colors()
  vim.g.terminal_color_0 = colors.editorBg
  vim.g.terminal_color_1 = colors.syntaxError
  vim.g.terminal_color_2 = colors.successText
  vim.g.terminal_color_3 = colors.warningEmphasis
  vim.g.terminal_color_4 = colors.syntaxFunction
  vim.g.terminal_color_5 = colors.syntaxKeyword
  vim.g.terminal_color_6 = colors.linkText
  vim.g.terminal_color_7 = colors.mainText
  vim.g.terminal_color_8 = colors.inactiveText
  vim.g.terminal_color_9 = colors.errorText
  vim.g.terminal_color_10 = colors.stringText
  vim.g.terminal_color_11 = colors.warningText
  vim.g.terminal_color_12 = colors.syntaxOperator
  vim.g.terminal_color_13 = colors.syntaxError
  vim.g.terminal_color_14 = colors.stringText
  vim.g.terminal_color_15 = colors.commentText
  vim.g.terminal_color_background = colors.editorBg
  vim.g.terminal_color_foreground = colors.mainText
end

local function set_groups()
  local bg = config.transparent and 'NONE' or colors.editorBg
  local diff_add = utils.shade(colors.successText, 0.5, colors.editorBg)
  local diff_delete = utils.shade(colors.syntaxError, 0.5, colors.editorBg)
  local diff_change = utils.shade(colors.syntaxFunction, 0.5, colors.editorBg)
  local diff_text = utils.shade(colors.warningEmphasis, 0.5, colors.editorBg)

  local groups = {
    -- base
    Normal = { fg = colors.mainText, bg = bg },
    LineNr = { fg = colors.lineNumberText },
    ColorColumn = {
      bg = utils.shade(colors.linkText, 0.5, colors.editorBg),
    },
    Conceal = {},
    Cursor = { fg = colors.editorBg, bg = colors.mainText },
    lCursor = { link = 'Cursor' },
    CursorIM = { link = 'Cursor' },
    CursorLine = { bg = colors.popupBg },
    CursorColumn = { link = 'CursorLine' },
    Directory = { fg = colors.syntaxFunction },
    DiffAdd = { bg = bg, fg = diff_add },
    DiffChange = { bg = bg, fg = diff_change },
    DiffDelete = { bg = bg, fg = diff_delete },
    DiffText = { bg = bg, fg = diff_text },
    EndOfBuffer = { fg = colors.syntaxKeyword },
    TermCursor = { link = 'Cursor' },
    TermCursorNC = { link = 'Cursor' },
    ErrorMsg = { fg = colors.syntaxError },
    VertSplit = { fg = colors.windowBorder, bg = bg },
    Winseparator = { link = 'VertSplit' },
    SignColumn = { link = 'Normal' },
    Folded = { fg = colors.mainText, bg = colors.popupBg },
    FoldColumn = { link = 'SignColumn' },
    IncSearch = {
      bg = utils.mix(colors.syntaxFunction, colors.editorBg, math.abs(0.30)),
      fg = colors.editorBg,
    },
    Substitute = { link = 'IncSearch' },
    CursorLineNr = { fg = colors.damasquinado },
    MatchParen = { fg = colors.syntaxError, bg = bg },
    ModeMsg = { link = 'Normal' },
    MsgArea = { link = 'Normal' },
    -- MsgSeparator = {},
    MoreMsg = { fg = colors.syntaxFunction },
    NonText = { fg = utils.shade(colors.editorBg, 0.30) },
    NormalFloat = { bg = colors.floatingBg },
    NormalNC = { link = 'Normal' },
    Pmenu = { link = 'NormalFloat' },
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
    TabLineFill = { link = 'TabLine' },
    TabLineSel = {
      bg = colors.editorBg,
      fg = colors.emphasisText,
    },
    Search = { bg = utils.shade(colors.successText, 1.2, colors.bg) },
    SpellBad = { undercurl = true, sp = colors.syntaxError },
    SpellCap = { undercurl = true, sp = colors.syntaxFunction },
    SpellLocal = { undercurl = true, sp = colors.syntaxKeyword },
    SpellRare = { undercurl = true, sp = colors.warningText },
    Title = { fg = colors.syntaxFunction },
    Visual = {
      bg = utils.shade(colors.syntaxFunction, 0.40, colors.editorBg),
    },
    VisualNOS = { link = 'Visual' },
    WarningMsg = { fg = colors.warningText },
    Whitespace = { fg = colors.syntaxOperator },
    WildMenu = { bg = colors.menuOptionBg },
    Comment = {
      fg = colors.commentText,
      italic = config.italics.comments or false,
    },

    Constant = { fg = colors.syntaxError },
    String = {
      fg = colors.stringText,
      italic = config.italics.strings or false,
    },
    Character = { fg = colors.stringText },
    Number = { fg = colors.foregroundEmphasis },
    Boolean = { fg = colors.untzaga },
    Float = { link = 'Number' },

    Identifier = { fg = colors.mainText },
    Function = { fg = colors.syntaxKeyword },
    Method = { fg = colors.syntaxKeyword },
    Property = { fg = colors.syntaxFunction },
    Field = { link = 'Property' },
    Parameter = { fg = colors.mainText },
    Statement = { fg = colors.untzaga },
    Conditional = { fg = colors.syntaxError },
    -- Repeat = {},
    Label = { fg = colors.syntaxFunction },
    Operator = { fg = colors.damasquinado },
    Keyword = { link = 'Statement', italic = config.italics.keywords or false },
    Exception = { fg = colors.syntaxError },

    PreProc = { link = 'Keyword' },
    -- Include = {},
    Define = { fg = colors.syntaxKeyword },
    Macro = { link = 'Define' },
    PreCondit = { fg = colors.syntaxError },

    Type = { fg = colors.syntaxKeyword },
    Struct = { link = 'Type' },
    Class = { link = 'Type' },

    -- StorageClass = {},
    -- Structure = {},
    -- Typedef = {},

    Attribute = { link = 'Character' },
    Punctuation = { fg = colors.syntaxOperator },
    Special = { fg = colors.syntaxOperator },

    SpecialChar = { fg = colors.syntaxError },
    Tag = { fg = colors.stringText },
    Delimiter = { fg = colors.syntaxOperator },
    -- SpecialComment = {},
    Debug = { fg = colors.specialKeyword },

    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Ignore = { fg = colors.editorBg },
    Error = { link = 'ErrorMsg' },
    Todo = { fg = colors.warningText, bold = true },

    -- LspReferenceText = {},
    -- LspReferenceRead = {},
    -- LspReferenceWrite = {},
    -- LspCodeLens = {},
    -- LspCodeLensSeparator = {},
    -- LspSignatureActiveParameter = {},

    DiagnosticError = { link = 'Error' },
    DiagnosticWarn = { link = 'WarningMsg' },
    DiagnosticInfo = { fg = colors.syntaxFunction },
    DiagnosticHint = { fg = colors.warningEmphasis },
    DiagnosticVirtualTextError = { link = 'DiagnosticError' },
    DiagnosticVirtualTextWarn = { link = 'DiagnosticWarn' },
    DiagnosticVirtualTextInfo = { link = 'DiagnosticInfo' },
    DiagnosticVirtualTextHint = { link = 'DiagnosticHint' },
    DiagnosticUnderlineError = { undercurl = true, link = 'DiagnosticError' },
    DiagnosticUnderlineWarn = { undercurl = true, link = 'DiagnosticWarn' },
    DiagnosticUnderlineInfo = { undercurl = true, link = 'DiagnosticInfo' },
    DiagnosticUnderlineHint = { undercurl = true, link = 'DiagnosticHint' },
    -- DiagnosticFloatingError = {},
    -- DiagnosticFloatingWarn = {},
    -- DiagnosticFloatingInfo = {},
    -- DiagnosticFloatingHint = {},
    -- DiagnosticSignError = {},
    -- DiagnosticSignWarn = {},
    -- DiagnosticSignInfo = {},
    -- DiagnosticSignHint = {},

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

    ['@text'] = { fg = colors.mainText },
    ['@texcolorscheme.literal'] = { link = 'Property' },
    -- ["@texcolorscheme.reference"] = {},
    ['@texcolorscheme.strong'] = { link = 'Bold' },
    ['@texcolorscheme.italic'] = { link = 'Italic' },
    ['@texcolorscheme.title'] = { link = 'Keyword' },
    ['@texcolorscheme.uri'] = {
      fg = colors.syntaxFunction,
      sp = colors.syntaxFunction,
      underline = true,
    },
    ['@texcolorscheme.underline'] = { link = 'Underlined' },
    ['@symbol'] = { fg = colors.syntaxOperator },
    ['@texcolorscheme.todo'] = { link = 'Todo' },
    ['@comment'] = { link = 'Comment' },
    ['@punctuation'] = { link = 'Punctuation' },
    ['@punctuation.bracket'] = { fg = colors.cementBH },
    ['@punctuation.delimiter'] = { fg = colors.cementBH },
    ['@punctuation.terminator.statement'] = { link = 'Delimiter' },
    ['@punctuation.special'] = { fg = colors.untzaga },
    ['@punctuation.separator.keyvalue'] = { fg = colors.syntaxError },

    ['@texcolorscheme.diff.add'] = { fg = colors.successText },
    ['@texcolorscheme.diff.delete'] = { fg = colors.errorText },

    ['@constant'] = { link = 'Constant' },
    ['@constant.builtin'] = { fg = colors.syntaxFunction },
    ['@constancolorscheme.builtin'] = { link = 'Keyword' },
    -- ["@constancolorscheme.macro"] = {},
    -- ["@define"] = {},
    -- ["@macro"] = {},
    ['@string'] = { link = 'String' },
    ['@string.escape'] = { fg = utils.shade(colors.stringText, 0.45) },
    ['@string.special'] = { fg = utils.shade(colors.syntaxFunction, 0.45) },
    -- ["@character"] = {},
    -- ["@character.special"] = {},
    ['@number'] = { link = 'Number' },
    ['@boolean'] = { link = 'Boolean' },
    -- ["@float"] = {},
    ['@function'] = {
      link = 'Function',
      italic = config.italics.functions or false,
    },
    ['@function.call'] = { link = 'Function' },
    ['@function.builtin'] = { link = 'Function' },
    -- ["@function.macro"] = {},
    ['@parameter'] = { link = 'Parameter' },
    ['@method'] = { link = 'Function' },
    ['@field'] = { link = 'Property' },
    ['@property'] = { link = 'Property' },
    ['@constructor'] = { fg = colors.sanAndres },
    -- ["@conditional"] = {},
    -- ["@repeat"] = {},
    ['@label'] = { link = 'Label' },
    ['@operator'] = { link = 'Operator' },
    ['@exception'] = { link = 'Exception' },
    ['@variable'] = {
      fg = colors.syntaxFunction,
      italic = config.italics.variables or false,
    },
    ['@variable.builtin'] = { fg = colors.syntaxFunction },
    ['@variable.member'] = { fg = colors.mainText },
    ['@variable.parameter'] = {
      fg = colors.mainText,
      italic = config.italics.variables or false,
    },
    ['@type'] = { link = 'Type' },
    ['@type.definition'] = { fg = colors.mainText },
    ['@type.builtin'] = { fg = colors.syntaxFunction },
    ['@type.qualifier'] = { fg = colors.syntaxFunction },
    ['@keyword'] = { link = 'Keyword' },
    -- ["@storageclass"] = {},
    -- ["@structure"] = {},
    ['@namespace'] = { link = 'Type' },
    ['@annotation'] = { link = 'Label' },
    -- ["@include"] = {},
    -- ["@preproc"] = {},
    ['@debug'] = { fg = colors.specialKeyword },
    ['@tag'] = { link = 'Tag' },
    ['@tag.builtin'] = { link = 'Tag' },
    ['@tag.delimiter'] = { fg = colors.syntaxOperator },
    ['@tag.attribute'] = { fg = colors.syntaxKeyword },
    ['@tag.jsx.element'] = { fg = colors.syntaxFunction },
    ['@attribute'] = { fg = colors.syntaxKeyword },
    ['@error'] = { link = 'Error' },
    ['@warning'] = { link = 'WarningMsg' },
    ['@info'] = { fg = colors.syntaxFunction },

    -- Specific languages
    -- overrides
    ['@label.json'] = { fg = colors.property }, -- For json
    ['@label.help'] = { link = '@texcolorscheme.uri' }, -- For help files
    ['@texcolorscheme.uri.html'] = { underline = true }, -- For html

    -- semantic highlighting
    ['@lsp.type.namespace'] = { link = '@namespace' },
    ['@lsp.type.type'] = { link = '@type' },
    ['@lsp.type.class'] = { link = '@type' },
    ['@lsp.type.enum'] = { link = '@type' },
    ['@lsp.type.enumMember'] = { fg = colors.syntaxFunction },
    ['@lsp.type.interface'] = { link = '@type' },
    ['@lsp.type.struct'] = { link = '@type' },
    ['@lsp.type.parameter'] = { link = '@parameter' },
    ['@lsp.type.property'] = { link = '@text' },
    ['@lsp.type.function'] = { link = '@function' },
    ['@lsp.type.method'] = { link = '@method' },
    ['@lsp.type.macro'] = { link = '@label' },
    ['@lsp.type.decorator'] = { link = '@label' },
    ['@lsp.typemod.function.declaration'] = { link = '@function' },
    ['@lsp.typemod.function.readonly'] = { link = '@function' },
  }

  -- integrations
  groups = vim.tbl_extend('force', groups, cmp.highlights())

  -- overrides
  groups = vim.tbl_extend(
    'force',
    groups,
    type(config.overrides) == 'function' and config.overrides()
      or config.overrides
  )

  for group, parameters in pairs(groups) do
    vim.api.nvim_set_hl(0, group, parameters)
  end
end

function theme.setup(values)
  setmetatable(
    config,
    { __index = vim.tbl_extend('force', config.defaults, values) }
  )

  theme.bufferline = { highlights = {} }
  theme.bufferline.highlights = bufferline.highlights(config)
end

function theme.colorscheme()
  if vim.version().minor < 8 then
    vim.notify(
      'Neovim 0.8+ is required for eibar colorscheme',
      vim.log.levels.ERROR,
      { title = 'Min Theme' }
    )
    return
  end

  vim.api.nvim_command 'hi clear'
  if vim.fn.exists 'syntax_on' then
    vim.api.nvim_command 'syntax reset'
  end

  vim.g.VM_theme_set_by_colorscheme = true
  vim.o.termguicolors = true
  vim.g.colors_name = 'eibar'

  set_terminal_colors()
  set_groups()
end

return theme
