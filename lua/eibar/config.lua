local config = {
	defaults = {
		theme = "dark",
		transparent = false,
		-- WARN: not working on config
		background_style = "solar_des", -- Options: "normal", "contrast", "cyan", "kanagawa"
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
