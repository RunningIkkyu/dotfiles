vim.api.nvim_set_keymap("n", "<localleader>ff", "<cmd>Telescope find_files<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<localleader>fg", "<cmd>Telescope live_grep<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<localleader>fb", "<cmd>Telescope buffers<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<localleader>fh", "<cmd>Telescope help_tags<cr>", { silent=true, noremap= true })

-- lsp releated
vim.api.nvim_set_keymap("n", "<localleader>gr", "<cmd>Telescope lsp_references<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<localleader>gd", "<cmd>Telescope lsp_definition<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<localleader>ga", "<cmd>Telescope lsp_code_actions<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<localleader>gi", "<cmd>Telescope lsp_code_implementations<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<localleader>gs", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", { silent=true, noremap= true })
