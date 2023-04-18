return {
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = { "vim", "use" },
			},
			telemetry = {
				enable = false,
			},
		},
	},
}
