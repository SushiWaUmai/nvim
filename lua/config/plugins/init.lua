return {
	"kyazdani42/nvim-tree.lua",   -- File Explorer
	"goolord/alpha-nvim",         -- Start Menu
	"akinsho/bufferline.nvim",    -- Tabs
	"nvim-lualine/lualine.nvim",  -- Status bar
	"akinsho/toggleterm.nvim",    -- Embedded terminal

	"norcalli/nvim-colorizer.lua", -- Hex Colorizer
	"lewis6991/gitsigns.nvim", -- Git Signs

	-- Indentation
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPost", "BufNewFile" },
		opts = {
			char = "│",
			filetype_exclude = { "help", "terminal", "alpha", "dashboard", "nvim-tree", "Trouble", "lazy" },
			show_trailing_blankline_indent = false,
			show_current_context = false,
			indentLine_enabled = 1,
			buftype_exclude = { "terminal" },
			show_first_indent_level = false,
		},
	},

	{
		"echasnovski/mini.indentscope",
		version = false, -- wait till new 0.7.0 release to put it back on semver
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			symbol = "│",
			options = { try_as_border = true },
		},
		init = function()
			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "help", "alpha", "dashboard", "nvim-tree", "Trouble", "lazy", "mason" },
				callback = function()
					vim.b.miniindentscope_disable = true
				end,
			})
		end,
		config = function(_, opts)
			require("mini.indentscope").setup(opts)
		end,
	},
}
