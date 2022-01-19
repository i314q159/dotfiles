:syntax on

"sets
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
:set completeopt=longest,preview,menu

""show 5 lines
:set scrolloff=8

""^no
:set noruler
:set noeb
:set nocompatible
:set noexpandtab
:set noerrorbells
:set nowrap

""tab
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set expandtab
:set smarttab

"maps
:map td /TODO:<CR>
:map ff <ESC>gg=G
:map vs :vsplit<SPACE>
:map sp :split<SPACE>
:map S :source $MYVIMRC<CR>
:noremap tt :bel :ter++rows=13
:noremap pf :Files<CR>
:noremap <C-p> :GFiles<CR>

"vim tab
:map <C-o> :tabedit<SPACE>
:map <C-c> :tabclose<CR>
:map <C-t> :tabnext<CR>

""Allow gf to open non-existent file
:map gf :tabedit <cfile><cr>

""Quicker switching between windows
:nmap <silent> <C-h> <C-w>h
:nmap <silent> <C-j> <C-w>j
:nmap <silent> <C-k> <C-w>k
:nmap <silent> <C-l> <C-w>l

""match
":inoremap ' ''<ESC>i
":inoremap " ""<ESC>i
":inoremap ( ()<ESC>i
":inoremap [ []<ESC>i
":inoremap { {}<ESC>i
:inoremap < <><ESC>i
:set showmatch

"file type
filetype plugin indent on

"vim-plug
call plug#begin('~/.vim/plugged')
:source ~/.vim/plugins/html5.vim
:source ~/.vim/plugins/emmet.vim
:source ~/.vim/plugins/rainbow.vim
:source ~/.vim/plugins/lightline.vim
:source ~/.vim/plugins/nerdcommenter.vim
:source ~/.vim/plugins/fzf.vim
:source ~/.vim/plugins/auto-pairs.vim
:source ~/.vim/plugins/rust.vim
:source ~/.vim/plugins/mkdir.vim
:source ~/.vim/plugins/java-unused-imports.vim
:source ~/.vim/plugins/startify.vim
:source ~/.vim/plugins/fugitlive.vim
call plug#end()
