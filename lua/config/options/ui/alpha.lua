local fn = vim.fn

return {
	opts = function()
		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = {
			"  ███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗  ",
			"  ████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║  ",
			"  ██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║  ",
			"  ██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║  ",
			"  ██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║  ",
			"  ╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝  ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "Find file", ":Telescope find_files <CR>"),
			dashboard.button("t", "Find text", ":Telescope live_grep <CR>"),
			dashboard.button("b", "Browse Folder", ":NvimTreeToggle<CR>"),
			dashboard.button("c", "Config", ":e " .. fn.stdpath("config") .. "/init.lua <CR>"),
			dashboard.button("p", "Update Packages", ":Lazy <CR>"),
			dashboard.button("h", "Check Health", ":checkhealth <CR>"),
			dashboard.button("q", "Quit", ":qa<CR>"),
		}

		dashboard.section.footer.opts.hl = "Type"
		dashboard.section.header.opts.hl = "Include"
		dashboard.section.buttons.opts.hl = "Keyword"

		dashboard.opts.opts.noautocmd = true
		return dashboard
	end,
	config = function(_, dashboard)
		-- thanks to https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/ui.lua
		-- close Lazy and re-open when the dashboard is ready
		if vim.o.filetype == "lazy" then
			vim.cmd.close()
			vim.api.nvim_create_autocmd("User", {
				pattern = "AlphaReady",
				callback = function()
					require("lazy").show()
				end,
			})
		end

		require("alpha").setup(dashboard.opts)

		vim.api.nvim_create_autocmd("User", {
			pattern = "LazyVimStarted",
			callback = function()
				local stats = require("lazy").stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
				dashboard.section.footer.val = "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
				pcall(vim.cmd.AlphaRedraw)
			end,
		})
	end,
}
