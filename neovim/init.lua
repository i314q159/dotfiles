-- number
vim.wo.number = true

-- theme
vim.o.background = 'dark'
vim.o.termguicolors = true
vim.wo.cursorline = true
vim.o.wildmenu = true

-- utf8
vim.g.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'

-- file autoread
vim.o.autoread = true
vim.bo.autoread = true

-- warp
vim.o.wrap = false
vim.wo.wrap = false

-- backup
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- mouse
vim.o.mouse = false

-- tab
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false
vim.o.incsearch = false

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
map('n', '<C-u>', '9k', opt)
map('n', '<C-d>', '9j', opt)
map('n', '<C-f>', 'gg=G', opt)

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'terrortylor/nvim-comment'
    use 'windwp/nvim-autopairs'
    use 'feline-nvim/feline.nvim'
    use 'jghauser/mkdir.nvim'
    use 'tanvirtin/monokai.nvim'
    use 'Pocco81/auto-save.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'axieax/urlview.nvim'
    use 'mcauley-penney/tidy.nvim'
end)

require('nvim-autopairs').setup()
require('auto-save').setup()
require('indent_blankline').setup()
require('feline').setup()
require('urlview').setup()
require('tidy').setup()

require('monokai').setup({
    palette = require('monokai').pro
})

require('nvim_comment').setup({
    line_mapping = '<C-]>'
})

require('nvim-treesitter.configs').setup({
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    }
})
