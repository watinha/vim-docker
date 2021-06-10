syn on
set number
set autoindent
set showmode
set ruler
set autoread
set ts=2
set expandtab
set smarttab
set sw=2
set sm
set showcmd
filetype plugin indent on
set report=0
set scroll=5
set backupdir=~/.vim/.backup/,.
set title
set cursorline
colorscheme onedark
hi CursorLine   cterm=NONE ctermbg=black
set showmatch
autocmd BufWritePre * :%s/\s\+$//e
set showcmd
set wildmenu
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set ignorecase
set incsearch
set hlsearch
set wildignore=*.swp,*.bak,*.pyc,*.class
set smartindent

set ttimeoutlen=50
set nocompatible
execute pathogen#infect()
