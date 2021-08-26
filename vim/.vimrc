:set nu
:set si
:set autochdir
:set autoindent
:set cindent
:set smartindent
:set noerrorbells
:set spell
:set ts=4
:set showmode
:set showcmd
:set noexpandtab
:set ruler
:set title
:set noeb
:set nocompatible 
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set showcmd
set completeopt=longest,preview,menu

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
:filetype indent on

:map tt <ESC>:w<CR> <ESC>:bel :ter++rows=10
:map td /TODO<CR>
