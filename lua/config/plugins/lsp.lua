local plugins = {
	-- lsp status line
	navic = {
		"SmiteshP/nvim-navic",
		event = { "BufReadPre", "BufNewFile" },
	},
	-- lsp installer
	mason = {
		"williamboman/mason.nvim",
	},
	-- lsp progress bar
	fidget = {
		"j-hui/fidget.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},
	-- linting
	lint = {
		"mfussenegger/nvim-lint",
		lazy = true
	},
	-- rust cargo crates management
	crates = {
		"saecki/crates.nvim",
		lazy = true
	},
	-- lsp status
	status = {
		"nvim-lua/lsp-status.nvim",
		lazy = true
	},
	"hrsh7th/cmp-nvim-lsp",             -- lsp with cmp
	"hrsh7th/cmp-buffer",               -- cmp with bufferline
	"hrsh7th/cmp-path",                 -- cmp with path
	"hrsh7th/cmp-cmdline",              -- cmp in terminal
	"hrsh7th/nvim-cmp",                 -- cmp
	"williamboman/mason-lspconfig.nvim", -- mason lsp config
	"onsails/lspkind-nvim",             -- lspkind
	"ray-x/lsp_signature.nvim",         -- Lsp signature
	"neovim/nvim-lspconfig",            -- lsp config
	"lvimuser/lsp-inlayhints.nvim",     -- lsp inlay hints
	"L3MON4D3/LuaSnip",                 -- LuaSnip with neovim
	"saadparwaiz1/cmp_luasnip",         -- LuaSnip with cmp
	"mfussenegger/nvim-dap",            -- dap
	"rcarriga/nvim-dap-ui",             -- dap-ui
}

local result = {}
for key, value in pairs(plugins) do
	if type(key) == "string" then
		table.insert(result, vim.tbl_deep_extend("force", require("config.options.lsp." .. key), value))
	else
		table.insert(result, value)
	end
end

return result
