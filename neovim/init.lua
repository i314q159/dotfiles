-- number
vim.o.number = true
vim.o.relativenumber = true

-- theme
vim.o.background = 'dark'
vim.o.cursorline = true
vim.o.termguicolors = true
vim.o.wildmenu = true

-- utf8
vim.g.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'

-- file autoread
vim.o.autoread = true

-- wrap
vim.o.wrap = true

-- backup
vim.o.backup = false
vim.o.swapfile = false
vim.o.writebackup = false

-- mouse
vim.o.mouse = false

-- tab
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.shiftround = true
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.o.tabstop = 4

-- search
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.incsearch = false
vim.o.smartcase = true

-- complete
vim.o.completeopt = 'menuone,noinsert,noselect'

-- porvider
vim.o.loaded_python3_provider = 0
vim.o.loaded_node_provider = 0

-- keymap
vim.g.mapleader = ';'
vim.g.maplocalleader = ';'
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
map('n', '<C-k>', '9k', opt)
map('n', '<C-j>', '9j', opt)
map('n', '<C-f>', 'gg=G', opt)
map('n', '<C-l>', '<cmd>TSJToggle<cr>', opt)

require('packer').startup(function()
    use 'Pocco81/auto-save.nvim'
    use 'Wansmer/treesj'
    use 'axieax/urlview.nvim'
    use 'feline-nvim/feline.nvim'
    use 'jghauser/mkdir.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'mcauley-penney/tidy.nvim'
    use 'nguyenvukhang/nvim-toggler'
    use 'numToStr/Comment.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'sbdchd/neoformat'
    use 'tanvirtin/monokai.nvim'
    use 'wbthomason/packer.nvim'
    use 'windwp/nvim-autopairs'
end)

require('Comment').setup({ toggler = { line = '<C-]>' } })
require('auto-save').setup()
require('feline').setup()
require('feline').winbar.setup()
require('indent_blankline').setup()
require('monokai').setup { palette = require('monokai').pro }
require('nvim-autopairs').setup()
require('nvim-toggler').setup()
require('nvim-treesitter.configs').setup({ highlight = { enable = true }, indent = { enable = true } })
require('tidy').setup()
require('treesj').setup()
require('urlview').setup()
