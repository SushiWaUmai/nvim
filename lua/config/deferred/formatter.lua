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
			function()
				return {
					exe = "google-java-format",
					args = { "-a -" },
					stdin = true,
				}
			end,
		},
		javascript = {
			require("formatter.defaults.prettier"),
		},
		javascriptreact = {
			require("formatter.defaults.prettier"),
		},
		typescript = {
			require("formatter.defaults.prettier"),
		},
		typescriptreact = {
			require("formatter.defaults.prettier"),
		},
		html = {
			require("formatter.defaults.prettier"),
		},
		json = {
			require("formatter.defaults.prettier"),
		},
		rust = {
			function()
				return {
					exe = "rustfmt",
					args = { "--edition 2021" },
					stdin = true,
				}
			end,
			-- require("formatter.filetypes.rust").rustfmt, -- This does not implement rustfmt with async fn
		},
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
