local config = {
	defaults = {
		theme = "dark",
		transparent = false,
		background_style = "normal", -- Options: "normal", "contrast", "cyan"
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
