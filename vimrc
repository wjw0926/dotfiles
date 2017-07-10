set nocompatible    " be iMproved, required
filetype off        " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/youcompleteme'
Plugin 'raimondi/delimitmate'
Plugin 'scrooloose/nerdcommenter'
call vundle#end()

filetype plugin indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

if has('cindent')
    set cindent
endif

set autoindent
set expandtab
set shiftwidth=4
set tabstop=4

set backspace=indent,eol,start
set history=1000
set ignorecase
set smartcase
set nobackup

set laststatus=2
set number
set showmatch
set hlsearch
set ruler
set mouse=a

" vim-colors-solarized
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" vim-gitgutter
set updatetime=250
