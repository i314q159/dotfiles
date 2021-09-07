:set number
:set autochdir

:set cindent
:set autoindent

:set encoding=utf-8

:set showmode
:set cmdheight=1
:set title
:set ruler

"No"
:set noruler
:set noeb
:set nocompatible
:set noexpandtab
:set noerrorbells
:set nowrap

"tab"
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set smarttab

:set incsearch
:set hlsearch

:set wildmenu
:set completeopt=longest,preview,menu

:inoremap ' ''<ESC>i
:inoremap " ""<ESC>i
:inoremap ( ()<ESC>i
:inoremap [ []<ESC>i
:inoremap { {}<ESC>i
:inoremap < <><ESC>i
:set showmatch

"用浅色高亮当前行"
:autocmd InsertLeave * se nocul
:autocmd InsertEnter * se cul

:syntax on
"":set background=dark

:map td /TODO<CR>
:map ff <ESC>gg=G
:map <C-j> <ESC>:w<CR> <ESC>:bel :ter++rows=10<CR>

:filetype on
:filetype plugin on

""autocmd VimEnter * PlugInstall --sync | source $MYVIMR
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
call plug#end()

""nerftree
:map <C-n> :NERDTreeToggle<CR>

""vim-airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
