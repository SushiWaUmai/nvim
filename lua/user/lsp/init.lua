require("user.lsp.config")

local lsp_installer_status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not lsp_installer_status_ok then
    return
end

local lsp_keymap_status_ok, lsp_keymap = pcall(require, "user.keymap.lsp")
if not lsp_keymap_status_ok then
    return
end

local cmp_capabilities_status_ok, cmp_capabilities = pcall(require, "user.cmp")
if not cmp_capabilities_status_ok then
    return
end

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = lsp_keymap.on_attach,
        flags = {
            debounce_text_changes = 150
        }
    }

    local lang_opts_status_ok, lang_opts = pcall(require, "user.lsp.settings." .. server.name)
    if lang_opts_status_ok then
        opts = vim.tbl_deep_extend("force", lang_opts, opts)
    end

    opts = vim.tbl_deep_extend("force", cmp_capabilities, opts)

    server:setup(opts)
end)
