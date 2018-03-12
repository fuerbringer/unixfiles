set nocompatible

" Pathogen
execute pathogen#infect()
colorscheme default
filetype indent on
filetype plugin on
set autoread
set background=dark
set encoding=utf-8
set history=100
syntax enable
syntax on

nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

" Buffer
set hid

" Search
set ignorecase
set smartcase
set hlsearch
set wildmode=full

" Perf
set lazyredraw
set magic

" Match
set showmatch
set mat=2

" Tabulator, indent
set expandtab " spaces
set tabstop=2
set shiftwidth=2
set smarttab
set ai
set si
set wrap

set number

set noerrorbells
set novisualbell

" Temp, backup and undofiles
set backup
set backupdir=~/.vim/tempfiles/backup
set dir=~/.vim/tempfiles/swap
set undodir=~/.vim/tempfiles/undo

map <C-n> :NERDTreeToggle<CR>

map <C-l> :tabnext<CR>
map <C-h> :tabprevious<CR>

" I like pain (it's to get rid of some of my bad Vim habits)
let g:hardtime_default_on = 1
let g:list_of_normal_keys = ["-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]

" Notes
" let g:notes_directories = ['/hdd/sync/documents/notes']
