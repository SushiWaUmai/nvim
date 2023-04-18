local icons = require("config.icons")

return {
	opts = {
		icons = icons.code_context,
		separator = " | ",
		depth_limit = 0,
		depth_limit_indicator = "..",
		lsp = {
			auto_attach = true,
		},
	},
}
