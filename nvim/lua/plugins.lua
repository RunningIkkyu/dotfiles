-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

-------------------------------------------------------------------------------
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use '9mm/vim-closer'

  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}

  -- completion-nvim is an auto completion framework that aims to provide a
  -- better completion experience with neovim's built-in LSP. Other LSP
  -- functionality is not supported.
  -- use {
  --   'nvim-lua/completion-nvim',
  --   opt = true,
  --   requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  -- }
  use 'nvim-lua/completion-nvim'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

  -- Local plugins can be included
  -- use '~/projects/personal/hover.nvim'

  -- Plugins can have post-install/update hooks
  -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Post-install/update hook with call of vimscript function with argument
  -- use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  -- Use specific branch, dependency and run lua file after load
  -- use {
  --  'glepnir/galaxyline.nvim',
  --   branch = 'main',
  --   -- your statusline
  --   config = function() require'my_statusline' end,
  --   -- some optional icons
  --   requires = {'kyazdani42/nvim-web-devicons', opt = true}
  -- }
  
  -- This is a Neovim plugin/library for generating statusline components from
  -- the built-in LSP client. 
  -- not working
  -- use 'nvim-lua/lsp-status.nvim'

  -- use {
	-- 	  'vim-airline/vim-airline',
	-- 	   requires = {'vim-airline/vim-airline-themes' }
  -- }

  use 'sheerun/vim-polyglot'
  use 'gyim/vim-boxdraw'

  -- Quick comment
  use 'preservim/nerdcommenter'

  -- Bring smooth scrolling to vim.
  -- use 'yuttie/comfortable-motion.vim'
  use 'karb94/neoscroll.nvim'

  -- Vim surrond
  use 'tpope/vim-surround'
  
  -- Multiple cursor
  use 'terryma/vim-multiple-cursors'

  use {
    'junegunn/fzf',
    requires = {'junegunn/fzf.vim'}
  }

  use 'neovim/nvim-lspconfig'
  -- A light-weight lsp plugin based on neovim built-in lsp with highly a performant UI.
  use 'glepnir/lspsaga.nvim'

  -- lsp color
  use 'folke/lsp-colors.nvim'


  -- This tiny plugin adds vscode-like pictograms to neovim built-in lsp:
  use 'onsails/lspkind-nvim'

  -- Show function signature when you types
  use {
    "ray-x/lsp_signature.nvim",
  }

  -- VSCode bulb for neovim's built-in LSP.
  use 'kosayoda/nvim-lightbulb'


  -- Colorscheme
  use 'morhetz/gruvbox'
  use 'sainnhe/gruvbox-material'
  use 'glepnir/oceanic-material'
  use 'arcticicestudio/nord-vim'
  use 'mhartington/oceanic-next'

  -- A plugin to configure Neovim LSP using json files like coc-settings.json.
  -- tamago324/nlsp-settings.nvim

  -- View and search LSP symbols, tags.
  use 'liuchengxu/vista.vim'

  -- Tabs, as understood by any other editor.
  use 'romgrk/barbar.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- a highly extendable fuzzy finder over lists. Built on the latest awesome
  -- features from neovim core.
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- indent line
  use {
    'lukas-reineke/indent-blankline.nvim',
    branch = 'lua',
  }
  use 'yamatsum/nvim-cursorline'

  use {
    'kyazdani42/nvim-tree.lua',
  }

  use {
    'tpope/vim-fugitive',
  }

  -- A blazing fast and easy to configure neovim statusline written in pure
  -- lua.
  --
  use {
    'hoob3rt/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

  -- install language server automatically.
  use 'kabouzeid/nvim-lspinstall'


end)
-------------------------------------------------------------------------------
