filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Bundle "gmarik/vundle"

" vim main plugins
Bundle "flazz/vim-colorschemes"
Bundle 'ntpeters/vim-better-whitespace'
Bundle "kien/ctrlp.vim"
Bundle "scrooloose/syntastic.git"
Bundle "bling/vim-airline"
Bundle "tpope/vim-fugitive"
Bundle "rking/ag.vim"
Bundle "idbrii/vim-mark"
Plugin 'Valloric/YouCompleteMe'

" extra language support
Plugin 'tkztmk/vim-vala'
Plugin 'tpope/vim-markdown'

" togglable panels
Bundle "scrooloose/nerdtree"

call vundle#end()
filetype plugin indent on
