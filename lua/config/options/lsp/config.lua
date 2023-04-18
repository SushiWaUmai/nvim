return {
	config = function()
		local icons = require("config.icons")

		local signs = {
			{
				name = "DiagnosticSignError",
				text = " " .. icons.diagnostics.Error,
			},
			{
				name = "DiagnosticSignWarn",
				text = " " .. icons.diagnostics.Warning,
			},
			{
				name = "DiagnosticSignHint",
				text = " " .. icons.diagnostics.Hint,
			},
			{
				name = "DiagnosticSignInfo",
				text = " " .. icons.diagnostics.Information,
			},
		}

		for _, sign in ipairs(signs) do
			vim.fn.sign_define(sign.name, {
				texthl = sign.name,
				text = sign.text,
				numhl = "",
			})
		end

		local config = {
			-- disable virtual text
			virtual_text = true,
			-- show signs
			signs = {
				active = signs,
			},
			update_in_insert = true,
			underline = true,
			severity_sort = true,
		}

		vim.diagnostic.config(config)

		local mason_lspconfig = require("mason-lspconfig")
		local lspconfig = require("lspconfig")
		local lsp_keymap = require("config.immediate.keymap.lsp")
		local cmp_capabilities = require("config.immediate.cmp")
		local lsp_inlayhints = require("lsp-inlayhints")
		local navic = require("nvim-navic")

		-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
		local function setup_language_server(server)
			local opts = {
				on_attach = function(client, bufnr)
					lsp_keymap.on_attach(bufnr)
					if client.server_capabilities.documentSymbolProvider then
						navic.attach(client, bufnr)
					end
					lsp_inlayhints.on_attach(client, bufnr)

					-- TODO: Move this godot specific stuff to godot config file
					vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
					local _notify = client.notify

					client.notify = function(method, params)
						if method == "textDocument/didClose" then
							-- Godot doesn't implement didClose yet
							return
						end
						_notify(method, params)
					end
				end,
				flags = {
					debounce_text_changes = 150,
				},
			}

			local lang_opts_status_ok, lang_opts = pcall(require, "config.options.lsp.settings." .. server)
			if lang_opts_status_ok then
				opts = vim.tbl_deep_extend("force", lang_opts, opts)
			end

			opts = vim.tbl_deep_extend("force", cmp_capabilities, opts)

			lspconfig[server].setup(opts)
		end

		for _, server in pairs(mason_lspconfig.get_installed_servers()) do
			setup_language_server(server)
		end

		setup_language_server("gdscript")
	end
}
