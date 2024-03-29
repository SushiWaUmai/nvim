local plugins = {
	-- peek lines
	numb = {
		"nacro90/numb.nvim"
	},
	-- Commenting
	comment = {
		"numToStr/Comment.nvim",
	},
	-- Notify
	notify = {
		"rcarriga/nvim-notify",
	},
	-- autopairs eg: ( ) { }
	autopairs = {
		"windwp/nvim-autopairs",
	},
	-- Git Signs
	gitsigns = {
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},
	-- github copilot
	copilot = {
		"github/copilot.vim",
		event = { "BufReadPre", "BufNewFile" },
	},
	-- Markdown Preview
	markdown = {
		"iamcco/markdown-preview.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},
	rest = {
		"rest-nvim/rest.nvim",
		event = "VimEnter",
		dependencies = {
			"nvim-lua/plenary.nvim",
		}
	},
	"nvim-lua/plenary.nvim",     -- Useful lua functions used in lots of plugins
	"nvim-lua/popup.nvim",       -- An implementation of the Popup API from vim in Neovim
	"gpanders/editorconfig.nvim", -- Editor config
	"moll/vim-bbye",             -- Closing Tabs
	"wakatime/vim-wakatime",     -- Time Tracking
}


return require("config.utils").extendPlugins(plugins, "config.options.utils")
