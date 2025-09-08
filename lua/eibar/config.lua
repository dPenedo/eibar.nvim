local config = {
	defaults = {
		theme = "dark",
		transparent = false,
		high_contrast = false,
		italics = {
			comments = true,
			keywords = true,
			functions = false,
			parameter = true,
			strings = true,
			variables = false,
			bufferline = false,
		},
		overrides = {},
	},
}

setmetatable(config, { __index = config.defaults })

return config
