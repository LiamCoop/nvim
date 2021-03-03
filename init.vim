" Fix vimrc tabbing settings, seems to be busted for some reason.
" New lines aren't starting on the right lines w/ JSX.
" plugin manager - vim-plug
call plug#begin('~/.vim/plugged')

" Functional Plugins
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'rust-lang/rust.vim'

" Visual Plugins
Plug 'vim-airline/vim-airline'
Plug 'gruvbox-community/gruvbox'

" Telescope Plugins
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'


call plug#end()


filetype on
filetype plugin indent on
syntax on
set relativenumber
set cursorline
set matchpairs+=<:>
" set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
 
set cmdheight=2

let mapleader = " "

" remaps
inoremap jk <Esc>
"inoremap ( ()<ESC>ha
"inoremap { {}<ESC>ha
"inoremap [ []<ESC>ha
"inoremap " ""<ESC>ha
"inoremap ' ''<ESC>ha
"inoremap ` ``<ESC>ha
"inoremap < <><ESC>ha

nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


" Abbreviations
iabbrev af (<Right> => {<Right>
iabbrev html5  <!DOCTYPE html><CR><html lang="en"><CR><head><CR><Tab><meta charset="UTF-8"><CR><title></title><CR><Del></head><CR><Del><body><CR><CR><Del></body><CR><Del></html><CR>

colorscheme gruvbox
