local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
    return
end

bufferline.setup({
    options = {
        numbers = "none",
        close_command = "Bdelete! %d",
        right_mouse_command = "Bdelete! %d",
        middle_mouse_command = nil,
        left_mouse_command = "buffer %d",
        indicator_icon = "▎",
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",

        offsets = {{
            filetype = "NvimTree",
            text = function()
                return vim.fn.getcwd()
            end,
            highlight = "Directory",
            text_align = "left"
        }},

        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true,

        separator_style = "thin",
        enforce_regular_tabs = true,
        always_show_bufferline = true
    }
})
