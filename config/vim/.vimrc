 " Map the <LEADER> key to ,
let mapleader = ","

" Plugin
call plug#begin()
" Vim enhancements
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire'
Plug 'justinmk/vim-sneak'
Plug 'andymass/vim-matchup'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'
call plug#end()

" Set commands
" Load vim-sensible plugin earlier so that we can override them in below
runtime! plugin/sensible.vim
set noerrorbells
set nowrap
set nobackup
set noswapfile
set undofile
set smartcase
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
set backspace=indent,eol,start
set cursorline
set hidden
set nocompatible
set pastetoggle=<F3>
set mouse=a
set showcmd
set noshowmode

" Map escape to jk
:imap jk <Esc>

" Remove highlight
map <C-h> :nohl<CR>

" Mappings for moving lines and preserving indentation
" " http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Tabs
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>

" Buffers
nmap <S-Tab> :bp<Return>
nmap <Tab> :bn<Return>
nmap <leader>q <Plug>Kwbd

" Windows
" Split window
nmap <leader>ss :split<Return><C-w>w
nmap <leader>sv :vsplit<Return><C-w>w
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-

" File explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_browse_split = 4
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

" GUI enhancements
syntax on
set background=dark
set termguicolors
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-gruvbox-dark-hard
hi CursorLineNr cterm=NONE
call Base16hi("Comment", g:base16_gui09, "", g:base16_cterm09, "", "", "") " Make comments more prominent -- they are important.
