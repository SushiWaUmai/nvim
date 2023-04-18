local icons = require("config.icons")

return {
	init = function()
		vim.cmd([[set nosplitright]])
	end,
	opts = {
		disable_netrw = true,
		hijack_netrw = true,
		open_on_tab = false,
		hijack_cursor = false,
		update_cwd = true,
		diagnostics = {
			enable = false,
			icons = {
				hint = icons.diagnostics.Hint,
				info = icons.diagnostics.Information,
				warning = icons.diagnostics.Warning,
				error = icons.diagnostics.Error,
			},
		},
		renderer = {
			icons = {
				glyphs = {
					default = icons.fs.file.Default,
					symlink = icons.fs.file.Symlink,
					git = {
						unstaged = icons.git.Modify,
						staged = icons.git.Staged,
						unmerged = icons.git.Unmerged,
						renamed = icons.git.Rename,
						deleted = icons.git.Remove,
						untracked = icons.git.Untracked,
						ignored = icons.git.Ignore,
					},
					folder = {
						default = icons.fs.dir.Closed,
						open = icons.fs.dir.Open,
						empty = icons.fs.dir.Empty,
						empty_open = icons.fs.dir.EmptyOpen,
						symlink = icons.fs.dir.Symlink,
					},
				},
			},
		},
		update_focused_file = {
			enable = true,
			update_cwd = true,
			ignore_list = {},
		},
		git = {
			enable = true,
			ignore = true,
			timeout = 500,
		},
		view = {
			width = 30,
			hide_root_folder = false,
			side = "right",
			preserve_window_proportions = false,
			mappings = {
				custom_only = false,
			},
			number = false,
			relativenumber = false,
		},
		actions = {
			open_file = {
				resize_window = true,
			},
		},
	}
}
