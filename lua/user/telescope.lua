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
    pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
    },
    extensions = {
        media_files = {
            -- filetypes whitelist
            -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
            filetypes = {"png", "webp", "jpg", "jpeg"},
            find_cmd = "rg" -- find command (defaults to `fd`)
        },
        file_browser = {
            -- theme = "ivy",
            -- require("telescope.themes").get_dropdown {
            --   previewer = false,
            --   -- even more opts
            -- },
            mappings = telescope_keymap.file_browser
        },
        ["ui-select"] = {require("telescope.themes").get_dropdown {
            previewer = false
            -- even more opts
        }}
    }
})

telescope.load_extension("ui-select")
telescope.load_extension("file_browser")
