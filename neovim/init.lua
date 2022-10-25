-- number of rows
vim.wo.number = true

-- theme
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
    -- wbthomason/packer.nvim
    use 'wbthomason/packer.nvim'

    -- itchyny/lightline.vim
    use 'itchyny/lightline.vim'

end)
