local plugins = {
	-- lsp status line
	navic = {
		"SmiteshP/nvim-navic",
		dependencies = {
			"neovim/nvim-lspconfig",
		}
	},
	navbuddy = {
		"SmiteshP/nvim-navbuddy",
		dependencies = {
			"SmiteshP/nvim-navic",
			"MunifTanjim/nui.nvim"
		},
	},
	-- lsp installer
	mason = {
		"williamboman/mason.nvim",
	},
	-- lsp progress bar
	fidget = {
		"j-hui/fidget.nvim",
	},
	-- linting
	lint = {
		"mfussenegger/nvim-lint",
	},
	-- rust cargo crates management
	crates = {
		"saecki/crates.nvim",
	},
	-- lsp status
	status = {
		"nvim-lua/lsp-status.nvim",
	},
	-- mason lsp config
	masonlspconfig = {
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		}
	},
	-- lsp inlay hints
	inlayhints = {
		"lvimuser/lsp-inlayhints.nvim",
	},
	-- lsp config
	config = {
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"nvim-lua/lsp-status.nvim",
			"j-hui/fidget.nvim",
			"williamboman/mason-lspconfig.nvim",
			"lvimuser/lsp-inlayhints.nvim",
			"b0o/SchemaStore.nvim",
		}
	},
	-- Lsp signature
	signature = {
		"ray-x/lsp_signature.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"neovim/nvim-lspconfig",
		}
	},
	trouble = {
		"folke/trouble.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
	},
	-- cmp
	cmp = {
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",  -- lsp with cmp
			"hrsh7th/cmp-buffer",    -- cmp with bufferline
			"hrsh7th/cmp-path",      -- cmp with path
			"hrsh7th/cmp-cmdline",   -- cmp in terminal
			"saadparwaiz1/cmp_luasnip", -- LuaSnip with cmp
		}
	},
	"hrsh7th/cmp-nvim-lsp",    -- lsp with cmp
	"hrsh7th/cmp-buffer",      -- cmp with bufferline
	"hrsh7th/cmp-path",        -- cmp with path
	"hrsh7th/cmp-cmdline",     -- cmp in terminal
	"saadparwaiz1/cmp_luasnip", -- LuaSnip with cmp
	"L3MON4D3/LuaSnip",        -- LuaSnip with neovim
	"onsails/lspkind-nvim",    -- lspkind
	"b0o/SchemaStore.nvim",    -- json schemas
}

return require("config.utils").extendPlugins(plugins, "config.options.lsp")
