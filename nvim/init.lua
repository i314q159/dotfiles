-- vim.o
vim.o.autoindent = true
vim.o.autoread = true
vim.o.background = "dark"
vim.o.backup = false
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.fileencoding = "utf-8"
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.inccomand = "nosplit"
vim.o.incsearch = false
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
vim.o.wildmenu = true
vim.o.wrap = false
vim.o.writebackup = false
vim.o.autochdir = true

-- vim,opt
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.termguicolors = true

-- vim.g
vim.g.encoding = "utf-8"
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0

-- keymap
vim.api.nvim_set_keymap("n", "<A-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-l>", "<C-w>l", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>b", "<Cmd>bdelete<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>c", "<Cmd>edit $MYVIMRC<CR>", { noremap = true, silent = true })

-- lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local mirror = "https://ghproxy.com/https://github.com/"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		mirror .. "folke/lazy.nvim.git",
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
		url = mirror .. "sitiom/nvim-numbertoggle",
	},
	{
		url = mirror .. "Pocco81/auto-save.nvim",
		config = function()
			require("auto-save").setup({
				enabled = true,
				events = { "InsertLeave", "TextChanged" },
			})
		end,
	},
	{
		url = mirror .. "axieax/urlview.nvim",
		config = function()
			require("urlview").setup()
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
					icons_enabled = true,
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
	{
		url = mirror .. "akinsho/bufferline.nvim",
		version = "*",
		config = function()
			require("bufferline").setup()
		end,
	},
	{
		url = mirror .. "Mofiqul/dracula.nvim",
		config = function()
			require("dracula").setup({
				transparent_bg = true,
				italic_comment = true,
			})
			vim.cmd("colorscheme dracula")
		end,
	},
	{
		url = mirror .. "NvChad/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		url = mirror .. "chentoast/marks.nvim",
		config = function()
			require("marks").setup()
		end,
	},
	{
		url = mirror .. "nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup()
		end,
	},
	{
		url = mirror .. "lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
			vim.api.nvim_set_keymap(
				"n",
				"<leader>h",
				"<Cmd>Gitsigns preview_hunk<CR>",
				{ noremap = true, silent = true }
			)
		end,
	},
	{
		url = mirror .. "CRAG666/code_runner.nvim",
		config = function()
			require("code_runner").setup({
				filetype = {
					go = "go run",
					javascript = "node",
					lua = "lua",
					ps1 = "powershell",
					python = "python3 -u",
					rust = "cargo run",
					sh = "bash",
					typescript = "deno run",
				},
			})
			vim.api.nvim_set_keymap("n", "<leader>r", "<Cmd>RunFile tab<CR>", { noremap = true, silent = true })
		end,
	},
	{
		url = mirror .. "nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup({
				filters = {
					dotfiles = false,
				},
                git = {
                    ignore = false
                }
			})
			vim.api.nvim_set_keymap("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })
		end,
	},
	{
		url = mirror .. "folke/which-key.nvim",
		config = function()
			require("which-key").setup({
				auto_show = false,
			})
			vim.api.nvim_set_keymap("n", "<leader>k", "<Cmd>WhichKey<CR>", { noremap = true, silent = true })
		end,
	},
	{
		url = mirror .. "dmmulroy/tsc.nvim",
		config = function()
			require("tsc").setup()
		end,
	},
	{
		url = mirror .. "nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.install").prefer_git = true

			for _, config in pairs(require("nvim-treesitter.parsers").get_parser_configs()) do
				config.install_info.url = config.install_info.url:gsub("https://github.com/", mirror)
			end

			require("nvim-treesitter.configs").setup({
				require("nvim-treesitter.configs").setup({
					highlight = {
						enable = true,
					},
					indent = {
						enable = true,
					},
					ensure_installed = {
						"go",
						"rust",
						"lua",
						"python",
						"vimdoc",
						"gowork",
						"toml",
					},
				}),
			})
		end,
	},
})
