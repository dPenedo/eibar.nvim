local colors = require('eibar.theme').setup()
local M = {}

function M.highlights(config)
  local bg = config.transparent and 'NONE' or colors.sidebarBg
  return {
    background = { bg = bg },
    buffer_visible = { fg = colors.lineNumberText, bg = bg },
    buffer_selected = {
      fg = colors.mainText,
      bg = colors.editorBg,
    },
    duplicate = {
      fg = colors.mainText,
      bg = bg,
      italic = config.italics.bufferline or false,
    },
    duplicate_visible = {
      fg = colors.mainText,
      bg = bg,
      italic = config.italics.bufferline or false,
    },
    duplicate_selected = {
      fg = colors.mainText,
      bg = colors.editorBg,
      italic = config.italics.bufferline or false,
    },

    tab = { fg = colors.mainText, bg = bg },
    tab_selected = {
      fg = colors.mainText,
      bg = colors.editorBg,
    },
    tab_close = { fg = colors.syntaxError, bg = bg },
    indicator_selected = {
      fg = colors.syntaxFunction,
      bg = colors.editorBg,
      bold = true,
    },

    separator = { fg = colors.editorBg, bg = bg },
    separator_selected = {
      fg = colors.editorBg,
      bg = colors.editorBg,
    },
    separator_visible = { fg = colors.editorBg, bg = bg },
    offset_separator = { fg = colors.editorBg, bg = bg },
    tab_separator = { fg = colors.editorBg, bg = bg },
    tab_separator_selected = {
      fg = colors.editorBg,
      bg = colors.editorBg,
    },

    close_button = { fg = colors.lineNumberText, bg = bg },
    close_button_visible = { fg = colors.syntaxError, bg = bg },
    close_button_selected = {
      fg = colors.syntaxError,
      bg = colors.editorBg,
    },

    fill = { bg = bg },

    numbers = { fg = colors.lineNumberText, bg = bg },
    numbers_visible = { fg = colors.lineNumberText, bg = bg },
    numbers_selected = {
      fg = colors.mainText,
      bg = colors.editorBg,
      italic = config.italics.bufferline or false,
    },

    error = { fg = colors.syntaxError, bg = bg },
    error_visible = { fg = colors.syntaxError, bg = bg },
    error_selected = {
      fg = colors.syntaxError,
      bg = colors.editorBg,
      italic = config.italics.bufferline or false,
    },
    error_diagnostic = { fg = colors.syntaxError, bg = bg },
    error_diagnostic_visible = { fg = colors.syntaxError, bg = bg },
    error_diagnostic_selected = {
      fg = colors.syntaxError,
      bg = colors.editorBg,
    },

    warning = { fg = colors.warningEmphasis, bg = bg },
    warning_visible = { fg = colors.warningEmphasis, bg = bg },
    warning_selected = {
      fg = colors.warningEmphasis,
      bg = colors.editorBg,
      italic = config.italics.bufferline or false,
    },
    warning_diagnostic = { fg = colors.warningEmphasis, bg = bg },
    warning_diagnostic_visible = { fg = colors.warningEmphasis, bg = bg },
    warning_diagnostic_selected = {
      fg = colors.warningEmphasis,
      bg = colors.editorBg,
    },

    info = { fg = colors.syntaxFunction, bg = bg },
    info_visible = { fg = colors.syntaxFunction, bg = bg },
    info_selected = {
      fg = colors.syntaxFunction,
      bg = colors.editorBg,
      italic = config.italics.bufferline or false,
    },
    info_diagnostic = { fg = colors.syntaxFunction, bg = bg },
    info_diagnostic_visible = { fg = colors.syntaxFunction, bg = bg },
    info_diagnostic_selected = {
      fg = colors.syntaxFunction,
      bg = colors.editorBg,
    },

    hint = { fg = colors.successText, bg = bg },
    hint_visible = { fg = colors.successText, bg = bg },
    hint_selected = {
      fg = colors.successText,
      bg = colors.editorBg,
      italic = config.italics.bufferline or false,
    },
    hint_diagnostic = { fg = colors.successText, bg = bg },
    hint_diagnostic_visible = { fg = colors.successText, bg = bg },
    hint_diagnostic_selected = {
      fg = colors.successText,
      bg = colors.editorBg,
    },

    diagnostic = { fg = colors.lineNumberText, bg = bg },
    diagnostic_visible = { fg = colors.lineNumberText, bg = bg },
    diagnostic_selected = {
      fg = colors.lineNumberText,
      bg = colors.editorBg,
      italic = config.italics.bufferline or false,
    },

    modified = { fg = colors.warningText, bg = bg },
    modified_selected = {
      fg = colors.warningText,
      bg = colors.editorBg,
    },
  }
end

return M
