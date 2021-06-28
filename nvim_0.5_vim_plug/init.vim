
call plug#begin('~/.vim/plugged') " Code completion.

  " Plug vim plug instead, packer cannot install plugin headless.
  " Plug 'wbthomason/packer.nvim'

  " ------------------------- Lsp related --------------------------------------
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate' }
  " Plug 'nvim-lua/completion-nvim'
  Plug 'hrsh7th/nvim-compe'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'rafamadriz/friendly-snippets'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'      "better lsp UI
  Plug 'folke/lsp-colors.nvim'     "lsp color
  Plug 'ray-x/lsp_signature.nvim'  "Show function signature
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'kabouzeid/nvim-lspinstall' "install language server automatically.
  Plug 'ojroques/nvim-bufdel'      "better buffer delection


  " ------------------------- Tools & Improvements -----------------------------
  "Plug 'windwp/nvim-autopairs'
  Plug 'andymass/vim-matchup'          "better matchup
  Plug 'onsails/lspkind-nvim'          "vscode-like pictograms
  Plug 'tpope/vim-fugitive'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'sheerun/vim-polyglot'
  Plug 'gyim/vim-boxdraw'
  "Plug 'yuttie/comfortable-motion.vim'  "smooth scrolling
  Plug 'karb94/neoscroll.nvim'         "smooth scrolling
  Plug 'preservim/nerdcommenter'       "Quick comment
  Plug 'tpope/vim-surround'            "Vim surrond
  Plug 'terryma/vim-multiple-cursors'  "Multiple cursor
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
  Plug 'liuchengxu/vista.vim'          "View and search LSP symbols, tags.
  Plug 't9md/vim-quickhl'              "quick hightlight works
  Plug 'akinsho/nvim-toggleterm.lua'   "controll nvim terminal better.
  Plug 'AndrewRadev/linediff.vim'      "line diff
  Plug 'samoshkin/vim-mergetool'       "vim merge tools
  "Plug 'othree/eregex.vim'             "Better regex
  "Plug 'TaDaa/vimade'                  "fades your inactive buffers..
  Plug 'chrisbra/NrrwRgn'              "open selected region in a split windows.
  Plug 'dstein64/nvim-scrollview'      "scrollbar, use nvim popup
  Plug 'sindrets/diffview.nvim'        "git diff
  Plug 'tversteeg/registers.nvim'      "show nvim register
  Plug 'kevinhwang91/nvim-hlslens'     "hightlinght search length
  "Plug 'wfxr/minimap.vim'              "nvim minimap
  Plug 'folke/which-key.nvim'          "show which key
  Plug 'kdav5758/TrueZen.nvim'         "forcus, minimize
  Plug 'ap/vim-css-color'              "Preview colors
  Plug 'junegunn/vim-easy-align'       "Easy align


  "---------------------------- Apperance -------------------------------------
  "Colorscheme
  Plug 'morhetz/gruvbox'
  Plug 'sainnhe/gruvbox-material'
  Plug 'glepnir/oceanic-material'
  Plug 'arcticicestudio/nord-vim'
  Plug 'mhartington/oceanic-next'

  "Others
  Plug 'kosayoda/nvim-lightbulb'       "VSCode bulb for neovim's built-in LSP.
  "Plug 'romgrk/barbar.nvim'           "Tabs, as understood by any other editor.
  Plug 'akinsho/nvim-bufferline.lua'   "top buffer, tabs.
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}
  "Plug 'yamatsum/nvim-cursorline'     "ruler, performance bad
  "Plug 'edluffy/specs.nvim'           "show cursor position, performance bad
  Plug 'p00f/nvim-ts-rainbow'          "rainbow
  
  Plug 'glepnir/galaxyline.nvim'       "statusline. 

call plug#end()

