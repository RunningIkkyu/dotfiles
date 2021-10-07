local bar_fg = "#928374"
local activeBuffer_fg = "#ebdbb2"

require "bufferline".setup {
    options = {
        -- offsets = {{filetype = "NvimTree", text = ""}},
        offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
        buffer_close_icon = "",
        diagnostics = "nvim_lsp",
        modified_icon = "",
        close_icon = " ",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        view = "multiwindow",
        show_buffer_close_icons = true,
        --separator_style = "thin",
        separator_style = "slant",
    },
}


-- move between tabs
vim.api.nvim_set_keymap("n", ")", ":BufferLineCycleNext<CR>",{ silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "(", ":BufferLineCyclePrev<CR>", { silent=true, noremap= true })
