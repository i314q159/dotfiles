:set nu
:set autochdir
:set autoindent
:set smartindent
:set noerrorbells
:set spell
:set ts=4
:set showmode
:set showcmd
:set noexpandtab
:set mouse=a
:set ruler
:syntax on
:filetype indent on
:inoremap ' ''<ESC>i
:inoremap " ""<ESC>i
:inoremap ( ()<ESC>i
:inoremap [ []<ESC>i
:inoremap { {}<ESC>i
:inoremap < <><ESC>i
:map tt <ESC>:w<CR> <ESC>:bel :ter++rows=10
:map td /TODO<CR>
:colorscheme delek 
