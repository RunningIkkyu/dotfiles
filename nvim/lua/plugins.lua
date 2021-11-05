local packer = nil
local map = require('config.utils').map


return require('packer').startup(function()

  --  Plug vim plug instead, packer cannot install plugin headless.
  use 'wbthomason/packer.nvim'

  --  ------------------------- Lsp related --------------------------------------
  --  use 'nvim-lua/completion-nvim'
  use {
      'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' ,
      config=[[require('config.treesitter')]],
  }
  use {
      'hrsh7th/nvim-compe',
      config=[[require('config.nvim_compe')]],
  }
  use 'hrsh7th/vim-vsnip-integ'
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/vim-vsnip'
  use {
      'neovim/nvim-lspconfig',
       config=[[require('config.lsp_config')]],
  }
  use {
      'kabouzeid/nvim-lspinstall',      --install language server automatically.
      config=[[require('config.lsp_install')]],
  }
  use 'glepnir/lspsaga.nvim'            --better lsp UI
  use 'folke/lsp-colors.nvim'           --lsp color
  use 'ray-x/lsp_signature.nvim'        --Show function signature
  use {
      'nvim-telescope/telescope.nvim',
      config=[[require('config.telescope')]],
  }
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
      'ojroques/nvim-bufdel',            --better buffer delection
      config=[[require("config.nvim_bufdel")]],
  }
  use {
      'crispgm/nvim-go',                --Golang development plugin
      disable=true,
      config=[[require("config.nvim_go")]],
  }
  use {
      'ray-x/go.nvim',                --Golang development plugin
      config=[[require("config.go_nvim")]],
  }
  use 'sbdchd/neoformat'                --✨A (Neo)vim plugin for formatting code.
  use {
      'gfanto/fzf-lsp.nvim',            -- Enable the power of fzf fuzzy search for the neovim built in lsp
      disable=true,
      config=[[require("config.fzf_lsp")]],
  }
  use {
      'ojroques/nvim-lspfuzzy',         -- Enable the power of fzf fuzzy search for the neovim built in lsp
      disable=true,                     -- Just use telescope
      config=[[require("config.lsp_fuzzy")]],
  }

  -- ------------------------- Tools & Improvements -----------------------------
  use 'APZelos/blamer.nvim'             --A git blame plugin for (neo)vim
  use 'lewis6991/impatient.nvim' 	--Speed up loading Lua modules to improve startup.
  use {
      'mbbill/undotree',                --The undo history visualizer for VIM
      config=[[require("config.undo_tree")]],
  }
  --use 'TaDaa/vimade'                  --fades your inactive buffers..
  --use 'liuchengxu/vista.vim'          --View and search LSP symbols, tags.
  --use 'othree/eregex.vim'             --Better regex
  --use 'preservim/nerdcommenter'       --Quick comment
  --use 'sheerun/vim-polyglot'
  --use 'windwp/nvim-autopairs'
  --use 'yuttie/comfortable-motion.vim' --smooth scrolling
  --use 'kevinhwang91/nvim-hlslens'     --hightlinght search length
  --use 'kdav5758/TrueZen.nvim'         --forcus, minimize
  --use 'wfxr/minimap.vim'              --nvim minimap
  use 'junegunn/vim-easy-align'         --Easy align
  --
  use 'andymass/vim-matchup'            --better matchup
  use 'norcalli/nvim-colorizer.lua'     --Show color for color code.
  use {
      'onsails/lspkind-nvim',            --vscode-like pictograms
      config = [[require('config.lspkind')]],
  }
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  use { 'kyazdani42/nvim-tree.lua', config = [[require('config.nvim_tree')]]}

  use 'gyim/vim-boxdraw'
  use {
    'karb94/neoscroll.nvim',           --smooth scrolling
      config = [[require('config.neoscroll')]],
  }
  use 'b3nj5m1n/kommentary'             --Comment text in and out
  use 'tpope/vim-surround'              --Vim surrond
  use 'terryma/vim-multiple-cursors'    --Multiple cursor
  use {
      'junegunn/fzf.vim',
      config = [[require('config.fzf')]],
  }
  use 'junegunn/fzf'
  use 't9md/vim-quickhl'                --quick hightlight works
  use 'akinsho/nvim-toggleterm.lua'     --controll nvim terminal better.
  use 'AndrewRadev/linediff.vim'        --line diff
  use {
      'samoshkin/vim-mergetool',        --vim merge tools
      config=[[require('config.merge_tool')]],
  }
  use 'chrisbra/NrrwRgn'                --open selected region in a split windows.
  use 'dstein64/nvim-scrollview'        --scrollbar, use nvim popup
  use 'sindrets/diffview.nvim'          --git diff
  use 'tversteeg/registers.nvim'        --show nvim register
  use {
    'folke/which-key.nvim',            --show which key
  }
  use 'ap/vim-css-color'                --Preview colors
  use 'phaazon/hop.nvim'                --Easy motion for neovim
  use 'nacro90/numb.nvim'               --Preview buffer when user :{number}
  use 'godlygeek/tabular'               --Align things quickly--
  use {
      'iamcco/markdown-preview.nvim',   --Preview markdown, need yarn and nodejs support
      config = [[require('config.markdown_preview')]],
  }
  -- use 'kdheepak/lazygit.nvim'           --lazygit intergration. Require: lazygit
  use 'TimUntersberger/neogit'          --magit for neovim
  use 'kevinhwang91/nvim-bqf'           --Better quickfix window in Neovim
	use { 																--A better annotation generator
			"danymat/neogen",
			requires = "nvim-treesitter/nvim-treesitter"
	}
  use 'b0o/mapx.nvim'                   -- A better way to create key mappings in Neovim.
  use 'pierreglaser/folding-nvim'       -- LSP-Powered folding plugin.

  ------------------------------ Apperance -------------------------------------
  --Colorscheme
  --use 'morhetz/gruvbox'
  -- use 'glepnir/oceanic-material'
  -- use 'arcticicestudio/nord-vim'
  -- use 'mhartington/oceanic-next'
  use {
      'sainnhe/gruvbox-material',
  }

  --Others
  --use 'romgrk/barbar.nvim'          --Tabs, as understood by any other editor.
  use {
      'akinsho/nvim-bufferline.lua',   --top buffer, tabs.
      config = [[require('config.buffer_line')]],
  }
  use 'yamatsum/nvim-cursorline'      --ruler, performance bad
  use 'edluffy/specs.nvim'            --show cursor position, performance bad
  use 'kosayoda/nvim-lightbulb'       --VSCode bulb for neovim's built-in LSP.
  use 'kyazdani42/nvim-web-devicons'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'p00f/nvim-ts-rainbow'          --rainbow
  use 'xiyaowong/nvim-cursorword'     --Underlines the word under the cursor.
  use {
      'glepnir/galaxyline.nvim',      --statusline.
      config=[[require('config.galaxy_line')]],
  }
  use 'glepnir/dashboard-nvim'        --Startup dashboard
