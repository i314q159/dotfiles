-- number
vim.wo.number = true

-- theme
-- vim.cmd[[colorscheme slate]]
vim.cmd[[colorscheme neon]]
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

-- complete
vim.o.completeopt = "menuone,noinsert,noselect"

-- porvider
vim.o.loaded_python3_provider = 0
vim.o.loaded_node_provider = 0

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'terrortylor/nvim-comment'
    use 'windwp/nvim-autopairs'
    use 'feline-nvim/feline.nvim'
    use 'jghauser/mkdir.nvim' 
    use 'rafamadriz/neon'
end)

require('nvim_comment').setup({ line_mapping = '<C-]>' })
require('nvim-autopairs').setup()
require('feline').setup()
