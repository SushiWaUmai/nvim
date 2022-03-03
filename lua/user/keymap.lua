local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Navigate windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Naviagate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Basic Shortcuts
keymap("n", "<C-b>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<C-n>", ":ene <BAR> startinsert <CR>", opts)
keymap("n", "<C-w>", ":q<CR>", opts)

-- Save files
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("i", "<C-s>", "<esc>:w<CR>", opts)

keymap("n", "<C-q>", ":qa<CR>", opts)
