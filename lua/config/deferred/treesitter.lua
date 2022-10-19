local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

local ft_to_parser = require("nvim-treesitter.parsers").filetype_to_parsername
ft_to_parser.motoko = "typescript"

configs.setup({
	sync_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
		use_languagetree = true,
	},
	autotag = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
		colors = {
			"#BF616A",
			"#D08770",
			"#EBCB8B",
			"#A3BE8C",
			"#B48EAD",
		},
	},
})
