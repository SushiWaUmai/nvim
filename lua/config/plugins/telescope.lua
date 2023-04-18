local plugins = {
	"nvim-telescope/telescope.nvim",             -- telescope
	"nvim-telescope/telescope-ui-select.nvim",   -- telescope UI
	"nvim-telescope/telescope-file-browser.nvim", -- File Browser
	"nvim-telescope/telescope-media-files.nvim", -- displays media files (png, jpeg, etc) [Only works on linux]
}

local result = {}
for key, value in pairs(plugins) do
	if type(key) == "string" then
		table.insert(result, vim.tbl_deep_extend("force", require("config.options.telescope." .. key), value))
	else
		table.insert(result, value)
	end
end

return result
