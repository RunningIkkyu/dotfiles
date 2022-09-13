vim.api.nvim_exec([[ autocmd BufWritePre *.py :Neoformat black ]], true)
vim.api.nvim_exec([[ autocmd BufWritePre *.json :Neoformat jq ]], true)
