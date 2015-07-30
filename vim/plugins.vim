filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Bundle "gmarik/vundle"

" vim main plugins
Bundle "flazz/vim-colorschemes"
Bundle 'ntpeters/vim-better-whitespace'
Bundle "kien/ctrlp.vim"
Bundle "bling/vim-airline"
Bundle "tpope/vim-fugitive"
Bundle "rking/ag.vim"
Bundle "idbrii/vim-mark"
Bundle "scrooloose/nerdcommenter"
Plugin 'chazy/cscope_maps'

" YCM
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

" tmux integration
Plugin 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'

" extra language support
Plugin 'tkztmk/vim-vala'
Plugin 'tpope/vim-markdown'

" togglable panels
Bundle "scrooloose/nerdtree"
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on
