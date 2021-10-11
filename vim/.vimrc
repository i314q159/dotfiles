:set number
:set autochdir

:set cindent
:set autoindent

:set encoding=utf-8

:set showmode
:set cmdheight=1
:set title
:set ruler

"No
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

"match
:inoremap ' ''<ESC>i
:inoremap " ""<ESC>i
:inoremap ( ()<ESC>i
:inoremap [ []<ESC>i
:inoremap { {}<ESC>i
:inoremap < <><ESC>i
:set showmatch

"closetag
let g:closetag_html_style=1
":set colorcolumn=120
"用浅色高亮当前行
:autocmd InsertLeave * se nocul
:autocmd InsertEnter * se cul

:syntax on
"":set background=dark

"map
:map td /TODO<CR>
:map ff <ESC>gg=G
:map <C-j> <ESC>:w<CR> <ESC>:bel :ter++rows=10

"filetype
:filetype on
:filetype plugin on

"autocmd VimEnter * PlugInstall --sync | source $MYVIMR
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
call plug#end()

"nerftree
:map <C-t> :NERDTreeToggle<CR>

"nerdcommenter
:map <C-\> \cc
:map <C-]> \cu

"ale
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'

"rainbow
let g:rainbow_active = 1
