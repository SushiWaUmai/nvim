local renamer_status_ok, renamer = pcall(require, "renamer")
if not renamer_status_ok then
    return
end

local renamer_keymap_status_ok, renamer_keymap = pcall(require, "user.keymap.renamer")
if not renamer_keymap_status_ok then
    return
end

renamer.setup({
    title = "Rename",
    padding = {
        top = 0,
        left = 0,
        bottom = 0,
        right = 0,
    },
    min_width = 15,
    max_width = 45,
    border = true,
    border_chars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    show_refs = true,
    with_qf_list = true,
    with_popup = true,
    mappings = renamer_keymap,
    handler = nil,
})
