return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'-- Packer can manage itself
  use {'junegunn/fzf', dir = '~/.fzf', use = './install --all' }
  use 'easymotion/vim-easymotion'
  use 'justinmk/vim-sneak'
  -- use 'mg979/vim-visual-multi'
  use 'tpope/vim-surround'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', use = 'make'}
 
-- lsp related
  use 'neovim/nvim-lspconfig' -- language server protocol 
  use 'mfussenegger/nvim-dap' -- debuger adapter protocol
  use 'hrsh7th/cmp-nvim-lsp'  -- completion engine for lsp
  use 'hrsh7th/nvim-cmp'      -- completion source for neovim
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind-nvim'
  use 'simrat39/rust-tools.nvim'
  use 'folke/trouble.nvim'
--   use 'hrsh7th/cmp-nvim-lua'
  use 'williamboman/nvim-lsp-installer'
--   use 'folke/lsp-colors.nvim'


  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

-- themes
  use 'altercation/vim-colors-solarized'
  use {'folke/tokyonight.nvim', branch = 'main'}
  use 'rakr/vim-one'
  use 'sainnhe/gruvbox-material'
  use 'sainnhe/everforest'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'romgrk/barbar.nvim'
  use 'nvim-lualine/lualine.nvim'

-- others
  use 'ap/vim-css-color'
end)
