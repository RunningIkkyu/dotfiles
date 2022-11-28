local packer = nil
local map = require('config.utils').map


return require('packer').startup(function()

  --  Plug vim plug instead, packer cannot install plugin headless.
  use 'wbthomason/packer.nvim'

  --  ------------------------- Lsp related --------------------------------------
  --  use 'nvim-lua/completion-nvim'
  -- use {
  --     'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' ,
  --     config=[[require('config.treesitter')]],
  -- }
  -- Arcieved repo
  -- use {
  --     'hrsh7th/nvim-compe',
  --     config=[[require('config.nvim_compe')]],
  -- }
  --
  -- not working aftar nvim 0.5.1
  -- use 'hrsh7th/vim-vsnip-integ'
  -- use 'hrsh7th/vim-vsnip'
  -- use 'rafamadriz/friendly-snippets'
  -- use {
  --     'williamboman/nvim-lsp-installer',
  --     config=[[require('config.lsp_install')]],
  -- }
  use {
    "williamboman/mason.nvim",config=[[require('config.mason')]],
    }
  use {
    "williamboman/mason-lspconfig.nvim",config=[[require('config.mason_lspconfig')]],
    }
  use {
      'neovim/nvim-lspconfig',
       config=[[require('config.lsp_config')]],
  }
  use {
      'glepnir/lspsaga.nvim',            --better lsp UI
      config=[[require('config.lspsaga')]],
  }
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
  use {
      use 'sbdchd/neoformat',           --✨A (Neo)vim plugin for formatting code.
      config=[[require("config.neoformat")]],
  }
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
  -- use {                                 -- a code outline window
  --     'stevearc/aerial.nvim',
  --     config=[[require("config.aerial")]],
  -- }


  -- ------------------------- Tools & Improvements -----------------------------
  use 'APZelos/blamer.nvim'             --A git blame plugin for (neo)vim
  use 'lewis6991/impatient.nvim' 	--Speed up loading Lua modules to improve startup.
  use {
      'mbbill/undotree',                --The undo history visualizer for VIM
      config=[[require("config.undo_tree")]],
  }
  local use = require('packer').use


  use {
      'hrsh7th/nvim-cmp',		-- Autocompletion plugin
      config = [[require('config.nvim_cmp')]], 
  }
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

 -- use 'TaDaa/vimade'                  --fades your inactive buffers..
 -- use 'liuchengxu/vista.vim'          --View and search LSP symbols, tags.
 -- use 'othree/eregex.vim'             --Better regex
 -- use 'preservim/nerdcommenter'       --Quick comment
 -- use 'sheerun/vim-polyglot'
 -- use 'windwp/nvim-autopairs'
 -- use 'yuttie/comfortable-motion.vim' --smooth scrolling
 -- use {'kevinhwang91/nvim-hlslens',     --hightlinght search length
 --     config = [[require('config.hlslens')]],
 -- }
 -- use 'kdav5758/TrueZen.nvim'         --forcus, minimize
  --   use 'wfxr/minimap.vim'              --nvim minimap
  
  use {
      "akinsho/toggleterm.nvim",        -- manage multiple terminal windows 
      config = function() require("toggleterm").setup() end
  }
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
--   use 'b3nj5m1n/kommentary'             --Comment text in and out
  use {
    'numToStr/Comment.nvim',            -- comment plugin
    config = function()
        require('Comment').setup()
    end
}
  use 'tpope/vim-surround'              --Vim surrond
  --  use 'terryma/vim-multiple-cursors'    --Multiple cursor
  use {
      'junegunn/fzf.vim',
      config = [[require('config.fzf')]],
  }
  use 'junegunn/fzf'
  use 't9md/vim-quickhl'                --quick hightlight works
  -- use 'akinsho/nvim-toggleterm.lua'     --controll nvim terminal better.
  use 'AndrewRadev/linediff.vim'        --line diff
  use {
      'samoshkin/vim-mergetool',        --vim merge tools
      config=[[require('config.merge_tool')]],
  }
  use 'chrisbra/NrrwRgn'                --open selected region in a split windows.
  use 'dstein64/nvim-scrollview'        --scrollbar, use nvim popup
--  use 'sindrets/diffview.nvim'          --git diff
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use 'tversteeg/registers.nvim'        --show nvim register
  use {
    'folke/which-key.nvim',            --show which key
     config=[[require('config.which_key')]],
  }
  use 'ap/vim-css-color'                --Preview colors
  use {                                 --Easy motion for neovim
      'phaazon/hop.nvim',                
      config=[[require('config.hop')]],
  }
  use 'nacro90/numb.nvim'               --Preview buffer when user :{number}
  use 'godlygeek/tabular'               --Align things quickly--
  use {
      'iamcco/markdown-preview.nvim',   --Preview markdown, need yarn and nodejs support
      config = [[require('config.markdown_preview')]],
  }
  -- use 'kdheepak/lazygit.nvim'           --lazygit intergration. Require: lazygit
  use 'TimUntersberger/neogit'          --magit for neovim
  -- use 'kevinhwang91/nvim-bqf'           --Better quickfix window in Neovim
  use { 																--A better annotation generator
      "danymat/neogen",
      requires = "nvim-treesitter/nvim-treesitter"
  }
  use 'b0o/mapx.nvim'                   -- A better way to create key mappings in Neovim.
  use 'pierreglaser/folding-nvim'       -- LSP-Powered folding plugin.
  use 'edluffy/hologram.nvim'          -- A cross platform terminal image viewer for Neovim.

  use({
    "aserowy/tmux.nvim",                -- tmux integration
    config = [[require('config.tmux_nvim')]], 
  })
  use {
      "utilyre/barbecue.nvim",
      requires = {
        "neovim/nvim-lspconfig",
        "smiteshp/nvim-navic",
        "kyazdani42/nvim-web-devicons", -- optional
      },
      config = [[require('config.barbecue')]]
  }
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
      'akinsho/bufferline.nvim', 
      tag = "v2.*", 
      requires = 'kyazdani42/nvim-web-devicons',
      config = [[require('config.buffer_line')]], 
  }
  use 'yamatsum/nvim-cursorline'      --ruler, performance bad
  -- use 'edluffy/specs.nvim'            --show cursor position, performance bad
  use 'kosayoda/nvim-lightbulb'       --VSCode bulb for neovim's built-in LSP.
  use 'kyazdani42/nvim-web-devicons'
  use {
      'lukas-reineke/indent-blankline.nvim',
      config=[[require('config.indent_blankline')]],
  }
--   use {
--       'p00f/nvim-ts-rainbow',          --rainbow
--       config=[[require('config.nvim_ts_rainbow')]],
--   }
--  use 'xiyaowong/nvim-cursorword'     --Underlines the word under the cursor.
  use {
      'glepnir/galaxyline.nvim',      --statusline.
      config=[[require('config.galaxy_line')]],
  }
  use 'glepnir/dashboard-nvim'        --Startup dashboard
  -- use {
  --     'anuvyklack/pretty-fold.nvim',    -- Pretty fold (does not work)
  --     config = [[require('config.pretty_fold')]],
  -- }
  use {
      'kevinhwang91/nvim-ufo', 
      requires = 'kevinhwang91/promise-async',
      config = [[require('config.nvim_ufo')]],
  }
end)

