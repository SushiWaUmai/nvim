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
	"nvim-lua/plenary.nvim", -- Useful lua functions used in lots of plugins
	"nvim-lua/popup.nvim",  -- An implementation of the Popup API from vim in Neovim
	"ellisonleao/glow.nvim", -- Markdown preview
	"moll/vim-bbye",        -- Closing Tabs
	"wakatime/vim-wakatime", -- Time Tracking
	"b0o/SchemaStore.nvim", -- json schemas
}

local result = {}
for key, value in pairs(plugins) do
	if type(key) == "string" then
		table.insert(result, vim.tbl_deep_extend("force", require("config.options.utils." .. key), value))
	else
		table.insert(result, value)
	end
end

return result
