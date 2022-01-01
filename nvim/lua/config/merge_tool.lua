vim.api.nvim_set_keymap("n", "\\mt", ":MergetoolToggle<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "\\dh", ":MergetoolDiffExchangeLeft<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "\\dl", ":MergetoolDiffExchangeRight<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "\\dj", ":MergetoolDiffExchangeDown<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "\\dk", ":MergetoolDiffExchangeUp<CR>", { silent=true, noremap= true })