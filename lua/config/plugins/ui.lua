local plugins = {
	-- Start Menu
	alpha = {
		"goolord/alpha-nvim",
		event = "VimEnter",
	},
	-- Tabs
	bufferline = {
		"akinsho/bufferline.nvim",
		lazy = false,
	},
	-- File Explorer
	nvimtree = {
		"kyazdani42/nvim-tree.lua",
		lazy = false,
	},
	-- Status bar
	lualine = {
		"nvim-lualine/lualine.nvim",
		lazy = false,
	},
	-- Embedded terminal
	toggleterm = {
		"akinsho/toggleterm.nvim",
		event = "VimEnter",
	},
	noice = {
		"folke/noice.nvim",
		event = "VeryLazy",
	},
	-- Indentation
	blankline = {
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPost", "BufNewFile" },
	},
	indentscope = {
		"echasnovski/mini.indentscope",
		version = false,
		event = { "BufReadPre", "BufNewFile" },
	},
	-- Hex Colorizer
	colorizer = {
		"norcalli/nvim-colorizer.lua",
		event = { "BufReadPre", "BufNewFile" },
	},
	-- Icons
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	-- ui components
	{ "MunifTanjim/nui.nvim",         lazy = true },
}

return require("config.utils").extendPlugins(plugins, "config.options.ui")
