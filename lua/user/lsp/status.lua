local status_ok, lspstatus = pcall(require, "lsp-status")
if not status_ok then
	return
end

lspstatus.status()
lspstatus.register_progress()
