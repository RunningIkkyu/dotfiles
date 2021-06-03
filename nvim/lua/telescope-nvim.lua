require("telescope").setup {
    defaults = {
        vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case"
        },
        prompt_position = "bottom",
        prompt_prefix = " ",
        selection_caret = " ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        layout_defaults = {
            horizontal = {
                mirror = false,
                preview_width = 0.5
            },
            vertical = {
                mirror = false
            }
        },
        file_sorter = require "telescope.sorters".get_fuzzy_file,
        file_ignore_patterns = {},
        generic_sorter = require "telescope.sorters".get_generic_fuzzy_sorter,
        shorten_path = true,
        winblend = 0,
        width = 0.75,
        preview_cutoff = 120,
        results_height = 1,
        results_width = 0.8,
        border = {},
        borderchars = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"},
        color_devicons = true,
        use_less = true,
        set_env = {["COLORTERM"] = "truecolor"}, -- default = nil,
        file_previewer = require "telescope.previewers".vim_buffer_cat.new,
        grep_previewer = require "telescope.previewers".vim_buffer_vimgrep.new,
        qflist_previewer = require "telescope.previewers".vim_buffer_qflist.new,
        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require "telescope.previewers".buffer_previewer_maker
    }
    -- extensions = {
    --     media_files = {
    --         filetypes = {"png", "webp", "jpg", "jpeg"},
    --         find_cmd = "rg" -- find command (defaults to `fd`)
    --     }
    -- }
}

-- require("telescope").load_extension("media_files")

-- local opt = {noremap = true, silent = true}

vim.api.nvim_set_keymap( "n", "<leader>fg", ":Telescope live_grep <CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap( "n", "<leader>ff", ":Telescope find_files <CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap( "n", "<leader>gr", ":Telescope lsp_references <CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap( "n", "<leader>fc", ":Telescope current_buffer_fuzzy_find <CR>", {noremap = true, silent = true})
-- vim.g.mapleader = " "

-- mappings
-- vim.api.nvim_set_keymap('n', 'gr', ':Telescope lsp_references<CR>', opts)
-- vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep <CR>", opts)
-- vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
-- vim.api.nvim_set_keymap("n", "<leader>fd", ":Telescope lsp_definitions<CR>", opts)
-- vim.api.nvim_set_keymap("n", "<leader>fc", ":Telescope current_buffer_fuzzy_find <CR>", opts)

