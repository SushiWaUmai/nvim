return {
	opts = {
		symbol = "│",
		options = { try_as_border = true },
	},
	init = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "help", "Alpha", "dashboard", "nvim-tree", "Trouble", "lazy", "mason" },
			callback = function()
				vim.b.miniindentscope_disable = true
			end,
		})
	end,
	config = function(_, opts)
		require("mini.indentscope").setup(opts)
	end,
}
