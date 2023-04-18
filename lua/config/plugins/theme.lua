local plugins = {
	-- transparent
	transparent = {
		"xiyaowong/nvim-transparent",
	},
	-- vscode color theme
	vscode = {
		"Mofiqul/vscode.nvim",
	},
	-- onedarkpro color theme
	onedarkpro = {
		"olimorris/onedarkpro.nvim",
	},
	-- nord color theme
	nord = {
		"nordtheme/vim",
		lazy = false,
		priority = 1000,
	},
	"cocopon/iceberg.vim", -- iceberg color theme
}

local result = {}
for key, value in pairs(plugins) do
	if type(key) == "string" then
		table.insert(result, vim.tbl_deep_extend("force", require("config.options.theme." .. key), value))
	else
		table.insert(result, value)
	end
end

return result
