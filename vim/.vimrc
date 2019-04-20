set nocompatible

" Pathogen
execute pathogen#infect()
colorscheme elflord
filetype indent on
filetype plugin on
syntax enable
syntax on

set autoread
set background=dark
set encoding=utf-8
set history=100

" Allows hiding buffers even though they contain modifications which have not
" yet been written back to the associated file.
set hid

" Search
set ignorecase smartcase hlsearch wildmode=full

" Match
set showmatch mat=2

" Tabulator, indent
set expandtab " spaces
set tabstop=2
set shiftwidth=2
set smarttab ai si wrap

set relativenumber number

set noerrorbells novisualbell

" Temp, backup and undofiles
set backup
set backupdir=~/.vim/tempfiles/backup
set dir=~/.vim/tempfiles/swap
set undodir=~/.vim/tempfiles/undo

map <C-n> :NERDTreeToggle<CR>
