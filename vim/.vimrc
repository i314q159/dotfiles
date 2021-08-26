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

"4 character as a tab"
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set smarttab

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

:map <C-l> <C-W>l "C-l 移动到右侧窗口"
:map <C-h> <C-W>h "C-h 移动到左侧窗口"
:map <C-j> <C-W>j "C-j 移动到下方窗口"
:map <C-k> <C-W>k "C-k 移动到上方窗口"
