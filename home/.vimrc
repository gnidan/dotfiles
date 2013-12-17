set encoding=utf-8

" THIS AIN'T VI ANYMORE
set nocompatible

" Some personal preferences
set softtabstop=2
set sw=2
set tabstop=2
set expandtab
set shiftwidth=2
colorscheme desert

set autoindent
set smartindent

set formatoptions=tcroqw

" use pathogen
filetype off
call pathogen#infect()

" Word wrap two before the end of the line
set wm=2

" Buffers don't need to be saved before switching, they remember undo, etc.
set hidden

" Map leader to ,
let mapleader = ","

" Tabbed editing
nmap ,, :tabnew<CR>
nmap ,. :tabnext<CR>
nmap ., :tabpre<CR>

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

augroup RubyTests
  au!
  autocmd BufRead,BufNewFile *_test.rb,test_*.rb
    \ :nmap gt V:<C-U>!$HOME/.vim/bin/ruby-run-focused-unit-test
    \ % <C-R>=line("'<")<CR>p <CR>|
    \ :nmap gT :<C-U>!testdrb %<CR>
  autocmd BufRead,BufNewFile *_spec.rb
    \ :nmap gs V:<C-U>!$HOME/.vim/bin/ruby-run-focused-spec
    \ % <C-R>=line("'<")<CR>p <CR>|
    \ :nmap gS :<C-U>!spec %<CR>
augroup END


" always use command edit window
nnoremap : q:i
nnoremap / q/i
nnoremap ? q?i

" set ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

inoremap ii <esc>

" ex command for toggling hex mode - define mapping if desired
command -bar Hexmode call ToggleHex()

" helper function to toggle hex mode
function ToggleHex()
  " hex mode should be considered a read-only operation
  " save values for modified and read-only for restoration later,
  " and clear the read-only flag for now
  let l:modified=&mod
  let l:oldreadonly=&readonly
  let &readonly=0
  let l:oldmodifiable=&modifiable
  let &modifiable=1
  if !exists("b:editHex") || !b:editHex
    " save old options
    let b:oldft=&ft
    let b:oldbin=&bin
    " set new options
    setlocal binary " make sure it overrides any textwidth, etc.
    let &ft="xxd"
    " set status
    let b:editHex=1
    " switch to hex editor
    %!xxd
  else
    " restore old options
    let &ft=b:oldft
    if !b:oldbin
      setlocal nobinary
    endif
    " set status
    let b:editHex=0
    " return to normal editing
    %!xxd -r
  endif
  " restore values for modified and read only state
  let &mod=l:modified
  let &readonly=l:oldreadonly
  let &modifiable=l:oldmodifiable
endfunction

map <leader>h1 VypVr=
map <leader>h2 VypVr-

nnoremap <F4> :NumbersOnOff<CR>
