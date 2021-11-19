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

"search
:set incsearch
:set hlsearch

:set wildmenu
:set completeopt=longest,preview,menu

match
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

"filetype
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
call plug#end()

"nerdcommenter
:map <C-\> \cc
:map <C-]> \cu

"ale
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'

"rainbow
let g:rainbow_active = 1

"lightline
:set laststatus=2
let g:lightline = { 'colorscheme': 'one', }
:set background=dark
