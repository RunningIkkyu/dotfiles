local neogen = require 'neogen'
local map = require('config.utils').map

neogen.setup { enabled = true, jump_map = '<tab>' }
map('n', '<localleader>d', '<cmd>lua require("neogen").generate()<cr>')
map('n', '<localleader>df', '<cmd>lua require("neogen").generate({ type = "func" })<cr>')
map('n', '<localleader>dc', '<cmd>lua require("neogen").generate({ type = "class" })<cr>')


-- Official Example
--
-- local opts = { noremap = true, silent = true }
-- vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", opts)
-- 
-- require('neogen').setup {
--   --if you want to disable Neogen
--   enabled = true,             
-- 
--   -- the annotation type to generate. Currently supported: func, class, type
--   type = "func" 
-- 
--   -- (default: true) automatic jump (with insert mode) on inserted annotation
--   input_after_comment = true, 
-- 
--   -- The keymap in order to jump in the annotation fields (in insert mode)
--   -- jump_map = "<C-e>"          
-- }
