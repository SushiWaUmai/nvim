local keymap_opts = require("user.keymap.utils")

local keymap = keymap_opts.keymap
local opts = keymap_opts.opts

keymap("n", "<A-g>", "<CMD>Gitsigns diffthis<CR>", opts)

