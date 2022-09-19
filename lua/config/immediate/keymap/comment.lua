local keymap_opts = require("config.immediate.keymap.utils")

local keymap = keymap_opts.keymap
local opts = keymap_opts.opts

-- Comment out lines
keymap("v", "<C-_>", "<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)
keymap("x", "<C-_>", "<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)
keymap("n", "<C-_>", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
