local plugins = {
	"mfussenegger/nvim-dap", -- dap
	-- dapui
	dapui = {
		"rcarriga/nvim-dap-ui",
		event = { "BufReadPre", "BufNewFile" },
	}
}

return require("config.utils").extendPlugins(plugins, "config.options.dap")
