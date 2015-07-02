filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Bundle "gmarik/vundle"

" vim main plugins
Bundle "flazz/vim-colorschemes"
Bundle "kien/ctrlp.vim"
Bundle "scrooloose/syntastic.git"
Bundle "bling/vim-airline"
Bundle "tpope/vim-fugitive"
Bundle "rking/ag.vim"

" togglable panels
Bundle "scrooloose/nerdtree"

call vundle#end()
filetype plugin indent on
