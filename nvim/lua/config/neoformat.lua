vim.api.nvim_exec([[ autocmd BufWritePre *.py :silent! Neoformat black ]], false)
