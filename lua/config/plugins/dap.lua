local plugins = {
	{
		"mfussenegger/nvim-dap",
		event = { "BufReadPre", "BufNewFile" },
	}, -- dap
	-- dapui
	dapui = {
		"rcarriga/nvim-dap-ui",
		event = { "BufReadPre", "BufNewFile" },
	}
}

return require("config.utils").extendPlugins(plugins, "config.options.dap")
