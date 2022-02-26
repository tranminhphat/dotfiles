" Map the <LEADER> key to ,
let mapleader = "," 

syntax on

set noerrorbells
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set smarttab

set relativenumber
set ruler
set number

inoremap jk <ESC>
inoremap <ESC> <NOP>

:nnoremap <Leader>q" ciw""<Esc>P
:nnoremap <Leader>q' ciw''<Esc>P
:nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>

" Remove highlight
map <C-h> :nohl<CR>
