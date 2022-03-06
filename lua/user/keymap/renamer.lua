local mapping_utils_status_ok, mappings_utils = pcall(require, "renamer.mappings.utils");
if not mapping_utils_status_ok then
    return
end

local keymap_opts = require("user.keymap.utils")

local keymap = keymap_opts.keymap
local opts = keymap_opts.opts

keymap(
	"i", "<F2>",
	"<cmd>lua require('renamer').rename({empty = true})<cr>",
    opts
)

keymap(
	"n", "<F2>",
	"<cmd>lua require('renamer').rename({empty = true})<cr>",
    opts
)

return {
    ["<C-i>"] = mappings_utils.set_cursor_to_start,
    ["<C-a>"] = mappings_utils.set_cursor_to_end,
    ["<C-e>"] = mappings_utils.set_cursor_to_word_end,
    ["<C-b>"] = mappings_utils.set_cursor_to_word_start,
    ["<C-c>"] = mappings_utils.clear_line,
    ["<C-u>"] = mappings_utils.undo,
    ["<C-r>"] = mappings_utils.redo
}