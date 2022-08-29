vim.api.nvim_exec([[ autocmd BufWritePre *.py :Neoformat black ]], true)
