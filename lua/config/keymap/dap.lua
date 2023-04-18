local keymap_opts = require("config.keymap.utils")

local keymap = keymap_opts.keymap
local opts = keymap_opts.opts

-- DAP
keymap("n", "<A-r>", "<cmd>lua require('dap').continue()<CR>", opts)
keymap("n", "<F10>", "<cmd>lua require('dap').step_over()<CR>", opts)
keymap("n", "<A-i>", "<cmd>lua require('dap').step_into()<CR>", opts)
keymap("n", "<A-o>", "<cmd>lua require('dap').step_out()<CR>", opts)
keymap("n", "<A-b>", "<cmd>lua require('dap').toggle_breakpoint()<CR>", opts)
