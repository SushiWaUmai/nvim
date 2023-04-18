local navic_status_ok, navic = pcall(require, "nvim-navic")
if not navic_status_ok then
	return
end

return {
	opts = {
		sections = {
			lualine_c = {
				{ navic.get_location, cond = navic.is_available },
			},
		},
	}
}
