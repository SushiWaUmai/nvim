local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	return
end

local cmp_keymap_status_ok, cmp_keymap = pcall(require, "config.immediate.keymap.cmp")
if not cmp_keymap_status_ok then
	return
end

local cmp_lsp_status_ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_lsp_status_ok then
	return
end

local luasnip_status_ok, luasnip = pcall(require, "luasnip")
if not luasnip_status_ok then
	return
end

local lspkind_status_ok, lspkind = pcall(require, "lspkind")
if not lspkind_status_ok then
	return
end

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp_keymap,
	sources = cmp.config.sources({
		{ name = "copilot" },
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
	}),
	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol",
			maxwidth = 50,

			-- The function below will be called before any actual modifications from lspkind
			-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
			before = function(entry, vim_item)
				return vim_item
			end,
		}),
	},
})

-- for searching
cmp.setup.cmdline("/", {
	sources = {
		{ name = "buffer" },
	},
})

-- for vim commands
cmp.setup.cmdline(":", {
	completion = {
		autocomplete = false,
	},
	sources = cmp.config.sources({
		{ name = "path" },
	}),
})

-- Setup lspconfig.
local capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())

return capabilities
