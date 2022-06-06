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
})
