return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself

  use { 'junegunn/fzf', dir = '~/.fzf', use = './install --all' }
  use 'easymotion/vim-easymotion'
  use 'justinmk/vim-sneak'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use { 'nvim-telescope/telescope-fzf-native.nvim', use = 'make' }
  use 'tpope/vim-fugitive' -- vim with git integration
  use 'github/copilot.vim' -- vim copilot
  use 'folke/todo-comments.nvim'

  -- lsp related
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind-nvim'
  use 'simrat39/rust-tools.nvim'
  use 'folke/trouble.nvim'
  use 'williamboman/nvim-lsp-installer'
  use 'RRethy/vim-illuminate'
  use 'simrat39/symbols-outline.nvim'
  use 'SmiteshP/nvim-navic'
  use 'folke/lsp-colors.nvim'


  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'

  -- themes
  use { 'folke/tokyonight.nvim', branch = 'main' }
  use 'sainnhe/gruvbox-material'
  use 'sainnhe/everforest'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'romgrk/barbar.nvim'
  use 'nvim-lualine/lualine.nvim'

  -- others
  use 'windwp/nvim-autopairs'
  use { 'rrethy/vim-hexokinase', run = 'make hexokinase' }
end)
