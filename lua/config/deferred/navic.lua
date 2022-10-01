local navic_status_ok, navic = pcall(require, "nvim-navic")
if not navic_status_ok then
	return
end

local icons = require("config.icons")

navic.setup({
	icons = icons.code_context,
	separator = " | ",
	depth_limit = 0,
	depth_limit_indicator = "..",
})