end)



----------------------------- neoscroll ---------------------------------------
--require'mapx'.setup{ global = true }
-- require'which-key'.setup()

-- local function neoscroll_setup()
--   require('neoscroll').setup()
-- end
--
--
-- local function treesitter_setup()
--   require('nvim-treesitter').setup{
--   highlight = {
--     enable = true,              -- false will disable the whole extension
--     disable = { "c", "rust" },  -- list of language that will be disabled
--     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
--     -- Using this option may slow down your editor, and you may see some duplicate highlights.
--     -- Instead of true it can also be a list of languages
--     additional_vim_regex_highlighting = false,
--   },
--   rainbow = {
--     enable = false,
--     -- extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
--     --max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
--   },
-- }
-- end
--
--
--
-- local function nvim_tree_setup()
-- 	require'nvim-tree'.setup {
-- 		-- disables netrw completely
-- 		disable_netrw       = true,
-- 		-- hijack netrw window on startup
-- 		hijack_netrw        = true,
-- 		-- open the tree when running this setup function
-- 		open_on_setup       = false,
-- 		-- will not open on setup if the filetype is in this list
-- 		ignore_ft_on_setup  = {},
-- 		-- closes neovim automatically when the tree is the last **WINDOW** in the view
-- 		auto_close          = false,
-- 		-- opens the tree when changing/opening a new tab if the tree wasn't previously opened
-- 		open_on_tab         = false,
-- 		-- hijacks new directory buffers when they are opened.
-- 		update_to_buf_dir   = {
-- 			-- enable the feature
-- 			enable = true,
-- 			-- allow to open the tree if it was previously closed
-- 			auto_open = true,
-- 		},
-- 		-- hijack the cursor in the tree to put it at the start of the filename
-- 		hijack_cursor       = false,
-- 		-- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
-- 		update_cwd          = false,
-- 		-- show lsp diagnostics in the signcolumn
-- 		lsp_diagnostics     = false,
-- 		-- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
-- 		update_focused_file = {
-- 			-- enables the feature
-- 			enable      = false,
-- 			-- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
-- 			-- only relevant when `update_focused_file.enable` is true
-- 			update_cwd  = false,
-- 			-- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
-- 			-- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
-- 			ignore_list = {}
-- 		},
-- 		-- configuration options for the system open command (`s` in the tree by default)
-- 		system_open = {
-- 			-- the command to run this, leaving nil should work in most cases
-- 			cmd  = nil,
-- 			-- the command arguments as a list
-- 			args = {}
-- 		},
--
-- 		view = {
-- 			-- width of the window, can be either a number (columns) or a string in `%`, for left or right side placement
-- 			width = 30,
-- 			-- height of the window, can be either a number (columns) or a string in `%`, for top or bottom side placement
-- 			height = 30,
-- 			-- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
-- 			side = 'left',
-- 			-- if true the tree will resize itself after opening a file
-- 			auto_resize = false,
-- 			mappings = {
-- 				-- custom only false will merge the list with the default mappings
-- 				-- if true, it will only use your list to set the mappings
-- 				custom_only = false,
-- 				-- list of mappings to set on the tree manually
-- 				list = {}
-- 			}
-- 		}
-- 	}
--   --vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeToggle<CR>", { silent=true, noremap= true })
--
-- end
--
-- local function status_line_setup()
--
-- local gl = require("galaxyline")
-- local gls = gl.section
--
-- gl.short_line_list = {" "}
--
-- local colors = {
--     bg = "#3c3c3c",
--     fg = "#ebdbb2",
--     green = "#b8bb26",
--     red = "#d79921",
--     lightbg = "#504945",
--     lightbg2 = "#665c54",
--     blue = "#d79921",
--     yellow = "#d79921",
--     grep = "#ebdbb2",
-- }
--
-- gls.left[2] = {
--     statusIcon = {
--         provider = function()
--             return "   "
--         end,
--         highlight = {colors.bg, colors.blue},
--         separator = "  ",
--         separator_highlight = {colors.blue, colors.lightbg}
--     }
-- }
--
-- gls.left[3] = {
--     FileIcon = {
--         provider = "FileIcon",
--         condition = buffer_not_empty,
--         highlight = {colors.fg, colors.lightbg}
--     }
-- }
--
-- gls.left[4] = {
--     FileName = {
--         provider = {"FileName"},
--         condition = buffer_not_empty,
--         highlight = {colors.fg, colors.lightbg},
--         separator = " ",
--         separator_highlight = {colors.lightbg, colors.lightbg2}
--     }
-- }
--
-- gls.left[5] = {
--     current_dir = {
--         provider = function()
--             local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
--             return "  " .. dir_name .. " "
--         end,
--         highlight = {colors.grey, colors.lightbg2},
--         separator = " ",
--         separator_highlight = {colors.lightbg2, colors.bg}
--     }
-- }
--
-- local checkwidth = function()
--     local squeeze_width = vim.fn.winwidth(0) / 2
--     if squeeze_width > 30 then
--         return true
--     end
--     return false
-- end
--
-- gls.left[6] = {
--     DiffAdd = {
--         provider = "DiffAdd",
--         condition = checkwidth,
--         icon = "  ",
--         highlight = {colors.fg, colors.bg}
--     }
-- }
--
-- gls.left[7] = {
--     DiffModified = {
--         provider = "DiffModified",
--         condition = checkwidth,
--         icon = "   ",
--         highlight = {colors.grey, colors.bg}
--     }
-- }
--
-- gls.left[8] = {
--     DiffRemove = {
--         provider = "DiffRemove",
--         condition = checkwidth,
--         icon = "  ",
--         highlight = {colors.grey, colors.bg}
--     }
-- }
--
-- gls.left[9] = {
--     DiagnosticError = {
--         provider = "DiagnosticError",
--         icon = "  ",
--         highlight = {colors.red, colors.bg}
--     }
-- }
--
-- gls.left[10] = {
--     DiagnosticWarn = {
--         provider = "DiagnosticWarn",
--         icon = "  ",
--         highlight = {colors.yellow, colors.bg}
--     }
-- }
--
-- gls.right[1] = {
--     GitIcon = {
--         provider = function()
--             return " "
--         end,
--         condition = require("galaxyline.provider_vcs").check_git_workspace,
--         highlight = {colors.grey, colors.lightbg},
--         separator = "",
--         separator_highlight = {colors.lightbg, colors.bg}
--     }
-- }
--
-- gls.right[2] = {
--     GitBranch = {
--         provider = "GitBranch",
--         condition = require("galaxyline.provider_vcs").check_git_workspace,
--         highlight = {colors.grey, colors.lightbg}
--     }
-- }
--
-- gls.right[3] = {
--     viMode_icon = {
--         provider = function()
--             return " "
--         end,
--         highlight = {colors.bg, colors.red},
--         separator = " ",
--         separator_highlight = {colors.red, colors.lightbg}
--     }
-- }
--
-- gls.right[4] = {
--     ViMode = {
--         provider = function()
--             local alias = {
--                 n = "Normal",
--                 i = "Insert",
--                 c = "Command",
--                 V = "Visual",
--                 [""] = "Visual",
--                 v = "Visual",
--                 R = "Replace"
--             }
--             local current_Mode = alias[vim.fn.mode()]
--
--             if current_Mode == nil then
--                 return "  Terminal "
--             else
--                 return "  " .. current_Mode .. " "
--             end
--         end,
--         highlight = {colors.red, colors.lightbg}
--     }
-- }
--
-- gls.right[5] = {
--     time_icon = {
--         provider = function()
--             return " "
--         end,
--         separator = "",
--         separator_highlight = {colors.green, colors.lightbg},
--         highlight = {colors.lightbg, colors.green}
--     }
-- }
--
-- gls.right[6] = {
--     time = {
--         provider = function()
--             return "  " .. os.date("%H:%M") .. " "
--         end,
--         highlight = {colors.green, colors.lightbg}
--     }
-- }
--
-- end
--
-- local function buffline_setup()
--
-- local bar_fg = "#928374"
-- local activeBuffer_fg = "#ebdbb2"
--
-- require "bufferline".setup {
--     options = {
--         -- offsets = {{filetype = "NvimTree", text = ""}},
--         offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
--         buffer_close_icon = "",
--         diagnostics = "nvim_lsp",
--         modified_icon = "",
--         close_icon = " ",
--         left_trunc_marker = "",
--         right_trunc_marker = "",
--         max_name_length = 14,
--         max_prefix_length = 13,
--         tab_size = 20,
--         show_tab_indicators = true,
--         enforce_regular_tabs = false,
--         view = "multiwindow",
--         show_buffer_close_icons = true,
--         --separator_style = "thin",
--         separator_style = "slant",
--     },
-- }
--
-- local opt = {silent = true}
-- local map = vim.api.nvim_set_keymap
-- -- vim.g.mapleader = " "
--
--
-- end
--
-- --------------------------- plugins enbale -------------------------------
--
-- -- treesitter_setup()
-- -- nvim_tree_setup()
-- -- neoscroll_setup()
-- -- status_line_setup()
-- -- buffline_setup()
-- map('n', '<localleader>t', ':NvimTreeToggle<cr>')
--
--
--
-- local plugins = setmetatable({}, {
--   __index = function(_, key)
--     init()
--     return packer[key]
--   end,
-- })
--
-- return plugins
