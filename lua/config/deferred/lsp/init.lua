require("config.deferred.lsp.config")
require("config.deferred.lsp.status")
local lsp_sig = require("config.deferred.lsp.signature")

local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status_ok then
	return
end

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local lsp_keymap_status_ok, lsp_keymap = pcall(require, "config.immediate.keymap.lsp")
if not lsp_keymap_status_ok then
	return
end

local cmp_capabilities_status_ok, cmp_capabilities = pcall(require, "config.immediate.cmp")
if not cmp_capabilities_status_ok then
	return
end

local navic_status_ok, navic = pcall(require, "nvim-navic")
if not navic_status_ok then
	return
end

local lsp_inlayhints_status_ok, lsp_inlayhints = pcall(require, "lsp-inlayhints")
if not lsp_inlayhints_status_ok then
	return
end

local fidget_status_ok, fidget = pcall(require, "fidget")
if not fidget_status_ok then
  return
end

fidget.setup()
mason_lspconfig.setup()
lsp_inlayhints.setup()

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
for _, server in pairs(mason_lspconfig.get_installed_servers()) do
	local opts = {
		on_attach = function(client, bufnr)
			lsp_keymap.on_attach(bufnr)
			if client.server_capabilities.documentSymbolProvider then
				navic.attach(client, bufnr)
			end
			lsp_inlayhints.on_attach(client, bufnr)
		end,
		flags = {
			debounce_text_changes = 150,
		},
	}

	local lang_opts_status_ok, lang_opts = pcall(require, "config.deferred.lsp.settings." .. server)
	if lang_opts_status_ok then
		opts = vim.tbl_deep_extend("force", lang_opts, opts)
	end

	opts = vim.tbl_deep_extend("force", cmp_capabilities, opts)

	lspconfig[server].setup(opts)
end

lsp_sig.setup_signature()
