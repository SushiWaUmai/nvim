return {
	config = function()
		local lspstatus = require("lsp-status")
		lspstatus.status()
		lspstatus.register_progress()
	end
}
