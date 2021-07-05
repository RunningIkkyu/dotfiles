---------------------------- Load all plugins ---------------------------------
-- load all plugins
require "plugins"
-- require "pluginList"
require "misc-utils"
require "top-bufferline"
require "statusline"

-- require("colorizer").setup()
require('neoscroll').setup() -- smooth scrolling.

-- lsp stuff
require "nvim-lspconfig"
require "compe-completion"

require "treesitter-nvim"
require "mappings"

require "telescope-nvim"
require "nvimTree" -- file tree stuff
require "file-icons"
require'lspinstall'.setup() -- important

require "gitsigns-nvim"   --  git signs , lsp symbols etc
require("nvim-autopairs").setup()
require("lspkind").init()
require "whichkey"

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

-- https://github.com/mjlbach/nix-dotfiles/blob/master/nixpkgs/configs/neovim/init.lua

-- g.mapleader = " "
-- g.auto_save = 0
--
--Save undo history
-- vim.cmd[[ set undofile ]]


vim.cmd "syntax on"
-- local base16 = require "base16"
-- base16(base16.themes["onedark"], true)

require "custom_highlights"

-- blankline
vim.g.indentLine_enabled = 1
vim.g.indent_blankline_filetype_exclude = {"help", "terminal"}
vim.g.indent_blankline_buftype_exclude = {"terminal"}
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_first_indent_level = false


--Set colorscheme (order is important here)
vim.o.termguicolors = true
vim.g.onedark_terminal_italics = 2
--vim.cmd[[colorscheme gruvbox]]
vim.cmd[[colorscheme nord]]

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
  -- use_lspsaga = true,  -- set to true if you want to use lspsaga popup
  handler_opts = {
    border = "shadow"   -- double, single, shadow, none
  },
  decorator = {"`", "`"}  -- decoractor can be `decorator = {"***", "***"}`  `decorator = {"**", "**"}` `decorator = {"**_", "_**"}`
                          -- `decorator = {"*", "*"} see markdown help for more details
                          -- <u></u> ~ ~ does not supported by nvim

}

require'lsp_signature'.on_attach(cfg)

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
   start_in_insert = false,
   open_mapping = [[<c-\>]],
   --persist_size = true,
   close_on_exit = false,
   shade_terminals=true,
   height = 30,
   shell=vim.o.shell
}

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
vim.g.indent_blankline_char = "▏"

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

-------------------------------------------------------------------------------
