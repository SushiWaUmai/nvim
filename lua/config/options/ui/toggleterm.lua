return {
	opts = {
		size = 20,
		open_mapping = require("config.keymap.toggleterm").open_mapping,
		hide_numbers = true,
		shade_filetypes = {},
		shade_terminals = true,
		start_in_insert = true,
		insert_mappings = true,
		persist_size = true,
		direction = "horizontal",
		close_on_exit = true,
		shell = vim.o.shell,
	}
}
