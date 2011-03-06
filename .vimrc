" THIS AIN'T VI ANYMORE
set nocompatible

" Some personal preferences
set softtabstop=2
set sw=2
set tabstop=2
set expandtab
colorscheme desert

set autoindent
set smartindent

set formatoptions=tcroqw

" Word wrap two before the end of the line
set wm=2

" Buffers don't need to be saved before switching, they remember undo, etc.
set hidden

" Map leader to ,
let mapleader = " "

" Longer history memory for searches, etc.
set history=1000

" Get better matching with %
runtime macros/matchit.vim

" Set the backup directory to save swp files all in one place
set backupdir=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" maintain a constant zz state, second call will toggle it back off
map <Leader>zz :let &scrolloff=999-&scrolloff<CR>

" Use the ruler
set ruler


" Some stuff that's probably default
set backspace=indent,eol,start
syntax on
filetype on
filetype plugin on
filetype indent on
set hlsearch
set incsearch

" Prevents Vim 7.0 from setting filetype to 'plaintex'
let g:tex_flavor='latex'

" Don't annoy everyone else in the room!
set visualbell

" screen!
let &titlestring = "[vim(" . expand("%:t") . ")]"
if &term == "screen"
  let &titlestring = "vim"
  set t_ts=k
  set t_fs=\
endif
if &term == "screen" || &term == "xterm"
  set title
endif

set pastetoggle=<F2>

map <LEADER>n :call ReloadSnippets(a:snippets_dir &ft)<CR>
