-- dofile('./lua/plugins.lua')
require('plugins')
-- require 'impatient'
local g = vim.g
local cmd = vim.cmd
local o, wo, bo = vim.o, vim.wo, vim.bo
local utils = require 'config.utils'
local opt = utils.opt
local autocmd = utils.autocmd
local map = utils.map

-- Leader/local leader
g.mapleader = [[ ]]
g.maplocalleader = [[,]]

-- Disable some built-in plugins we don't want
local disabled_built_ins = {
  'gzip',
  'man',
  'matchit',
  'matchparen',
  'shada_plugin',
  'tarPlugin',
  'tar',
  'zipPlugin',
  'zip',
  'netrwPlugin',
}

for i = 1, 10 do
  g['loaded_' .. disabled_built_ins[i]] = 1
end

-- Settings
local buffer = { o, bo }
local window = { o, wo }
opt('textwidth', 100, buffer)
opt('scrolloff', 7)
opt('mouse', 'a')
opt('wildignore', '*.o,*~,*.pyc')
opt('wildmode', 'longest,full')
opt('whichwrap', vim.o.whichwrap .. '<,>,h,l')
opt('inccommand', 'nosplit')
opt('lazyredraw', true)
opt('showmatch', true)
opt('ignorecase', true)
opt('smartcase', true)
opt('tabstop', 4, buffer)
opt('softtabstop', 0, buffer)
opt('expandtab', true, buffer)
opt('shiftwidth', 4, buffer)
opt('number', true, window)
opt('relativenumber', true, window)
opt('smartindent', true, buffer)
opt('laststatus', 2)
opt('showmode', false)
opt('shada', [['20,<50,s10,h,/100]])
opt('hidden', true)
opt('shortmess', o.shortmess .. 'c')
opt('joinspaces', false)
opt('guicursor', [[n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50]])
opt('updatetime', 500)
opt('conceallevel', 2, window)
opt('concealcursor', 'nc', window)
opt('previewheight', 5)
opt('undofile', true, buffer)
opt('synmaxcol', 500, buffer)
opt('display', 'msgsep')
opt('cursorline', true, window)
opt('modeline', false, buffer)
opt('mouse', 'nivh')
opt('signcolumn', 'yes:1', window)

-- Colorscheme
opt('termguicolors', true)
opt('background', 'dark')
-- cmd [[colorscheme gruvbox-material]]
-- cmd [[colorscheme nazgul]]

-- Autocommands
-- autocmd('start_screen', [[VimEnter * ++once lua require('start').start()]], true)
autocmd(
  'syntax_aucmds',
  [[Syntax * syn match extTodo "\<\(NOTE\|HACK\|BAD\|TODO\):\?" containedin=.*Comment.* | hi! link extTodo Todo]],
  true
)
autocmd('misc_aucmds', {
  [[BufWinEnter * checktime]],
  [[TextYankPost * silent! lua vim.highlight.on_yank()]],
  [[FileType qf set nobuflisted ]],
}, true)

-- Commands
cmd [[command! WhatHighlight :call util#syntax_stack()]]
cmd [[command! PackerInstall packadd packer.nvim | lua require('plugins').install()]]
cmd [[command! PackerUpdate packadd packer.nvim | lua require('plugins').update()]]
cmd [[command! PackerSync packadd packer.nvim | lua require('plugins').sync()]]
cmd [[command! PackerClean packadd packer.nvim | lua require('plugins').clean()]]
cmd [[command! PackerCompile packadd packer.nvim | lua require('plugins').compile()]]

-- Keybindings
local silent = { silent = true }
-- Disable annoying F1 binding
map('', '<f1>', '<cmd>FloatermToggle<cr>')

-- Run a build
map('n', '<localleader><localleader>', '<cmd>Make<cr>', silent)

-- Quit, close buffers, etc.
map('n', '<leader>q', '<cmd>qa<cr>', silent)
map('n', '<leader>x', '<cmd>x!<cr>', silent)
map('n', '<leader>d', '<cmd>Sayonara<cr>', { silent = true, nowait = true })

-- A little Emacs in my Neovim
map('n', '<c-x><c-s>', '<cmd>w<cr>', silent)
map('i', '<c-x><c-s>', '<esc><cmd>w<cr>a', silent)

-- Save buffer
map('n', '<leader>w', '<cmd>w<cr>', { silent = true })

-- Version control
map('n', 'gs', '<cmd>Neogit<cr>', silent)

-- Terminal mode 
-- Esc in the terminal
-- augroup Terminal
--     autocmd!
--     au TermOpen * tnoremap <buffer> <Esc><Esc> <c-\><c-n>
--     au TermOpen * set nonu
-- augroup end
map('t', 'jj', [[<C-\><C-n>]])

-- Yank to clipboard
map({ 'n', 'v' }, 'y+', '<cmd>set opfunc=util#clipboard_yank<cr>g@', silent)

-- remove lines contain selected contents
-- vnoremap <silent> <leader>d y:g/\V<C-R>=escape(@",'/\')<CR>/d<CR>
map('v', '<localleader>d', 'y:g/\\V<C-R>=escape(@",\'/\\\')<CR>/d<CR>')

-- " replace selected string
-- vnoremap <F4> y:%s/<C-R>=escape(@",'/\')<CR>/<C-R>=escape(@",'/\')<CR>/g<Left><Left>
map('v', '<localleader>r', 'y:%s/<C-R>=escape(@",\'/\\\')<CR>/<C-R>=escape(@",\'/\\\')<CR>/g<Left><Left>')

-- " map // to search selection
-- vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
map('v', '//', 'y/\\V<C-R>=escape(@",\'/\\\')<CR><CR>')

-- " quick add quota to a word.
-- nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
map('n', '<localleader>"', 'viw<esc>a"<esc>bi"<esc>lel')

-- quick diffget
map('n', '<localleader>dg', ':diffget<CR>', silent)

-- use [[ / ]] to goto previous/next function
function search_function_previous()
    vim.api.nvim_command(":noh")
    if vim.bo.filetype=="go" then
        vim.api.nvim_command("?func .*(")
    elseif  vim.bo.filetype == "py" then
        vim.api.nvim_command("?def \\w*")
    end
    vim.api.nvim_command("let @/ = ''")
    vim.api.nvim_command("set hlsearch")
end

function search_function_next()
    vim.api.nvim_command(":noh")
    if vim.bo.filetype=="go" then
        vim.api.nvim_command("/func .*(")
    elseif  vim.bo.filetype == "py" then
        vim.api.nvim_command("/def \\w*")
    end
    vim.api.nvim_command("let @/ = ''")
    vim.api.nvim_command("set hlsearch")
end

vim.api.nvim_set_keymap("n", "[[", ":lua search_function_previous()<CR>", {silent=true})
vim.api.nvim_set_keymap("n", "]]", ":lua search_function_next()<CR>", {silent=true})


-- Window movement
map('n', '<c-h>', '<c-w>h')
map('n', '<c-j>', '<c-w>j')
map('n', '<c-k>', '<c-w>k')
map('n', '<c-l>', '<c-w>l')

-- Tab movement
map('n', '(', '<cmd>tabpre<cr>')
map('n', ')', '<cmd>tabnext<cr>')


-- MAPPINGS
map("n", "<S-t>", [[<Cmd>tabnew<CR>]], silent) -- new tab


vim.cmd [[colorscheme gruvbox-material]]
