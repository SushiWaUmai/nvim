return {
	"kyazdani42/nvim-tree.lua", -- File Explorer
	"goolord/alpha-nvim",       -- Start Menu
	"akinsho/bufferline.nvim",  -- Tabs
	"nvim-lualine/lualine.nvim", -- Status bar
	"akinsho/toggleterm.nvim",  -- Embedded terminal

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
				},
				signature = {
					enabled = false
				}
			},
			presets = {
				bottom_search = true,
				command_palette = true,
				long_message_to_split = true,
			},
		},
	},

	-- Icons
	{ "kyazdani42/nvim-web-devicons", lazy = true },

	-- ui components
	{ "MunifTanjim/nui.nvim",         lazy = true },
}
