-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
local bufkeymap = vim.api.nvim_buf_set_keymap
local bufoption = vim.api.nvim_buf_set_option

return {
    opts = opts,
    keymap = keymap,
    bufkeymap = bufkeymap,
    bufoption = bufoption,
}