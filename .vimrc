" Copyright (c) 2021 i314q159. All Rights Reserved.
"
" Distribute under MIT License
" See file LICENSE for detail or copy at https://opensource.org/licenses/MIT

" Theme
syntax on

" show mode
set showmode

" Show line number"
set number

" Auto change working directory"
set autochdir

" scrolloff
set scrolloff=5

" Bracket auto-complete"
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap < <><esc>i

" Indents the next line into line pervious line.  
set autoindent

" Figlet
map tx :r !figlet<space>

" f1 to open a terminal.
map <F1> <ESC>:w<CR> <ESC>:bel :ter++rows=10

" NERDTree config
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

" Vim-plug 
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
call plug#end() 
