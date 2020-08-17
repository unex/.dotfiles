set nowrap
set nobackup
set noswapfile

set hlsearch    " highlight matches
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

set cursorline

" Spaces instead of tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Use ijkl for pane nav
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'RRethy/vim-illuminate'
Plug 'tpope/vim-fugitive'
Plug 'ap/vim-css-color'

call plug#end()
