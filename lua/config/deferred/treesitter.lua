local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

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
			"#D08770",
			"#EBCB8B",
			"#B48EAD",
		},
	},
})
