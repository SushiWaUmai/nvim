local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
    return
end

local icons = require("user.icons")

vim.g.nvim_tree_icons = {
    default = icons.fs.file.Default,
    symlink = icons.fs.file.Symlink,
    git = {
        unstaged = icons.git.Modify,
        staged = icons.git.Staged,
        unmerged = icons.git.Unmerged,
        renamed = icons.git.Rename,
        deleted = icons.git.Remove,
        untracked = icons.git.Untracked,
        ignored = icons.git.Ignore
    },
    folder = {
        default = icons.fs.dir.Closed,
        open = icons.fs.dir.Open,
        empty = icons.fs.dir.Empty,
        empty_open = icons.fs.dir.EmptyOpen,
        symlink = icons.fs.dir.Symlink
    },
    lsp = {
        error = icons.diagnostics.Error,
        warning = icons.diagnostics.Warning,
        information = icons.diagnostics.Information,
        hint = icons.diagnostics.Hint
    }
}

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup({
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = false,
    ignore_ft_on_setup = {"alpha"},
    auto_close = true,
    open_on_tab = false,
    hijack_cursor = false,
    update_cwd = true,
    quit_on_open = 0,
    git_hl = 1,
    disable_window_picker = 0,
    root_folder_modifier = ":t",
    update_to_buf_dir = {
        enable = true,
        auto_open = true
    },
    diagnostics = {
        enable = false,
        icons = {
            hint = icons.diagnostics.Hint,
            info = icons.diagnostics.Information,
            warning = icons.diagnostics.Warning,
            error = icons.diagnostics.Error
        }
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {}
    },
    system_open = {
        cmd = nil,
        args = {}
    },
    filters = {
        dotfiles = false,
        custom = {}
    },
    git = {
        enable = true,
        ignore = true,
        timeout = 500
    },
    view = {
        width = 30,
        height = 30,
        hide_root_folder = false,
        side = "right",
        preserve_window_proportions = false,
        mappings = {
            custom_only = false,
            list = {{
                key = {"l", "<CR>", "o"},
                cb = tree_cb("edit")
            }}
        },
        number = false,
        relativenumber = false
    },
    trash = {
        cmd = "trash",
        require_confirm = true
    },
    show_icons = {
        git = 1,
        folders = 1,
        files = 1,
        folder_arrows = 1,
        tree_width = 30
    }
})
