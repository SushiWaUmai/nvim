local lualine_status_ok, lualine = pcall(require, "lualine")
if not lualine_status_ok then
	return
end


local gps_status_ok, gps  = pcall(require, "nvim-gps")
if not gps_status_ok then
	return
end

lualine.setup({
	sections = {
		lualine_c = {
			{ gps.get_location, cond = gps.is_available },
		},
	},
})
