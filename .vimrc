" Copyright (c) 2021 i314q159. All Rights Reserved.
"
" Distribute under MIT License
" See file LICENSE for detail or copy at https://opensource.org/licenses/MIT

" Basic 
syntax on
set showmode
set showcmd
set showmatch
set number	" Show line number"
set autochdir	" Auto change working directory"
set scrolloff=5	" scrolloff
set autoindent	" Indents the next line into line pervious line.  
set wildmenu
set wrap
set encoding=utf-8

" Windows Behavior
"" Splite Right
set splitright
map sd :vsplit<SPACE>

" Code Completion
"" Bracket auto-complete"
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i

" Open Terminal.
map tt <ESC>:w<CR> <ESC>:bel :ter++rows=10

" Quick Insert
"" Figlet
map ft :r !figlet<SPACE>

"" Date&Time
map <silent>  \dt a<C-R>=strftime("%Y/%m/%d %A %H:%M:%S")<CR>

" Quick Jump
"" TODO
map td /TODO<CR>

" Plug Setting
"" NERDTree
map ff :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

" Vim-plug 
call plug#begin('~/.vim/plugged')
"" Tree
Plug 'scrooloose/nerdtree'

call plug#end() 
