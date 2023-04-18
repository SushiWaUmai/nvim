return {
	"kyazdani42/nvim-tree.lua", -- File Explorer
	"goolord/alpha-nvim",       -- Start Menu
	"akinsho/bufferline.nvim",  -- Tabs
	"nvim-lualine/lualine.nvim", -- Status bar
	"akinsho/toggleterm.nvim",  -- Embedded terminal

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		unpack(require("config.options.ui.noice")),
	},

	-- Icons
	{ "kyazdani42/nvim-web-devicons", lazy = true },

	-- ui components
	{ "MunifTanjim/nui.nvim",         lazy = true },
}
