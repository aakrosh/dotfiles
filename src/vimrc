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

" markdown settings
au BufNewFile,BufReadPost *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
au BufNewFile,BufReadPost,BufWrite *.{md,mdown,mkd,mkdn,markdown,mdwn} syntax match Comment /\%^---\_.\{-}---$/
au FileType markdown setlocal spell        " Spellchecking for Markdown
au FileType markdown setlocal linebreak
au FileType markdown setlocal nolist       " Make sure linebreak work as expected
au FileType markdown setlocal textwidth=0  " Remove text width limit
