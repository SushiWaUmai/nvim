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
	relativenumber = false,
	signcolumn = "yes",
	wrap = false,
	guifont = "monospace:h17",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.shortmess:append("c")

vim.cmd([[set iskeyword+=-]])

vim.cmd([[set shiftwidth=2]])
vim.cmd([[set tabstop=2]])
