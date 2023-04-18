return {
	-- Start Menu
	vim.tbl_deep_extend("force", require("config.options.ui.alpha"),
		{
			"goolord/alpha-nvim",
			event = "VimEnter",
		}
	),

	-- Tabs
	vim.tbl_deep_extend("force", require("config.options.ui.bufferline"),
		{
			"akinsho/bufferline.nvim",
			lazy = false,
		}),

	-- File Explorer
	vim.tbl_deep_extend("force", require("config.options.ui.nvim-tree"),
		{
			"kyazdani42/nvim-tree.lua",
			lazy = false
		}
	),

	-- Status bar
	vim.tbl_deep_extend("force", require("config.options.ui.lualine"),
		{
			"nvim-lualine/lualine.nvim",
			lazy = false,
		}),

	-- Embedded terminal
	vim.tbl_deep_extend("force", require("config.options.ui.toggleterm"),
		{
			"akinsho/toggleterm.nvim",
			event = { "BufReadPre", "BufNewFile" },
		}),


	vim.tbl_deep_extend("force", require("config.options.ui.noice"),
		{
			"folke/noice.nvim",
			event = "VeryLazy",
		}),

	-- Indentation
	vim.tbl_deep_extend("force", require("config.options.ui.blankline"),
		{
			"lukas-reineke/indent-blankline.nvim",
			event = { "BufReadPost", "BufNewFile" },
		}),

	vim.tbl_deep_extend("force", require("config.options.ui.indentscope"),
		{
			"echasnovski/mini.indentscope",
			version = false,
			event = { "BufReadPre", "BufNewFile" },
		}),

	-- Icons
	{ "kyazdani42/nvim-web-devicons", lazy = true },

	-- ui components
	{ "MunifTanjim/nui.nvim",         lazy = true },
}
