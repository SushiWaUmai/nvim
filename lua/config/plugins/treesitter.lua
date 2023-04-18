local plugins = {
	-- Better Syntax Highlighting
	configs = {
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
	},
	-- Highlighting of other uses
	illuminate = {
		"rrethy/vim-illuminate",
		event = { "BufReadPre", "BufNewFile" },
	},
	{ "JoosepAlviste/nvim-ts-context-commentstring", lazy = true }, -- Contextual Commenting
	"nvim-treesitter/nvim-treesitter-context",                    -- Treesitter context utility
	"p00f/nvim-ts-rainbow",                                       -- rainbow parenthesis
	"windwp/nvim-ts-autotag",                                     -- autoclose or rename html tags
}

local result = {}
for key, value in pairs(plugins) do
	if type(key) == "string" then
		table.insert(result, vim.tbl_deep_extend("force", require("config.options.treesitter." .. key), value))
	else
		table.insert(result, value)
	end
end

return result
