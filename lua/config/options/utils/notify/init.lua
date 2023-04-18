local icons = require("config.icons")

return {
	opts = {
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
	},
	config = function(_, opts)
		local notify = require("notify")
		local stages = require("config.options.utils.notify.stages")
		opts = vim.tbl_deep_extend("force", { stages = stages }, opts);

		notify.setup(opts)
		vim.notify = notify
	end
}
