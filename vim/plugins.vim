filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'

" vim main plugins
Plugin 'flazz/vim-colorschemes'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-dispatch'
Plugin 'rking/ag.vim'
Plugin 'idbrii/vim-mark'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jpetrie/vim-counterpoint'
Plugin 'vimwiki/vimwiki'

Plugin 'kien/ctrlp.vim'
if executable("ag")
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

Plugin 'bling/vim-airline'
let g:airline_theme="dark"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0

" tmux integration
Plugin 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'

" extra language support
Plugin 'tkztmk/vim-vala'
Plugin 'tpope/vim-markdown'

" togglable panels
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on
