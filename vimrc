syntax on

set autoindent
if has('cindent')
  set cindent
endif
set expandtab
set tabstop=4

set backspace=indent,eol,start
set history=1000
set ignorecase
set smartcase

" Keep cursor position
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set laststatus=2
set number
set showmatch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set hlsearch
set ruler
set mouse=a
