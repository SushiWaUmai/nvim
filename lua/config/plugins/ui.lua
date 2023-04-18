return {
	"kyazdani42/nvim-tree.lua", -- File Explorer
	"goolord/alpha-nvim",       -- Start Menu
	"akinsho/bufferline.nvim",  -- Tabs
	"nvim-lualine/lualine.nvim", -- Status bar

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
			version = false, -- wait till new 0.7.0 release to put it back on semver
			event = { "BufReadPre", "BufNewFile" },
		}),

	-- Icons
	{ "kyazdani42/nvim-web-devicons", lazy = true },

	-- ui components
	{ "MunifTanjim/nui.nvim",         lazy = true },
}
