:syntax on
:set background=dark

" sets
:set number
:set relativenumber
:set autochdir
:set encoding=utf-8
:set cindent
:set autoindent
:set showmode
:set title
:set ruler
:set wildmenu
:set laststatus=2

" show 8 lines
:set scrolloff=8

" ^no
:set noruler
:set noeb
:set nocompatible
:set noexpandtab
:set noerrorbells
:set nowrap
:set noswapfile 

" tab
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set expandtab
:set smarttab

" maps
:map td /TODO:<CR>
:map ff <ESC>gg=G
:map vs :vsplit<SPACE>
:map sp :split<SPACE>
:map S :source $MYVIMRC<CR>
" :noremap tt :bel :ter++rows=13
:noremap tt :vert term<CR>
:noremap pf :Files<CR>
:noremap <C-g> :GFiles<CR>

" vim tabbuffer
:map <C-o> :tabedit<SPACE>
:map <C-c> :tabclose<CR>
:map <C-t> :tabnext<CR>

" Allow gf to open non-existent file
:map gf :tabedit <cfile><cr>

" Quicker switching between windows
:nmap <silent> <C-h> <C-w>h
:nmap <silent> <C-j> <C-w>j
:nmap <silent> <C-k> <C-w>k
:nmap <silent> <C-l> <C-w>l

" match
" :inoremap ' ''<ESC>i
" :inoremap " ""<ESC>i
" :inoremap ( ()<ESC>i
" :inoremap [ []<ESC>i
" :inoremap { {}<ESC>i
:inoremap < <><ESC>i
:set showmatch

"netrw tree view 
let g:netrw_liststyle=3

filetype plugin indent on

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'othree/html5.vim'
Plug 'akhaku/vim-java-unused-imports'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-startify'
Plug 'rust-lang/rust.vim'
Plug 'Yggdroot/indentLine'
call plug#end()

" tpope/vim-commentary
:map <C-\> gcc

" mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd FileType html,css,jsp EmmetInstall

" itchyny/lightline.vim
" itchyny/vim-gitbranch
let g:lightline = {
            \ 'colorscheme': 'one',
            \ 'active': {
                \   'left': [ [ 'mode', 'paste' ],
                \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
                \ },
                \ 'component_function': {
                    \   'gitbranch': 'gitbranch#name'
                    \ },
                    \ }

" luochen1990/rainbow
let g:rainbow_active = 1

" rust-lang/rust.vim'
let g:rustfmt_autosave = 1

" mhinz/vim-startify
let g:startify_custom_header=0
