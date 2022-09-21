local status_ok, notify = pcall(require, "notify")
if not status_ok then
	return
end

local icons = require("config.icons")

notify.setup({
	stages = "fade_in_slide_out",
	on_open = nil,
	on_close = nil,
	render = "default",
	timeout = 175,
	background_colour = "Normal",
	minimum_width = 10,
	icons = {
		ERROR = icons.diagnostics.Error,
		WARN = icons.diagnostics.Warning,
		INFO = icons.diagnostics.Information,
		DEBUG = icons.diagnostics.Debug,
		TRACE = icons.diagnostics.Trace,
	},
})

vim.notify = notify
