:set number
:set si
:set autochdir

"对齐"
:set cindent
:set smartindent
:set autoindent

"语言设置"
:set encoding=utf-8

"边框设置"
:set showmode
:set showcmd
:set title

"No"
:set noruler
:set noeb
:set nocompatible
:set noexpandtab
:set noerrorbells

"tab"
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set smarttab

"搜索增强"
:set incsearch
:set hlsearch

"补全"
:set completeopt=longest,preview,menu

"括号匹配"
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

"色彩管理"
":colorscheme koehler
:syntax enable
:set background=dark

"在底端打开终端"
:map tt <ESC>:w<CR> <ESC>:bel :ter++rows=10

"搜索TODO"
:map td /TODO<CR>

"格式化"
:map ff <ESC>gg=G
