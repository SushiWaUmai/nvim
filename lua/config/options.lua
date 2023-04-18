local options = {
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 2,
	conceallevel = 0,
	colorcolumn = "120",
	fileencoding = "utf-8",
	ignorecase = true,
	mouse = "a",
	pumheight = 10,
	showmode = true,
	showtabline = 2,
	smartcase = true,
	smartindent = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	termguicolors = true,
	timeoutlen = 100,
	undofile = true,
	updatetime = 300,
	writebackup = false,
	expandtab = true,
	cursorline = true,
	number = true,
	relativenumber = true,
	shiftwidth = 2,
	tabstop = 2,
	signcolumn = "yes",
	wrap = false,
	guifont = "MesloLGS Nerd Font Mono:h12",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.shortmess:append("c")
vim.cmd([[set iskeyword+=-]])
vim.cmd([[set autoindent]])
vim.cmd([[set noexpandtab]])
