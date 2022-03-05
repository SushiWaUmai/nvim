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
keymap("n", "<C-w>", "<cmd>bdelete!<CR>", opts)

-- Save files
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("i", "<C-s>", "<esc>:w<CR>", opts)

keymap("n", "<C-q>", ":qa<CR>", opts)

-- Move lines around using visual mode
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
