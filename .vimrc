" Global vim configuration settings

" Use Vim settings.
set nocompatible

" Vundle {{{
filetype off
filetype indent plugin on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
" }}}

syntax on
" show number column
set number
set numberwidth=3
set mouse=a
set ruler
set encoding=utf-8
set laststatus=2
set showtabline=2
" show (partial) command in the status line
set showcmd

" current mode in status line
set showmode

" indicate when a line is wrapped by prefixing wrapped line with '> '
set showbreak=>\ 

" highlight search matches
" set hlsearch

" highlight position of cursor
"set cursorline
"set cursorcolumn

" fast terminal for smoother redrawing
set ttyfast

" show matching enclosing chars for .1 sec
set showmatch
set matchtime=1

" case insensitive search if all lowercase
set ignorecase smartcase

" turn off swap files
set noswapfile

set scrolloff=120
" TODO: create a command to easily switch between nu/rnu
set rnu " Show relative line numbers.

" Long lines slow vim down; this prevents it
set synmaxcol=512

set tags=./tags,~/.vim/tags/common.tags
set tags+=~/.vim/tags/zf1.tags
set tags+=~/.vim/tags/zf2.tags
set tags+=~/.vim/tags/wptrunk.tags

" a - terse messages (like [+] instead of [Modified]
" t - truncate file names
" I - no intro message when starting vim fileless
" T - truncate long messages to avoid having to hit a key
set shortmess=atTI

" Disable arrow keys
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

" Local vimrc configuration {{{
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
" }}}

" Local dynamic configuration {{{
for file in split(glob('~/.vim/config/*.vim'), '\n')
  exe 'source' file
endfor
" }}}
