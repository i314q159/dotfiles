vim.g.encoding = "utf-8"
vim.o.autoindent = true
vim.o.autoread = true
vim.o.background = "dark"
vim.o.backup = false
vim.o.completeopt = "menuone,preview"
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.fileencoding = "utf-8"
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.inccomand = "nosplit"
vim.o.incsearch = false
vim.o.loaded_node_provider = 0
vim.o.loaded_python3_provider = 0
vim.o.mouse = false
vim.o.number = true
vim.o.shiftround = true
vim.o.shiftwidth = 4
vim.o.showcmd = true
vim.o.showmatch = true
vim.o.showmode = false
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.o.splitbelow = true
vim.o.swapfile = false
vim.o.tabstop = 4
vim.o.termguicolors = true
vim.o.wildmenu = true
vim.o.wrap = true
vim.o.writebackup = false

-- leader
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- keymap
vim.api.nvim_set_keymap("n", "<A-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-l>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-c>", "<Cmd>bdelete<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "9j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "9k", { noremap = true, silent = true })

-- lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local mirror = "https://ghproxy.com/https://github.com/"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		url = mirror .. "sbdchd/neoformat",
	},
	{
		url = mirror .. "f-person/git-blame.nvim",
	},
	{
		url = mirror .. "jghauser/mkdir.nvim",
	},
	{
		url = mirror .. "Pocco81/auto-save.nvim",
		config = function()
			require("auto-save").setup()
		end,
	},
	{
		url = mirror .. "axieax/urlview.nvim",
		config = function()
			require("urlview").setup()
		end,
	},
	{
		url = mirror .. "lukas-reineke/indent-blankline.nvim",
		config = function()
			require("indent_blankline").setup({
				char = "┆",
				show_trailing_blankline_indent = false,
			})
		end,
	},
	{
		url = mirror .. "nguyenvukhang/nvim-toggler",
		config = function()
			require("nvim-toggler").setup()
		end,
	},
	{
		url = mirror .. "numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({
				toggler = { line = "<C-]>" },
			})
		end,
	},
	{
		url = mirror .. "nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					theme = "horizon",
					section_separators = "",
					component_separators = "",
				},
			})
		end,
	},
	{
		url = mirror .. "windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	},
	{
		url = mirror .. "tanvirtin/monokai.nvim",
		config = function()
			require("monokai").setup({
				palette = require("monokai").pro,
			})
		end,
	},
	{
		url = mirror .. "akinsho/toggleterm.nvim",
		config = function()
			require("toggleterm").setup({
				open_mapping = "<C-t>",
				direction = "float",
				shade_terminals = true,
				shell = "powershell -nologo",
			})
		end,
	},
	{
		url = mirror .. "toppair/reach.nvim",
		config = function()
			require("reach").setup()
		end,
	},
	{
		url = mirror .. "ethanholz/nvim-lastplace",
		config = function()
			require("nvim-lastplace").setup()
		end,
	},
	{
		url = mirror .. "stevearc/dressing.nvim",
		config = function()
			require("dressing").setup()
		end,
	},
})
