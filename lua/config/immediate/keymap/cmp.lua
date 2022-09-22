local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	return
end

local mapping = {
	["<C-b>"] = cmp.mapping.scroll_docs(-4),
	["<C-f>"] = cmp.mapping.scroll_docs(4),
	["<C-Space>"] = cmp.mapping.complete(),
	["<C-e>"] = cmp.mapping.abort(),
	["<Tab>"] = cmp.mapping.confirm({ select = true }),
	["<Down>"] = cmp.mapping(function(fallback)
		if vim.fn.wildmenumode() == 1 then
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Right>", true, true, true), "n", true)
		elseif cmp.visible() then
			cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
		else
			fallback()
		end
	end, {
		"i",
		"s",
		"c",
	}),
	["<Up>"] = cmp.mapping(function(fallback)
		if vim.fn.wildmenumode() == 1 then
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Left>", true, true, true), "n", true)
		elseif cmp.visible() then
			cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
		else
			fallback()
		end
	end, {
		"i",
		"s",
		"c",
	}),
}

return mapping
