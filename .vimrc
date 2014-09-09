set nocompatible              " be iMproved, required
filetype off                  " required

" Comment things out in Python
map _ :s/\v^(\s*)# /\1/<cr>:nohlsearch<cr>
map - :s/\v^(\s*)(.+)/\1# \2/<cr>:nohlsearch<cr>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim.git'
Plugin 'majutsushi/tagbar.git'
Plugin 'nvie/vim-flake8.git'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

"Appearance
syntax on
set number
set title
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent copyindent
set list lcs=trail:·,tab:→\ 
set colorcolumn=81
highlight colorcolumn ctermbg=red
set visualbell noerrorbells

"Search
set ignorecase smartcase
set shiftround
set showmatch
set hlsearch incsearch
nmap <silent> <C-l> :nohlsearch<CR>

set hidden
set backspace=indent,eol,start
set wildignore=*.swp,*.bak,*.pyc,*.class
set nobackup
set noswapfile

set pastetoggle=<F2>
map <F3> :Vex<CR>
map <F4> :TagbarToggle<CR>
map <F5> :!ctags -R<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

cmap w!! w !sudo tee % >/dev/null
