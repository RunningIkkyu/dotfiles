 local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- dont copy any deleted text , this is disabled by default so uncomment the below mappings if you want them!
--[[ remove this line

map("n", "dd", [=[ "_dd ]=], opt)
map("v", "dd", [=[ "_dd ]=], opt)
map("v", "x", [=[ "_x ]=], opt)

 this line too ]]
-- OPEN TERMINALS --
-- map("n", "<C-l>", [[<Cmd>vnew term://bash <CR>]], opt) -- term over right
-- map("n", "<C-x>", [[<Cmd> split term://bash | resize 10 <CR>]], opt) --  term bottom
-- map("n", "<C-t>t", [[<Cmd> tabnew | term <CR>]], opt) -- term newtab

-- COPY EVERYTHING --
-- map("n", "<C-a>", [[ <Cmd> %y+<CR>]], opt)

-- toggle numbers ---
-- map("n", "<leader>n", [[ <Cmd> set nu!<CR>]], opt)

-- toggle truezen.nvim's ataraxis and minimalist mode
map("n", "<leader>z", [[ <Cmd> TZAtaraxis<CR>]], opt)
map("n", "<leader>m", [[ <Cmd> TZMinimalist<CR>]], opt)

map("n", "<C-s>", [[ <Cmd> w <CR>]], opt)
-- vim.cmd("inoremap jh <Esc>")

--Better navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true})

-- quick diffget
vim.api.nvim_set_keymap('n', '<leader>dg', ':diffget', {noremap = true})

-- fzf and ripgrep search
vim.api.nvim_set_keymap('n', '<C-p>', ':FZF<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<M-p>', ':Rg<CR>', {noremap = true})

--Add map to enter paste mode
vim.o.pastetoggle="<F3>"

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap("n", "<M-,>", ":bp<CR>", opts)
vim.api.nvim_set_keymap("n", "<M-.>", ":bn<CR>", opts)
vim.api.nvim_set_keymap("n", "<M-;>", ":BufferLinePick<CR>", opts)
vim.api.nvim_set_keymap("n", "<M-d>", ":BufDel<CR>", opts)

-- Map F9 to search current word without moving cursor
-- nnoremap <F9> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
--
-- map // to search selection
-- vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

-- Command line mode binding.
-- See :help cmdline-editing for more details.
-- vim.api.nvim_set_keymap('c', '<C-l>', '<C-w>l', {noremap = true})
--

--Remap escape*2 to leave terminal mode
vim.api.nvim_exec([[
  augroup Terminal
    autocmd!
    au TermOpen * tnoremap <buffer> <Esc><Esc> <c-\><c-n>
    au TermOpen * set nonu
  augroup end
]], false)


