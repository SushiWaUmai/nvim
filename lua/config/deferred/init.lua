local augroup = vim.api.nvim_create_augroup("defer", { clear = true })

vim.api.nvim_create_autocmd("VimEnter", {
	group = augroup,
	callback = function()
		vim.defer_fn(function()
			require("config.deferred.lsp")
			require("config.deferred.dap")
			require("config.deferred.treesitter")
			require("config.deferred.copilot")
			require("config.deferred.telescope")
			require("config.deferred.gitsigns")
		end, 100)
	end,
})
