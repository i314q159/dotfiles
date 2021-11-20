:syntax on
:set number
:set autochdir
:set encoding=utf-8

:set cindent
:set autoindent

:set showmode
:set title
:set ruler

"show 5 lines
:set scrolloff=5

"^no
:set noruler
:set noeb
:set nocompatible
:set noexpandtab
:set noerrorbells
:set nowrap

"tab
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set expandtab
:set smarttab

:set wildmenu
:set completeopt=longest,preview,menu

"match
:inoremap ' ''<ESC>i
:inoremap " ""<ESC>i
:inoremap ( ()<ESC>i
:inoremap [ []<ESC>i
:inoremap { {}<ESC>i
:inoremap < <><ESC>i
:set showmatch

"map
:map td /TODO:<CR>
:map ff <ESC>gg=G
:map vs :vsplit<SPACE>
:map sp :split<SPACE>
:map tt <ESC>:w<CR> <ESC>:bel :ter++rows=13

""Allow gf to open non-existent file
:map gf :edit <cfile><cr>

""Quicker switching between windows
:nmap <silent> <C-h> <C-w>h
:nmap <silent> <C-j> <C-w>j
:nmap <silent> <C-k> <C-w>k
:nmap <silent> <C-l> <C-w>l

"filetype
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

call plug#begin('~/.vim/plugged')
:source ~/.vim/plugins/html5.vim
:source ~/.vim/plugins/emmet.vim
:source ~/.vim/plugins/rainbow.vim
:source ~/.vim/plugins/lightline.vim
:source ~/.vim/plugins/nerdcommenter.vim
call plug#end()