local lualine_status_ok, lualine = pcall(require, "lualine")
if not lualine_status_ok then
	return
end

local navic_status_ok, navic = pcall(require, "nvim-navic")
if not navic_status_ok then
	return
end

lualine.setup({
	sections = {
		lualine_c = {
			{ navic.get_location, cond = navic.is_available },
		},
	},
})
