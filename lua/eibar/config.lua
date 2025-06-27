local config = {
  defaults = {
    theme = 'dark',
    transparent = false,
    italics = {
      comments = true,
      keywords = false,
      functions = false,
      strings = true,
      variables = false,
      bufferline = false,
    },
    overrides = {},
  },
}

setmetatable(config, { __index = config.defaults })

return config
