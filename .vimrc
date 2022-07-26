" Map the <LEADER> key to ,
let mapleader = ","

" Colorscheme
syntax on
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox


" Set commands
" Load vim-sensible plugin earlier so that we can override them in below
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
set showcmd
set hidden
set nocompatible
set pastetoggle=<F3>
set mouse=a

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

" Windows
" Split window
nmap <leader>ss :split<Return><C-w>w
nmap <leader>sv :vsplit<Return><C-w>w
" Navigate between window
map <leader>sh <C-w>h
map <leader>sk <C-w>k
map <leader>sj <C-w>j
map <leader>sl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-

" NERDtree
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <C-o> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Airline
let g:airline#extensions#tabline#enabled = 1

" fzf
noremap ` :Files<CR>
noremap ; :Buffers<CR>
let g:fzf_layout = { 'down': '~40%' }
let g:fzf_preview_window = []

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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
call plug#end()
