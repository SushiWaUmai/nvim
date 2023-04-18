local status_ok, actions = pcall(require, "telescope.actions")
if not status_ok then
	return
end

local keymap_opts = require("config.keymap.utils")

local keymap = keymap_opts.keymap
local opts = keymap_opts.opts

keymap(
	"n",
	"<C-p>",
	"<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
	opts
)

keymap("n", "<C-f>", "<cmd>Telescope live_grep<cr>", opts)

return {
	defaults = {
		i = {
			["<C-n>"] = actions.cycle_history_next,
			["<C-p>"] = actions.cycle_history_prev,

			["<C-j>"] = actions.move_selection_next,
			["<C-k>"] = actions.move_selection_previous,

			["<C-c>"] = actions.close,

			["<Down>"] = actions.move_selection_next,
			["<Up>"] = actions.move_selection_previous,

			["<CR>"] = actions.select_default,
			["<C-x>"] = actions.select_horizontal,
			["<C-v>"] = actions.select_vertical,
			["<C-t>"] = actions.select_tab,

			["<C-u>"] = actions.preview_scrolling_up,
			["<C-d>"] = actions.preview_scrolling_down,

			["<PageUp>"] = actions.results_scrolling_up,
			["<PageDown>"] = actions.results_scrolling_down,

			["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
			["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
			["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
			["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
			["<C-l>"] = actions.complete_tag,
		},

		n = {
			["<esc>"] = actions.close,
			["<CR>"] = actions.select_default,
			["<C-x>"] = actions.select_horizontal,
			["<C-v>"] = actions.select_vertical,
			["<C-t>"] = actions.select_tab,

			["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
			["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
			["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
			["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

			["j"] = actions.move_selection_next,
			["k"] = actions.move_selection_previous,
			["H"] = actions.move_to_top,
			["M"] = actions.move_to_middle,
			["L"] = actions.move_to_bottom,

			["<Down>"] = actions.move_selection_next,
			["<Up>"] = actions.move_selection_previous,
			["gg"] = actions.move_to_top,
			["G"] = actions.move_to_bottom,

			["<C-u>"] = actions.preview_scrolling_up,
			["<C-d>"] = actions.preview_scrolling_down,

			["<PageUp>"] = actions.results_scrolling_up,
			["<PageDown>"] = actions.results_scrolling_down,
		},
	},
	file_browser = {
		n = {},
		i = {},
	},
}
