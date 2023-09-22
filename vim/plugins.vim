filetype off

set rtp+=~/.fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" vim main plugins
Plugin 'editorconfig/editorconfig-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'inkarkat/vim-ingo-library'
Plugin 'inkarkat/vim-mark'
Plugin 'jpetrie/vim-counterpoint'
Plugin 'mattn/calendar-vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-repeat'
Plugin 'vimwiki/vimwiki'
Plugin 'rhysd/vim-clang-format'

Plugin 'jesseleite/vim-agriculture'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'kien/ctrlp.vim'
if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --follow --color=never --hidden --no-ignore --glob "!.git/*"'
elseif executable("ag")
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme="base16_tomorrow"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0

" tmux integration
Plugin 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'

" extra language support
Plugin 'neoclide/coc.nvim'
source ~/.vim/coc.vim
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-markdown'
Plugin 'tkztmk/vim-vala'
Plugin 'posva/vim-vue'
Plugin 'udalov/kotlin-vim'

" rust
Plugin 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

" togglable panels
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

" orgmode
Plugin 'jceb/vim-orgmode'
let g:org_agenda_files = ['~/org/*.org']
let g:org_indent = 1


" Colorschemes
Plugin 'dracula/vim'
Plugin 'jdkanani/vim-material-theme'
Plugin 'lifepillar/vim-solarized8'
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on
