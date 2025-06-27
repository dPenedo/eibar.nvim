local config = require 'eibar.config'

return {
  editorBg = config.transparent and 'none' or '#212121',
  sidebarBg = '#1a1a1a',
  popupBg = '#292929',
  floatingBg = '#383838',
  menuOptionBg = '#282828',

  mainText = '#c1c1c1',
  emphasisText = '#fafafa',
  commandText = '#e0e0e0',
  inactiveText = '#484848',
  disabledText = '#848484',
  lineNumberText = '#727272',
  selectedText = '#eaeaea',
  inactiveSelectionText = '#f5f5f5',

  windowBorder = '#2a2a2a',
  focusedBorder = '#444444',
  emphasizedBorder = '#363636',

  syntaxError = '#ff7a84',
  syntaxFunction = '#79b8ff',
  warningText = '#ff9800',
  syntaxKeyword = '#b392f0',
  linkText = '#9db1c5',
  stringText = '#ffab70',
  warningEmphasis = '#cd9731',
  successText = '#22863a',
  errorText = '#cd3131',
  specialKeyword = '#800080',
  commentText = '#6b737c',
  syntaxOperator = '#bbbbbb',
  foregroundEmphasis = '#ffffff',
  terminalGray = '#5c5c5c',
}
