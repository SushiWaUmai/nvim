local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

local telescope_keymap = require("config.immediate.keymap.telescope")

local icons = require("config.icons")

telescope.setup({
	defaults = {
		prompt_prefix = icons.ui.Search .. " ",
		selection_caret = icons.ui.SelectionCarret .. " ",
		path_display = { "smart" },
		mappings = telescope_keymap.defaults,
	},
	pickers = {},
	extensions = {
		media_files = {
			filetypes = { "png", "webp", "jpg", "jpeg" },
			find_cmd = "rg",
		},
		file_browser = {
			mappings = telescope_keymap.file_browser,
		},
		["ui-select"] = { require("telescope.themes").get_dropdown({
			previewer = false,
		}) },
	},
})

telescope.load_extension("ui-select")
telescope.load_extension("file_browser")
telescope.load_extension("media_files")
