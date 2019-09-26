set nocompatible    " be iMproved, required
filetype off        " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'dietsche/vim-lastplace'
Plugin 'nathanaelkane/vim-indent-guides'
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

" vim-gitgutter
set updatetime=250

" vim-indent-guides
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
let g:indetn_guides_color_change_percent=1
