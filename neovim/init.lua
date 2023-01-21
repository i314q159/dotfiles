-- number
vim.o.number = true
vim.o.relativenumber = true

-- theme
vim.o.background = "dark"
vim.o.cursorline = true
vim.o.termguicolors = true
vim.o.wildmenu = true

-- utf8
vim.g.encoding = "utf-8"
vim.o.fileencoding = "utf-8"

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
vim.o.completeopt = "menuone,noinsert,noselect"

-- porvider
vim.o.loaded_python3_provider = 0
vim.o.loaded_node_provider = 0

-- list
vim.opt.list = true
vim.opt.listchars:append("eol:↴")

-- split
vim.o.splitbelow = true

-- keymap
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
map("n", "<C-k>", "9k", opt)
map("n", "<C-j>", "9j", opt)
map("n", "<C-f>", "gg=G", opt)

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "sbdchd/neoformat" },
	{ "gpanders/editorconfig.nvim" },
	{ "jghauser/mkdir.nvim" },
	{
		"Pocco81/auto-save.nvim",
		config = function()
			require("auto-save").setup()
		end,
	},
	{
		"axieax/urlview.nvim",
		config = function()
			require("urlview").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("indent_blankline").setup({
				show_end_of_line = true,
			})
		end,
	},
	{
		"mcauley-penney/tidy.nvim",
		config = function()
			require("tidy").setup()
		end,
	},
	{
		"nguyenvukhang/nvim-toggler",
		config = function()
			require("nvim-toggler").setup()
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({
				toggler = { line = "<C-]>" },
			})
		end,
	},
	{
		"ojroques/nvim-hardline",
		config = function()
			require("hardline").setup()
		end,
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	},
	{
		"projekt0n/github-nvim-theme",
		config = function()
			require("github-theme").setup({
				theme_style = "dark",
				function_style = "bold",
			})
		end,
	},
})
