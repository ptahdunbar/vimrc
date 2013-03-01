" Global vim configuration settings

" Use Vim settings.
set nocompatible

" Vundle {{{
filetype off
filetype indent plugin on

set rtp+=~/.vim/
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
" }}}

let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level = 2
let g:indent_guides_size = 1

" Load dynamic configuration {{{
for file in split(glob('~/.vim/config/*.vim'), '\n')
  exe 'source' file
endfor
" }}}

nmap <F8> :TagbarToggle<CR>

colorscheme distinguished

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

set tabstop=4
set shiftwidth=4
set expandtab

highlight CursorColumn cterm=NONE ctermbg=darkgray ctermfg=white guibg=darkgray guifg=white
nnoremap <Leer>c :set cursorline! cursorcolumn!<CR>

" That awful mixed mode with the half-tabs-are-spaces:
map \M <Esc>:set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4<CR>

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
map <Left> :echo "no!"<CR>
map <Right> :echo "no!"<CR>
map <Up> :echo "no!"<CR>
map <Down> :echo "no!"<CR>

" Tabbing like it should be
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
inoremap <Tab> <C-T>
 
" window
nmap <leader>swh  :topleft  vnew<CR>
nmap <leader>swl :botright vnew<CR>
nmap <leader>swk    :topleft  new<CR>
nmap <leader>swj  :botright new<CR>
" buffer
nmap <leader>sh   :leftabove  vnew<CR>
nmap <leader>sl  :rightbelow vnew<CR>
nmap <leader>sk     :leftabove  new<CR>
nmap <leader>sj   :rightbelow new<CR>

noremap <leader>p :CtrlP<CR>

" Fix file indention
noremap <leader>I gg=G<CR>


" Local vimrc configuration {{{
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

