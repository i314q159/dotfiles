-- number
vim.wo.number = true

-- theme
vim.cmd[[colorscheme gruvbox]]
vim.o.background = "dark"
vim.o.termguicolors = true
vim.wo.cursorline = true
vim.o.wildmenu = true

-- utf8
vim.g.encoding = "utf-8"
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

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'itchyny/lightline.vim'
    use "ellisonleao/gruvbox.nvim"
    use 'terrortylor/nvim-comment'
    use 'windwp/nvim-autopairs'
    use { 'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer' }
end)

require('nvim_comment').setup()
require('nvim-autopairs').setup()
