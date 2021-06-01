require('plugins')

-- https://github.com/mjlbach/nix-dotfiles/blob/master/nixpkgs/configs/neovim/init.lua


--Expand tab to spaces
vim.o.expandtab = true

--Incremental live completion
vim.o.inccommand = "nosplit"

--Set tab options for vim
vim.o.tabstop = 8
vim.o.softtabstop = 4

--Set highlight on search
vim.o.hlsearch = true

--Make line numbers default
vim.wo.number = true

--Do not save when switching buffers
vim.o.hidden = true

--Enable mouse mode
vim.o.mouse = "a"

--Enable break indent
vim.o.breakindent = true

--Save undo history
vim.cmd[[ set undofile ]]

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn="yes"

--Better navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true})

-- quick diffget
vim.api.nvim_set_keymap('n', '<leader>dg', ':diffget', {noremap = true})

vim.api.nvim_set_keymap('n', '<C-p>', ':FZF<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<M-p>', ':Rg<CR>', {noremap = true})

-- Map F9 to search current word without moving cursor
-- nnoremap <F9> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

-- map // to search selection
-- vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

-- Command line mode binding.
-- See :help cmdline-editing for more details.
-- vim.api.nvim_set_keymap('c', '<C-l>', '<C-w>l', {noremap = true})

--Remap escape*2 to leave terminal mode
vim.api.nvim_exec([[
  augroup Terminal
    autocmd!
    au TermOpen * tnoremap <buffer> <Esc><Esc> <c-\><c-n>
    au TermOpen * set nonu
  augroup end
]], false)

--Add map to enter paste mode
vim.o.pastetoggle="<F3>"

--Remap space as leader key
-- vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent=true})
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

--Set colorscheme (order is important here)
vim.o.termguicolors = true
vim.g.onedark_terminal_italics = 2
vim.cmd[[colorscheme gruvbox-material]]

-------------------------------------------------------------------------------
-- lspconfig
-- Supported Language server List:  
--    https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
-- golang
local lsp = require 'lspconfig'
local completion = require 'completion'
lsp.gopls.setup{on_attach=completion.on_attach}
-- require'completion'.on_attach()

-- python
-- require'lspconfig'.pyright.setup{}

