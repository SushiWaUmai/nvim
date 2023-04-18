return {
	config = function()
		local cmp = require("cmp")
		local cmp_keymap = require("config.keymap.cmp")
		local cmp_lsp = require("cmp_nvim_lsp")
		local luasnip = require("luasnip")
		local lspkind = require("lspkind")

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp_keymap,
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "path" },
				{ name = "luasnip" },
				{ name = "crates" },
			}, {
				{ name = "buffer" },
			}),
			formatting = {
				format = lspkind.cmp_format({
					mode = "symbol",
					maxwidth = 50,
					-- The function below will be called before any actual modifications from lspkind
					-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
					before = function(_, vim_item)
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
		local capabilities = cmp_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
		return capabilities
	end
}
