filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'

" vim main plugins
Plugin 'editorconfig/editorconfig-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'idbrii/vim-mark'
Plugin 'jpetrie/vim-counterpoint'
Plugin 'mattn/calendar-vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-repeat'
Plugin 'vimwiki/vimwiki'

Plugin 'kien/ctrlp.vim'
if executable("ag")
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme="dark"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0

" tmux integration
Plugin 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'

" extra language support
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-markdown'
Plugin 'tkztmk/vim-vala'
Plugin 'posva/vim-vue'

" togglable panels
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

" orgmode
Plugin 'jceb/vim-orgmode'
let g:org_agenda_files = ['~/org/*.org']
let g:org_indent = 1

" Rust
Plugin 'rust-lang/rust.vim'

" Colorschemes
Plugin 'dracula/vim'
Plugin 'jdkanani/vim-material-theme'
Plugin 'lifepillar/vim-solarized8'
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on
