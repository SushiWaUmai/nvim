return {
	opts = {
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
			},
			signature = {
				enabled = false
			}
		},
		presets = {
			bottom_search = true,
			command_palette = true,
			long_message_to_split = true,
		},
	}
}
