set completeopt=menu,menuone,noselect
syntax enable
filetype plugin on

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

colorscheme  tokyonight

let g:rust_recommended_style = 0
highlight! link DiagnosticInfo DiagnosticSignInfo 
highlight! link DiagnosticError DiagnosticSignError
highlight! link DiagnosticWarn DiagnosticSignWarn
highlight! link DiagnosticHint DiagnosticSignHint
lua require('init')


