return {
	config = function()
		local lualine = require("lualine")
		local navic = require("nvim-navic")

		lualine.setup({
			sections = {
				lualine_c = {
					{
						function()
							return navic.get_location()
						end
						,
						cond = navic.is_available
					},
				},
			},
		})
	end
}
