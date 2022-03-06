local keymap_opts = require("user.keymap.utils")

local bufkeymap = keymap_opts.bufkeymap
local opts = keymap_opts.opts

function _G.set_terminal_keymaps()
 bufkeymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
 bufkeymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
 bufkeymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
 bufkeymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
 bufkeymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
 bufkeymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end
