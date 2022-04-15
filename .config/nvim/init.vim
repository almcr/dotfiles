" list of plugins.
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-surround'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}

" lsp related
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'simrat39/rust-tools.nvim'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'williamboman/nvim-lsp-installer'
Plug 'onsails/lspkind-nvim'
Plug 'folke/lsp-colors.nvim'
" Plug 'folke/trouble.nvim'
" Plug 'windwp/nvim-autopairs'
Plug 'nvim-lualine/lualine.nvim'

" themes
Plug 'altercation/vim-colors-solarized'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'rakr/vim-one'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" others
Plug 'ap/vim-css-color'
Plug 'vuciv/vim-bujo'
call plug#end()

set completeopt=menu,menuone,noselect
syntax enable
filetype plugin on

nnoremap <A-m> ;

nnoremap ; :
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
nnoremap <C-s> <cmd>w<CR>
" nnoremap <C-S> <Plug>BujoAddnormal
" inoremap <C-S> <Plug>BujoAddinsert
nmap <C-Q> <Plug>BujoChecknormal
imap <C-Q> <Plug>BujoCheckinsert
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

imap <C-l> <Del>
nnoremap <A-q> <cmd>q<CR>

" Expand
" imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
" imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'


set number relativenumber
" set acd " auto change directory
set cmdheight=1
set cursorline
set nohlsearch
set nowrap
set signcolumn=yes
set splitbelow
set splitright

if has('termguicolors')
  set termguicolors
endif

" mouse cursor
set mouse=n


" tab behaviour
set shiftwidth=2  " operation >> indents 2 columns; << unindents 2 columns
set tabstop=2     " a hard TAB displays as 2 columns
set softtabstop=2 " insert/delete 2 spaces when hitting a TAB/BACKSPACE
set expandtab


" gruvbox-material config
" available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background="medium"
let g:gruvbox_material_sign_column_background="none"

colorscheme  gruvbox-material

let g:rust_recommended_style = 0
highlight! link DiagnosticInfo DiagnosticSignInfo 
highlight! link DiagnosticError DiagnosticSignError
highlight! link DiagnosticWarn DiagnosticSignWarn
highlight! link DiagnosticHint DiagnosticSignHint
lua require('init')


