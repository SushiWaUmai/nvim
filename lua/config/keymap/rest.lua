local opts = {
	force = true
}

vim.api.nvim_create_user_command("RestNvim", function()
	require("rest-nvim").run()
end, opts)

vim.api.nvim_create_user_command("RestNvimPreview", function()
	require("rest-nvim").run(true)
end, opts)

vim.api.nvim_create_user_command("RestNvimLast", function()
	require("rest-nvim").last()
end, opts)
