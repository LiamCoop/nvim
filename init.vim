call plug#begin('~/.vim/plugged')

" Functional Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [ 'coc-tsserver' ]
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Visual Plugins
Plug 'vim-airline/vim-airline'
Plug 'gruvbox-community/gruvbox'

" Telescope Plugins
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

call plug#end()

let mapleader = " "

filetype on
filetype plugin indent on
syntax on
set relativenumber
set cursorline
set signcolumn=yes

set matchpairs+=<:>
set hidden
set noerrorbells

set tabstop=2 
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile

" coc: Some servers have issues with backup files, 
set nobackup
set nowritebackup

" coc: reduces updatetime (default = 4000 ms)
" long updatetime = poor UX
set updatetime=300

set shortmess+=c

" coc: Always show the signcolumn, otherwise it would shift text
" whenever diagnostics come / go
if has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

" coc: enable coc-prettier & coc-eslint if dirs are there
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8

set cmdheight=2

" remaps
inoremap jk <Esc>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" coc
nnoremap <silent> K :call CocAction('doHover')<CR>

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

" coc
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Abbreviations
iabbrev af (<Right> => {<Right>

colorscheme gruvbox
