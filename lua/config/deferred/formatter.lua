local status_ok, formatter = pcall(require, "formatter")
if not status_ok then
	return
end

formatter.setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		java = {
			require("formatter.defaults.clangformat"),
		},
		javascript = {
			require("formatter.filetypes.typescript").prettier,
		},
		javascriptreact = {
			require("formatter.filetypes.typescript").prettier,
		},
		typescript = {
			require("formatter.filetypes.typescript").prettier,
		},
		typescriptreact = {
			require("formatter.filetypes.typescript").prettier,
		},
		rust = {
			require("formatter.filetypes.rust").rustfmt,
		},
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
