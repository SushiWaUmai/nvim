return {
	-- transparent
	vim.tbl_deep_extend("force", require("config.options.theme.transparent"),
		{
			"xiyaowong/nvim-transparent",
		}),

	-- vscode color theme
	vim.tbl_deep_extend("force", require("config.options.theme.vscode"),
		{
			"Mofiqul/vscode.nvim",
		}),

	-- onedarkpro color theme
	vim.tbl_deep_extend("force", require("config.options.theme.onedarkpro"),
		{
			"olimorris/onedarkpro.nvim",
		}),


	"cocopon/iceberg.vim", -- iceberg color theme

	-- nord color theme
	vim.tbl_deep_extend("force", require("config.options.theme.nord"),
		{
			"nordtheme/vim",
			lazy = false,
			priority = 1000,
		}),
}
