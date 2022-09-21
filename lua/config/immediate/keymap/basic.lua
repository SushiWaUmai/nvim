local keymap_opts = require("config.immediate.keymap.utils")

local keymap = keymap_opts.keymap
local opts = keymap_opts.opts

-- use ESC to turn off search highlighting
keymap("n", "<Esc>", "<cmd> :noh <CR>", opts)

-- move cursor within insert mode
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-e>", "<End>", opts)
keymap("i", "<C-l>", "<Right>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-a>", "<ESC>^i", opts)

-- Navigate windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Naviagate buffers
keymap("n", "K", ":bnext<CR>", opts)
keymap("n", "J", ":bprevious<CR>", opts)

-- Basic Shortcuts
keymap("n", "<C-b>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<C-n>", ":ene <BAR> startinsert <CR>", opts)
keymap("n", "<C-w>", "<cmd>Bdelete!<CR>", opts)

-- Save files
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("i", "<C-s>", "<esc>:w<CR>^i", opts)

-- Undo
keymap("n", "<C-z>", "u", opts)
keymap("i", "<C-z>", "<esc>u", opts)

-- Close
keymap("n", "<C-q>", ":qa<CR>", opts)

-- Move lines around using visual mode
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Resize with arrows
keymap("n", "<A-Up>", ":resize -2<CR>", opts)
keymap("n", "<A-Down>", ":resize +2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)
