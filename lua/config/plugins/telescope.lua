local plugins = {
	-- telescope
	config = {
		"nvim-telescope/telescope.nvim",
		lazy = false,
	},
	"nvim-telescope/telescope-ui-select.nvim",   -- telescope UI
	"nvim-telescope/telescope-file-browser.nvim", -- File Browser
	"nvim-telescope/telescope-media-files.nvim", -- displays media files (png, jpeg, etc) [Only works on linux]
}

return require("config.utils").extendPlugins(plugins, "config.options.telescope")
