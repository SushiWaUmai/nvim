return {
	extendPlugins = function(plugins, options)
		local result = {}
		for key, value in pairs(plugins) do
			if type(key) == "string" then
				local status_ok, config = pcall(require, options .. "." .. key)
				if not status_ok then
					vim.notify("Could not import " .. options .. "." .. key, "error")
					break
				end

				table.insert(result, vim.tbl_deep_extend("force", config, value))
			else
				table.insert(result, value)
			end
		end

		return result
	end

}
