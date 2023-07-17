-- vim.o
vim.o.autochdir = false
vim.o.autoindent = true
vim.o.autoread = true
vim.o.background = "dark"
vim.o.backup = false
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.fileencoding = "utf-8"
vim.o.hlsearch = true
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
vim.o.showtabline = 2
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.o.splitbelow = true
vim.o.swapfile = false
vim.o.tabstop = 4
vim.o.wildmenu = true
vim.o.wrap = false
vim.o.writebackup = false

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

vim.api.nvim_set_keymap("n", "<A-Up>", ":m-2<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<A-Down>", ":m+<CR>", { silent = true })

vim.api.nvim_set_keymap("n", "<leader>v", "<Cmd>edit $MYVIMRC<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>c", "<Cmd>bdelete<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>q", "<Cmd>wqa<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>l", "<Cmd>Lazy<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>w", "w !sudo tee %", { noremap = true, silent = true })

-- folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local mirror = "https://ghproxy.com/"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		mirror .. "https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local opts = {
	git = {
		url_format = mirror .. "https://github.com/%s.git",
	},
	checker = {
		enabled = true,
		notify = false,
	},
}

local plugins = {
	{
		"jghauser/mkdir.nvim",
		"nvim-lua/plenary.nvim",
	},
	{
		"Mofiqul/adwaita.nvim",
		lazy = false,
		priority = 1000,

		config = function()
			vim.g.adwaita_darker = true
			vim.g.adwaita_disable_cursorline = true
			vim.g.adwaita_transparent = true
		end,
	},
	{
		"sbdchd/neoformat",
		config = function()
			vim.api.nvim_set_keymap("n", "<leader>f", "<Cmd>Neoformat<CR>", { noremap = true, silent = true })
			vim.g.neoformat_enabled_lua = { "stylua" }
		end,
	},
	{
		"axieax/urlview.nvim",
		opts = {},
	},
	{
		"nguyenvukhang/nvim-toggler",
		opts = {},
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({
				toggler = {
					line = "<C-]>",
				},
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					section_separators = "",
					component_separators = "",
				},
				sections = {
					lualine_x = {
						{
							require("lazy.status").updates,
							cond = require("lazy.status").has_updates,
						},
						{
							require("ac").get_active_lsp_clients,
							icon = "",
						},
						{
							"datetime",
							style = "iso",
						},
						{
							"%#lualine_fg#Tab:%{&tabstop}%#lualine_inactive#",
						},
						{
							"%#lualine_fg#%{&fileencoding}%#lualine_inactive#",
						},
						{
							"filetype",
						},
					},

					lualine_c = {
						{
							"filename",
							path = 2,
						},
					},
				},
			})
		end,
	},
	{
		"windwp/nvim-autopairs",
		opts = {},
	},
	{
		"toppair/reach.nvim",
		config = function()
			require("reach").setup()
			vim.api.nvim_set_keymap("n", "<leader>b", "<Cmd>ReachOpen buffers<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap(
				"n",
				"<leader>t",
				"<Cmd>ReachOpen colorschemes<CR>",
				{ noremap = true, silent = true }
			)
		end,
	},
	{
		"ethanholz/nvim-lastplace",
		opts = {},
	},
	{
		"NvChad/nvim-colorizer.lua",
		opt = {},
	},
	{
		"chentoast/marks.nvim",
		opts = {},
	},
	{
		"nvim-tree/nvim-web-devicons",
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
			vim.api.nvim_set_keymap(
				"n",
				"<leader>h",
				"<Cmd>Gitsigns preview_hunk<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap("n", "<leader>n", "<Cmd>Gitsigns next_hunk<CR>", { noremap = true, silent = true })
		end,
	},
	{
		"CRAG666/code_runner.nvim",
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
					typescript = "ts-node",
				},
			})
			vim.api.nvim_set_keymap("n", "<leader>r", "<Cmd>RunFile tab<CR>", { noremap = true, silent = true })
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup({
				filters = {
					dotfiles = false,
				},
				git = {
					ignore = false,
				},
				view = {
					side = "left",
				},
			})
			vim.api.nvim_set_keymap("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })
		end,
	},
	{
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({
				auto_show = false,
			})
			vim.api.nvim_set_keymap("n", "<leader>k", "<Cmd>WhichKey<CR>", { noremap = true, silent = true })
		end,
	},
	{
		"dmmulroy/tsc.nvim",
		opts = {},
	},
	{
		"junnplus/lsp-setup.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("lsp-setup").setup({
				servers = {
					pylsp = {},
					denols = {},
					gopls = {},
					pyright = {},
					rust_analyzer = {},

					lua_ls = {
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim" },
								},
								workspace = {
									library = vim.api.nvim_get_runtime_file("", true),
									checkThirdParty = false,
								},
							},
						},
					},
				},
			})

			require("mason").setup({
				github = {
					download_url_template = mirror .. "https://github.com/%s/releases/download/%s/%s",
				},
				ui = {
					icons = {
						package_installed = "++",
						package_pending = "->",
						package_uninstalled = "--",
					},
				},
			})
			vim.api.nvim_set_keymap("n", "<leader>m", "<Cmd>Mason<CR>", { noremap = true, silent = true })

			require("mason-lspconfig").setup()
		end,
	},
	{
		"folke/neodev.nvim",
		opts = {},
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-calc",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			local cmp = require("cmp")
			local lspkind = require("lspkind")

			cmp.setup({
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "path" },
					{ name = "buffer" },
					{ name = "calc" },
					{ name = "crates" },
				}),
				mapping = {
					["<Tab>"] = cmp.mapping.select_next_item(),
					["<S-Tab>"] = cmp.mapping.select_prev_item(),
					["<CR>"] = cmp.mapping.confirm({
						select = true,
						behavior = cmp.ConfirmBehavior.Replace,
					}),
				},
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				formatting = {
					format = lspkind.cmp_format({
						mode = "symbol",
						maxwidth = 50,
						ellipsis_char = "...",
					}),
				},
			})
		end,
	},
	{
		"saecki/crates.nvim",
		opts = {},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.install").prefer_git = true
			for _, config in pairs(require("nvim-treesitter.parsers").get_parser_configs()) do
				config.install_info.url =
					config.install_info.url:gsub("https://github.com/", mirror .. "https://github.com/")
			end

			require("nvim-treesitter.configs").setup({
				highlight = {
					enable = true,
				},
				auto_install = true,
				ensure_installed = {
					"go",
					"json",
					"lua",
					"rust",
					"toml",
					"vim",
					"vimdoc",
					"python",
				},
				indent = {
					enable = true,
				},
			})
		end,
	},
	{
		"goolord/alpha-nvim",
		config = function()
			local startify = require("alpha.themes.startify")

			require("alpha").setup(startify.config)

			startify.section.header.val = {
				"i314q159",
			}
		end,
	},
	{
		"nvimdev/hlsearch.nvim",
		opts = {},
	},
	{
		"Wansmer/treesj",
		ependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		keys = {
			{ "<leader>j", "<cmd>TSJToggle<cr>", desc = "Join Toggle" },
		},
		opts = {
			use_default_keymaps = false,
			max_join_length = 150 * 2,
		},
	},
	{
		"nacro90/numb.nvim",
		opts = {},
	},
	{
		"noib3/cokeline.nvim",
		config = true,
	},
	{
		"folke/todo-comments.nvim",
		lazy = false,
		opts = {},
	},
	{
		"VidocqH/lsp-lens.nvim",
		opts = {},
	},
	{
		"jinzhongjia/LspUI.nvim",
		config = function()
			require("LspUI").setup()
			vim.api.nvim_set_keymap("n", "<F2>", "<Cmd>LspUI rename<CR>", { noremap = true, silent = true })
		end,
	},
	{
		"onsails/lspkind.nvim",
		config = function()
			require("lspkind").init()
		end,
	},
	{
		"stevearc/dressing.nvim",
		opts = {},
	},
	{
		"elentok/togglr.nvim",
		opts = {
			key = "<leader>i",
		},
	},
	{
		"elentok/scriptify.nvim",
		opts = {},
		cmd = { "Scriptify" },
	},
	{
		"i314q159/ac.nvim",
		opts = {},
	},
	{
		"Mofiqul/dracula.nvim",
		opts = {
			transparent_bg = true,
			italic_comment = true,
		},
	},
	{
	},
}

require("lazy").setup(plugins, opts)
vim.cmd("colorscheme dracula")
