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

local packer = require("packer")

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

	use("nvim-treesitter/nvim-treesitter") -- Better Syntax Highlighting
	use("JoosepAlviste/nvim-ts-context-commentstring") -- Contextual Commenting
	use("romgrk/nvim-treesitter-context") -- Treesitter context utility
	use("SmiteshP/nvim-gps") -- GPS

	use("akinsho/toggleterm.nvim") -- Embedded terminal
	use("nvim-lualine/lualine.nvim") -- Status bar
	use("lukas-reineke/indent-blankline.nvim") -- Indentation
	use("numToStr/Comment.nvim") -- Commenting
	use("lewis6991/gitsigns.nvim") -- Git Signs

	use("neovim/nvim-lspconfig") -- lsp config
  use("onsails/lspkind-nvim") -- lspkind
  use("nvim-lua/lsp-status.nvim") -- lsp status
	use("hrsh7th/cmp-nvim-lsp") -- lsp with cmp
	use("hrsh7th/cmp-buffer") -- cmp with bufferline
	use("hrsh7th/cmp-path") -- cmp with path
	use("hrsh7th/cmp-cmdline") -- cmp in terminal
	use("hrsh7th/nvim-cmp") -- cmp
	use("ray-x/lsp_signature.nvim") -- Lsp signature

	use("L3MON4D3/LuaSnip") -- LuaSnip with neovim
	use("saadparwaiz1/cmp_luasnip") -- LuaSnip with cmp

	use("williamboman/nvim-lsp-installer") -- lsp installer
	use("tamago324/nlsp-settings.nvim") -- lsp settings per project

	use("mfussenegger/nvim-dap") -- dap
	use("rcarriga/nvim-dap-ui") -- dap-ui

	use("sbdchd/neoformat") -- formatting

	-- Telescope
	use("nvim-telescope/telescope.nvim") -- telescope
	use("nvim-telescope/telescope-ui-select.nvim") -- telescope UI
	use("nvim-telescope/telescope-file-browser.nvim") -- File Browser
	use("nvim-telescope/telescope-media-files.nvim") -- displays media files (png, jpeg, etc) [Only works on linux]

	use("b0o/SchemaStore.nvim") -- json schemas
	use("windwp/nvim-autopairs") -- autopairs eg: ( ) { }
	use("github/copilot.vim") -- github copilot
	use("wakatime/vim-wakatime") -- Time Tracking

	-- Color Scheme
	use("Mofiqul/vscode.nvim") -- vscode color theme
	use("olimorris/onedarkpro.nvim") -- onedarkpro color theme

	if PACKER_BOOTSTRAP then
		packer.sync()
	end
end)
