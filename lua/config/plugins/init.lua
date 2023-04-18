return {
	"norcalli/nvim-colorizer.lua", -- Hex Colorizer
	"lewis6991/gitsigns.nvim",    -- Git Signs

	-- Indentation
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPost", "BufNewFile" },
		unpack(require("config.options.blankline"))
	},

	{
		"echasnovski/mini.indentscope",
		version = false, -- wait till new 0.7.0 release to put it back on semver
		event = { "BufReadPre", "BufNewFile" },
		unpack(require("config.options.indentscope"))
	},
}
