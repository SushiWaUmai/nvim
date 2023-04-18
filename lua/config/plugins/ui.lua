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
		event = "VimEnter",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"nvim-lualine/lualine.nvim",
		}
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
	twilight = {
		"folke/twilight.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},
	zenmode = {
		"folke/zen-mode.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"folke/twilight.nvim",
		}
	},
	-- Icons
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	-- ui components
	{ "MunifTanjim/nui.nvim",        lazy = true },
}

return require("config.utils").extendPlugins(plugins, "config.options.ui")
