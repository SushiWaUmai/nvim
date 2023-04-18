return {
	opts = {
		delay = 120,
		filetypes_denylist = {
			"NvimTree",
			"alpha",
			"toggleterm",
			"TelescopePrompt",
		},
	},
	config = function(_, opts)
		require("illuminate").configure(opts)

		vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual" })
		vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual" })
		vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual" })
	end,
}
