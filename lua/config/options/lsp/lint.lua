return {
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "eslint" },
			markdown = { "vale" },
		}
	end
}

-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
-- 	callback = function()
-- 		lint.try_lint()
-- 	end,
-- })
