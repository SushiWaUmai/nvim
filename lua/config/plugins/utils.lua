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
	"nvim-lua/plenary.nvim",     -- Useful lua functions used in lots of plugins
	"nvim-lua/popup.nvim",       -- An implementation of the Popup API from vim in Neovim
	"ellisonleao/glow.nvim",     -- Markdown preview
	"gpanders/editorconfig.nvim", -- editor config
	"moll/vim-bbye",             -- Closing Tabs
	"wakatime/vim-wakatime",     -- Time Tracking
}


return require("config.utils").extendPlugins(plugins, "config.options.utils")
