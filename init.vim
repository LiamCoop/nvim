" Fix vimrc tabbing settings, seems to be busted for some reason.
" New lines aren't starting on the right lines w/ JSX.
" plugin manager - vim-plug
call plug#begin('~/.vim/plugged')

" Functional Plugins
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Visual Plugins
Plug 'vim-airline/vim-airline'
Plug 'gruvbox-community/gruvbox'

call plug#end()


filetype on
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
filetype plugin indent on
" remaps
inoremap jk <Esc>
"inoremap ( ()<ESC>ha
"inoremap { {}<ESC>ha
"inoremap [ []<ESC>ha
"inoremap " ""<ESC>ha
"inoremap ' ''<ESC>ha
"inoremap ` ``<ESC>ha
"inoremap < <><ESC>ha

" Find files using telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Abbreviations
iabbrev af (<Right> => {<Right>
iabbrev html5  <!DOCTYPE html><CR><html lang="en"><CR><head><CR><Tab><meta charset="UTF-8"><CR><title></title><CR><Del></head><CR><Del><body><CR><CR><Del></body><CR><Del></html><CR>

colorscheme gruvbox
