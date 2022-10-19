local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd("packadd packer.nvim")
end

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({
				border = "rounded",
			})
		end,
	},
})

return packer.startup(function()
	use("wbthomason/packer.nvim") -- Package Manager

	use("kyazdani42/nvim-web-devicons") -- Icons

	use("nvim-lua/plenary.nvim") -- Useful lua functions used in lots of plugins
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("kyazdani42/nvim-tree.lua") -- File Explorer
	use("goolord/alpha-nvim") -- Start Menu
	use("akinsho/bufferline.nvim") -- Tabs
	use("moll/vim-bbye") -- Closing Tabs
	use("rcarriga/nvim-notify") -- Notify
	use("ellisonleao/glow.nvim") -- Markdown preview
	use("norcalli/nvim-colorizer.lua") -- Hex Colorizer
	use("nacro90/numb.nvim") -- peek lines

	use("nvim-treesitter/nvim-treesitter") -- Better Syntax Highlighting
	use("nvim-treesitter/nvim-treesitter-context") -- Treesitter context utility
	use("p00f/nvim-ts-rainbow") -- rainbow parenthesis
	use("JoosepAlviste/nvim-ts-context-commentstring") -- Contextual Commenting
	use("windwp/nvim-ts-autotag") -- autoclose or rename html tags
	use("rrethy/vim-illuminate") -- Highlighting of other uses

	use("akinsho/toggleterm.nvim") -- Embedded terminal
	use("nvim-lualine/lualine.nvim") -- Status bar
	use("lukas-reineke/indent-blankline.nvim") -- Indentation
	use("numToStr/Comment.nvim") -- Commenting
	use("lewis6991/gitsigns.nvim") -- Git Signs

	use("SmiteshP/nvim-navic") -- lsp status line
	use("hrsh7th/cmp-nvim-lsp") -- lsp with cmp
	use("hrsh7th/cmp-buffer") -- cmp with bufferline
	use("hrsh7th/cmp-path") -- cmp with path
	use("hrsh7th/cmp-cmdline") -- cmp in terminal
	use("hrsh7th/nvim-cmp") -- cmp
	use("williamboman/mason.nvim") -- lsp installer
	use("williamboman/mason-lspconfig.nvim") -- mason lsp config
	use("onsails/lspkind-nvim") -- lspkind
	use("nvim-lua/lsp-status.nvim") -- lsp status
	use("ray-x/lsp_signature.nvim") -- Lsp signature
	use("neovim/nvim-lspconfig") -- lsp config
	use("lvimuser/lsp-inlayhints.nvim") -- lsp inlay hints
	use("j-hui/fidget.nvim") -- lsp progress bar
	use("mfussenegger/nvim-lint") -- linting

	use("L3MON4D3/LuaSnip") -- LuaSnip with neovim
	use("saadparwaiz1/cmp_luasnip") -- LuaSnip with cmp

	use("mfussenegger/nvim-dap") -- dap
	use("rcarriga/nvim-dap-ui") -- dap-ui

	use("mhartington/formatter.nvim") -- formatter

	-- Telescope
	use("nvim-telescope/telescope.nvim") -- telescope
	use("nvim-telescope/telescope-ui-select.nvim") -- telescope UI
	use("nvim-telescope/telescope-file-browser.nvim") -- File Browser
	use("nvim-telescope/telescope-media-files.nvim") -- displays media files (png, jpeg, etc) [Only works on linux]

	use("b0o/SchemaStore.nvim") -- json schemas
	use("windwp/nvim-autopairs") -- autopairs eg: ( ) { }
	use("github/copilot.vim") -- github copilot

	use("wakatime/vim-wakatime") -- Time Tracking

	use("xiyaowong/nvim-transparent") -- transparent

	-- Color Scheme
	use("Mofiqul/vscode.nvim") -- vscode color theme
	use("olimorris/onedarkpro.nvim") -- onedarkpro color theme
	use("cocopon/iceberg.vim") -- iceberg color theme
	use("arcticicestudio/nord-vim") -- nord color theme

	if PACKER_BOOTSTRAP then
		packer.sync()
	end
end)
