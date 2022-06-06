local status_ok, lsp_signature = pcall(require, "lsp_signature")
if not status_ok then
	return
end

return {
	setup_signature = function()
		lsp_signature.setup({
			bind = true,
			handler_opts = {
				border = "rounded",
			},
		})
	end,
}
