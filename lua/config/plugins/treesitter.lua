local plugins = {
	-- Better Syntax Highlighting
	configs = {
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
	},
	-- Highlighting of other uses
	illuminate = {
		"rrethy/vim-illuminate",
		event = { "BufReadPre", "BufNewFile" },
	},
	{ "JoosepAlviste/nvim-ts-context-commentstring", lazy = true }, -- Contextual Commenting
	"nvim-treesitter/nvim-treesitter-context",                     -- Treesitter context utility
	"p00f/nvim-ts-rainbow",                                        -- rainbow parenthesis
	"windwp/nvim-ts-autotag",                                      -- autoclose or rename html tags
}

return require("config.utils").extendPlugins(plugins, "config.options.treesitter")
