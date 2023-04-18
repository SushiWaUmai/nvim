return {
	-- Better Syntax Highlighting
	vim.tbl_deep_extend("force", require("config.options.treesitter.configs"),
		{
			"nvim-treesitter/nvim-treesitter",
			lazy = true
		}),

	"nvim-treesitter/nvim-treesitter-context",    -- Treesitter context utility
	"p00f/nvim-ts-rainbow",                       -- rainbow parenthesis
	"JoosepAlviste/nvim-ts-context-commentstring", -- Contextual Commenting
	"windwp/nvim-ts-autotag",                     -- autoclose or rename html tags

	-- Highlighting of other uses
	vim.tbl_deep_extend("force", require("config.options.treesitter.illuminate"),
		{
			"rrethy/vim-illuminate",
			lazy = false
		}),
}
