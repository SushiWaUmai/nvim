require("config.deferred.lsp.config")
require("config.deferred.lsp.status")
local lsp_sig = require("config.deferred.lsp.signature")

local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status_ok then
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

mason_lspconfig.setup()

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- mason.on_server_ready(function(server)
-- 	local opts = {
-- 		on_attach = lsp_keymap.on_attach,
-- 		flags = {
-- 			debounce_text_changes = 150,
-- 		},
-- 	}

-- 	local lang_opts_status_ok, lang_opts = pcall(require, "config.deferred.lsp.settings." .. server.name)
-- 	if lang_opts_status_ok then
-- 		opts = vim.tbl_deep_extend("force", lang_opts, opts)
-- 	end

-- 	opts = vim.tbl_deep_extend("force", cmp_capabilities, opts)

-- 	server:setup(opts)
-- end)

lsp_sig.setup_signature()
