local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end

local telescope_keymap = require("user.keymap.telescope")

telescope.load_extension("media_files")
local icons = require("user.icons")

telescope.setup({
    defaults = {
        prompt_prefix = icons.ui.Search .. " ",
        selection_caret = icons.ui.SelectionCarret .. " ",
        path_display = {"smart"},
        mappings = telescope_keymap.defaults
    },
    pickers = {},
    extensions = {
        ["media_files"] = {
            -- use the default media_files configuration
        },
        ["file_browser"] = {
            mappings = telescope_keymap.file_browser
        },
        ["ui-select"] = {require("telescope.themes").get_dropdown {
            previewer = false
        }}
    }
})

telescope.load_extension("ui-select")
telescope.load_extension("file_browser")
