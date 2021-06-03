-------------------------------------------------------------------------------
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  ------------------------- Lsp related --------------------------------------
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  --use 'nvim-lua/completion-nvim'
  use "hrsh7th/nvim-compe"
  use 'hrsh7th/vim-vsnip-integ'
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/vim-vsnip"
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'      -- better lsp UI
  use 'folke/lsp-colors.nvim'     -- lsp color
  use 'ray-x/lsp_signature.nvim'  -- Show function signature
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'kabouzeid/nvim-lspinstall' -- install language server automatically.
  use 'ojroques/nvim-bufdel'      -- better buffer delection


  ------------------------- Tools & Improvements -----------------------------
  use "windwp/nvim-autopairs"
  use {'andymass/vim-matchup', event = 'VimEnter'} -- better matchup
  use 'onsails/lspkind-nvim'          -- vscode-like pictograms
  use 'tpope/vim-fugitive'
  use "lewis6991/gitsigns.nvim"
  use 'kyazdani42/nvim-tree.lua'
  use 'sheerun/vim-polyglot'
  use 'gyim/vim-boxdraw'
  -- use 'yuttie/comfortable-motion.vim'  -- smooth scrolling
  use 'preservim/nerdcommenter'       -- Quick comment
  use 'tpope/vim-surround'            -- Vim surrond
  use 'terryma/vim-multiple-cursors'  -- Multiple cursor
  use {'junegunn/fzf', requires = {'junegunn/fzf.vim'}}
  use 'liuchengxu/vista.vim'          -- View and search LSP symbols, tags.
  use 't9md/vim-quickhl'              -- quick hightlight works
  use 'akinsho/nvim-toggleterm.lua'   -- controll nvim terminal better.
  use 'AndrewRadev/linediff.vim'      -- line diff
  use 'samoshkin/vim-mergetool'       -- vim merge tools
  -- use 'othree/eregex.vim'             -- Better regex
  -- use 'TaDaa/vimade'                  -- fades your inactive buffers..
  use 'chrisbra/NrrwRgn'              -- open selected region in a split windows.
  use 'dstein64/nvim-scrollview'      -- scrollbar, use nvim popup
  use 'sindrets/diffview.nvim'        -- git diff
  use "tversteeg/registers.nvim"      -- show nvim register
  use {'kevinhwang91/nvim-hlslens'}   -- hightlinght search length
  use 'wfxr/minimap.vim'              -- nvim minimap
  use "folke/which-key.nvim"          -- show which key
  use "kdav5758/TrueZen.nvim"         -- forcus, minimize


  ---------------------------- Apperance -------------------------------------
  -- Colorscheme
  use 'morhetz/gruvbox'
  use 'sainnhe/gruvbox-material'
  use 'glepnir/oceanic-material'
  use 'arcticicestudio/nord-vim'
  use 'mhartington/oceanic-next'

  -- Others
  use 'kosayoda/nvim-lightbulb'       -- VSCode bulb for neovim's built-in LSP.
  -- use 'romgrk/barbar.nvim'         -- Tabs, as understood by any other editor.
  use "akinsho/nvim-bufferline.lua"   -- top buffer, tabs.
  use 'karb94/neoscroll.nvim'         -- smooth scrolling
  use 'kyazdani42/nvim-web-devicons'
  use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua',}   -- indent line
  -- use 'yamatsum/nvim-cursorline'   -- ruler, performance bad
  -- use 'edluffy/specs.nvim'         -- show cursor position, performance bad
  use 'p00f/nvim-ts-rainbow'          -- rainbow
  
  use "glepnir/galaxyline.nvim"       -- statusline. 
  -- use 'hoob3rt/lualine.nvim',
  -- use 'nvim-lua/lsp-status.nvim'
  -- use { 'vim-airline/vim-airline', requires = {'vim-airline/vim-airline-themes' }}
end)
-------------------------------------------------------------------------------