-------------------------------------------------------------------------------
-- Load lspsaga and setting.
-- A light-weight lsp plugin based on neovim built-in lsp with highly a performant UI.
local saga = require 'lspsaga'
saga.init_lsp_saga()
vim.api.nvim_set_keymap('n', 'gh', ':Lspsaga lsp_finder<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'ga', ':Lspsaga code_action<CR>', {noremap=true})    -- better preview using lspsaga
vim.api.nvim_set_keymap('n', '<leader>gr', ':Lspsaga rename<CR>', {noremap=true})    -- better preview using lspsaga
vim.api.nvim_set_keymap('n', 'K', ':Lspsaga hover_doc<CR>', {noremap=true})    -- better preview using lspsaga
-- preview definition
vim.api.nvim_set_keymap('n', 'gD', ':Lspsaga preview_definition<CR>', {noremap=true}) 

-------------------------------------------------------------------------------
-- local nvim_lsp = require('lspconfig')
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gr', ':Telescope lsp_references<CR>', opts)
-- vim.api.nvim_set_keymap('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>', opts)
-- vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', {})
vim.api.nvim_set_keymap('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-k>', ':lua vim.lsp.buf.signature_help()<CR>', opts)
-- vim.api.nvim_set_keymap('n', 'ga', ':lua vim.lsp.buf.code_action()<CR>', opts)
vim.api.nvim_set_keymap('n', 'geN', ':lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gen', ':lua vim.lsp.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

-------------------------------------------------------------------------------
--Nvim tree
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap("n", "<space>t", "<cmd>:NvimTreeToggle<CR>", opts)


-------------------------------------------------------------------------------
require("lsp-colors").setup()


-------------------------------------------------------------------------------
require('lspkind').init()

-------------------------------------------------------------------------------
cfg = {
  bind = true, -- This is mandatory, otherwise border config won't get registered.
               -- If you want to hook lspsaga or other signature handler, pls set to false
  doc_lines = 2, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
                 -- set to 0 if you do not want any API comments be shown
                 -- This setting only take effect in insert mode, it does not affect signature help in normal
                 -- mode

  hint_enable = true, -- virtual hint enable
  hint_prefix = " ",  -- Panda for parameter
  hint_scheme = "String",
  use_lspsaga = true,  -- set to true if you want to use lspsaga popup
  handler_opts = {
    border = "shadow"   -- double, single, shadow, none
  },
  decorator = {"`", "`"}  -- decoractor can be `decorator = {"***", "***"}`  `decorator = {"**", "**"}` `decorator = {"**_", "_**"}`
                          -- `decorator = {"*", "*"} see markdown help for more details
                          -- <u></u> ~ ~ does not supported by nvim

}

require'lsp_signature'.on_attach(cfg)
-------------------------------------------------------------------------------
-- completion ultisnips
--let g:completion_enable_snippet = 'UltiSnips'
--
-- lua require'lspconfig'.gopls.setup{on_attach=require'completion'.on_attach}
--

vim.api.nvim_command('set completeopt=menuone,noinsert,noselect')
-- vim.api.nvim_command('set shortmess+=c')


-------------------------------------------------------------------------------
--nvim-lightbulb
vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]


-------------------------------------------------------------------------------
-- treesitter
require'nvim-treesitter.configs'.setup {
  --ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
  -- andymass/vim-matchup
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
    -- disable = { "c", "ruby" },  -- optional, list of language that will be disabled
  },
}

-------------------------------------------------------------------------------
--bufferline
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap("n", "<M-,>", ":BufferPrevious<CR>", opts)
vim.api.nvim_set_keymap("n", "<M-.>", ":BufferNext<CR>", opts)
vim.api.nvim_set_keymap("n", "<M-;>", ":BufferPick<CR>", opts)
vim.api.nvim_set_keymap("n", "<M-d>", ":BufferClose<CR>", opts)

-------------------------------------------------------------------------------
-- Telescope
vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep <CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>fd", ":Telescope lsp_definitions<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>fc", ":Telescope current_buffer_fuzzy_find <CR>", opts)

-------------------------------------------------------------------------------
--neoscroll: smooth scrolling.
require('neoscroll').setup()


-------------------------------------------------------------------------------
-- lualine
require('lualine').setup{
  options = {theme = 'gruvbox'},
}


-------------------------------------------------------------------------------
require'lspinstall'.setup() -- important

-------------------------------------------------------------------------------
--
-- auto hide terminal after close
--vim.cmd [[ autocmd TermOpen * set bufhidden=hide ]]
--
-- Set up nvim-toggleterm.lua
require("toggleterm").setup{
   size = 15,
   --direction = 'vertical' | 'horizontal' | 'window' | 'float',
   direction = 'horizontal',
   hide_numbers = true,
   start_in_insert = true,
   open_mapping = [[<c-\>]],
   persist_size = true,
   close_on_exit = false,
}
-- require("toggleterm").setup{
--   -- size can be a number or function which is passed the current terminal
--   size = 20 | function(term)
--     if term.direction == "horizontal" then
--       return 15
--     elseif term.direction == "vertical" then
--       return vim.o.columns * 0.4
--     end
--   end,
--   open_mapping = [[<c-\>]],
--   hide_numbers = true, -- hide the number column in toggleterm buffers
--   shade_filetypes = {},
--   shade_terminals = true,
--   shading_factor = '<number>', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
--   start_in_insert = true,
--   persist_size = true,
--   direction = 'vertical' | 'horizontal' | 'window' | 'float',
--   close_on_exit = true, -- close the terminal window when the process exits
--   shell = vim.o.shell, -- change the default shell
--   -- This field is only relevant if direction is set to 'float'
--   float_opts = {
--     -- The border key is *almost* the same as 'nvim_win_open'
--     -- see :h nvim_win_open for details on borders however
--     -- the 'curved' border is a custom border type
--     -- not natively supported but implemented in this plugin.
--     -- border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
--     border = 'single',
--     -- width = <value>,
--     height = 30,
--     winblend = 3,
--     highlights = {
--       border = "Normal",
--       background = "Normal",
--     }
--   }
-- }
-- 

-------------------------------------------------------------------------------
-- https://github.com/edluffy/specs.nvim
-- require('specs').setup{ 
--     show_jumps  = true,
--     min_jump = 1,
--     popup = {
--         delay_ms = 0, -- delay before popup displays
--         inc_ms = 10, -- time increments used for fade/resize effects 
--         blend = 60, -- starting blend, between 0-100 (fully transparent), see :h winblend
--         width = 30,
--         winhl = "PMenu",
--         -- fader = require('specs').linear_fader,
--         fader = require('specs').pulse_fader,
--         resizer = require('specs').shrink_resizer
--         -- resizer = require('specs').slide_resizer
--     },
--     ignore_filetypes = {},
--     ignore_buftypes = {
--         nofile = true,
--     },
-- }

-------------------------------------------------------------------------------
-- indent line
vim.g.indent_blankline_char = '│'

-------------------------------------------------------------------------------
-- rainbow
require'nvim-treesitter.configs'.setup {
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 2000, -- Do not enable for files with more than 1000 lines, int
  }
}

-------------------------------------------------------------------------------
-- Lua
local cb = require'diffview.config'.diffview_callback

require'diffview'.setup {
  diff_binaries = false,    -- Show diffs for binaries
  file_panel = {
    width = 35,
    use_icons = true        -- Requires nvim-web-devicons
  },
  key_bindings = {
    -- The `view` bindings are active in the diff buffers, only when the current
    -- tabpage is a Diffview.
    view = {
      ["<tab>"]     = cb("select_next_entry"),  -- Open the diff for the next file 
      ["<s-tab>"]   = cb("select_prev_entry"),  -- Open the diff for the previous file
      ["<leader>e"] = cb("focus_files"),        -- Bring focus to the files panel
      ["<leader>b"] = cb("toggle_files"),       -- Toggle the files panel.
    },
    file_panel = {
      ["j"]         = cb("next_entry"),         -- Bring the cursor to the next file entry
      ["<down>"]    = cb("next_entry"),
      ["k"]         = cb("prev_entry"),         -- Bring the cursor to the previous file entry.
      ["<up>"]      = cb("prev_entry"),
      ["<cr>"]      = cb("select_entry"),       -- Open the diff for the selected entry.
      ["o"]         = cb("select_entry"),
      ["R"]         = cb("refresh_files"),      -- Update stats and entries in the file list.
      ["<tab>"]     = cb("select_next_entry"),
      ["<s-tab>"]   = cb("select_prev_entry"),
      ["<leader>e"] = cb("focus_files"),
      ["<leader>b"] = cb("toggle_files"),
    }
  }
}
