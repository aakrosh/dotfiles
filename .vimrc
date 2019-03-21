execute pathogen#infect()

" I want the terminal to allow faster cursor movement
set ttyfast

" backspace for deletion in insert mode
set backspace=indent,eol,start

"ruler on the side
set ruler

" disable the visual bell
set noeb vb t_vb=

"tab is only 4 spaces
set expandtab
set tabstop=4

" syntax related
syntax on

" search related
set smartcase
set incsearch
set hlsearch

filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins
