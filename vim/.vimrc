:set number
:set si
:set autochdir

:set cindent
:set autoindent 
:set smartindent 

:set showmode
:set showcmd

:set ruler
:set title

:set noeb
:set nocompatible
:set noexpandtab
:set noerrorbells

:set tabstop=4

:set showcmd
:set completeopt=longest,preview,menu

:inoremap ' ''<ESC>i
:inoremap " ""<ESC>i
:inoremap ( ()<ESC>i
:inoremap [ []<ESC>i
:inoremap { {}<ESC>i
:inoremap < <><ESC>i

:autocmd InsertLeave * se nocul
:autocmd InsertEnter * se cul

:colorscheme murphy 
:syntax on
:filetype on

"open a bel ter"
:map tt <ESC>:w<CR> <ESC>:bel :ter++rows=10

:map td /TODO<CR>
