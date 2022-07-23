" Map the <LEADER> key to ,
let mapleader = ","

" Colorscheme
syntax on
autocmd vimenter * ++nested colorscheme gruvbox

" Load vim-sensible plugin earlier so that we can override them in below
" " See https://github.com/tpope/vim-sensible#faq
runtime! plugin/sensible.vim

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
set backspace=indent,eol,start
set cursorline

" Map escape to jk
:imap jk <Esc>

" Remove highlight
map <C-h> :nohl<CR>

" Tabs
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

" Windows

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Navigate between window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-

" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeShowBookmarks=1

let g:airline#extensions#tabline#enabled = 1

" Plugin
call plug#begin()
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'justinmk/vim-sneak'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-indent'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
call plug#end()
