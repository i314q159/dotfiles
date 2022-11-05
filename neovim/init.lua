-- number of rows
vim.wo.number = true

-- theme
vim.cmd[[colorscheme gruvbox]]
vim.o.background = "dark"
vim.o.termguicolors = true

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

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'itchyny/lightline.vim'
    use 'morhetz/gruvbox'
    use 'terrortylor/nvim-comment'
    use 'windwp/nvim-autopairs'
end)

require('nvim_comment').setup()
require("nvim-autopairs").setup()

