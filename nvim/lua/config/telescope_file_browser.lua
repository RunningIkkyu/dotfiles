require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap( "n", "<localleader>fb", "<cmd>Telescope file_browser<CR>", { noremap = true }
)
