set nocompatible

" Pathogen
" execute pathogen#infect()
set encoding=utf-8
colorscheme default
syntax enable
syntax on
set background=dark
set history=100
filetype plugin on
filetype indent on
set autoread

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

" autocomplete brackets
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>

map <C-n> :NERDTreeToggle<CR>
map rp :bn <Bar> w! <Bar> bp<CR>
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" Emmet
" let g:user_emmet_leader_key='<c-e>'

" Autosave
"let g:auto_save_write_all_buffers = 1
"let g:auto_save = 1

" Notes
" let g:notes_directories = ['/hdd/sync/documents/notes']
