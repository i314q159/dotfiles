" Copyright (c) 2021 i314q159. All Rights Reserved.
"
" Distribute under MIT License
" See file LICENSE for detail or copy at https://opensource.org/licenses/MIT


" Enable syntax highlighting.
syntax on

" Show line number.
set number

" Auto change working directory.
set autochdir

" Bracket auto-complete.
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap < <><esc>i

" Indents the next line into line pervious line.  
set autoindent

" f1 to open a terminal.
map <F1> <ESC>:w<CR> <ESC>:bel :ter++rows=15