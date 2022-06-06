local icons = require("config.icons")

local signs = {
	{
		name = "DiagnosticSignError",
		text = " " .. icons.diagnostics.Error,
	},
	{
		name = "DiagnosticSignWarn",
		text = " " .. icons.diagnostics.Warning,
	},
	{
		name = "DiagnosticSignHint",
		text = " " .. icons.diagnostics.Hint,
	},
	{
		name = "DiagnosticSignInfo",
		text = " " .. icons.diagnostics.Information,
	},
}

for _, sign in ipairs(signs) do
	vim.fn.sign_define(sign.name, {
		texthl = sign.name,
		text = sign.text,
		numhl = "",
	})
end

local config = {
	-- disable virtual text
	virtual_text = true,
	-- show signs
	signs = {
		active = signs,
	},
	update_in_insert = true,
	underline = true,
	severity_sort = true,
}

vim.diagnostic.config(config)
