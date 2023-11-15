-- vim.o
vim.o.autochdir = false
vim.o.autoindent = true
vim.o.autoread = true
vim.o.background = "dark"
vim.o.backup = false
vim.o.clipboard = "unnamedplus"
vim.o.cmdheight = 0
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

-- vim.opt
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.termguicolors = true

-- vim.g
vim.g.encoding = "utf-8"
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.editorconfig = true

-- keymap
vim.api.nvim_set_keymap("n", "<S-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-l>", "<C-w>l", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<S-Up>", ":m-2<cr>", { silent = true })
vim.api.nvim_set_keymap("n", "<S-Down>", ":m+<cr>", { silent = true })

vim.api.nvim_set_keymap("n", "<leader>v", "<cmd>edit $MYVIMRC<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>c", "<cmd>bdelete<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>wqa<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-f>", "*", { noremap = true, silent = true })

-- folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local mirror = "https://ghproxy.net/"

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
		"axieax/urlview.nvim",
		lazy = false,
		keys = {
			{ "<leader>u", "<cmd>UrlView buffer<cr>", desc = "Urlview Buffer" },
		},
		opts = {},
	},
	{
		"nguyenvukhang/nvim-toggler",
		keys = {
			{ "<leader>i", "require('nvim-toggler').toggle", desc = "Toggle Word" },
		},
		opts = {},
	},
	{
		"numToStr/Comment.nvim",
		opts = {
			toggler = { line = "<C-]>" },
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				icons_enabled = true,
				section_separators = "",
				component_separators = "",
			},
			sections = {
				lualine_b = {
					"branch",
					"diff",
					"diagnostics",
				},
				lualine_c = {
					{ "filename", path = 2 },
				},
				lualine_x = {
					{
						require("lazy.status").updates,
						cond = require("lazy.status").has_updates,
					},
					{ "datetime", style = "iso" },
					{
						function()
							return require("lazy").stats().loaded .. "/" .. require("lazy").stats().count
						end,
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
		},
	},
	{
		"windwp/nvim-autopairs",
		opts = {},
	},
	{
		"toppair/reach.nvim",
		opts = {},
		keys = {
			{ "<leader>b", "<cmd>ReachOpen buffers<cr>", desc = "ReachOpen Buffers" },
			{ "<leader>t", "<cmd>ReachOpen colorschemes<cr>", desc = "ReachOpen Colorschemes" },
		},
	},
	{
		"ethanholz/nvim-lastplace",
		opts = {},
	},
	{
		"NvChad/nvim-colorizer.lua",
		opts = {
			user_default_options = {
				mode = "virtualtext",
			},
		},
	},
	{
		"chentoast/marks.nvim",
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
		keys = {
			{ "<leader>h", "<cmd>Gitsigns preview_hunk<cr>", desc = "Gitsigns Preview Hunk" },
			{ "<leader>n", "<cmd>Gitsigns next_hunk<cr>", desc = "Gitsigns Next Hunk" },
		},
		lazy = false,
	},
	{
		"folke/which-key.nvim",
		opts = {
			auto_show = false,
		},
		keys = {
			{ "<leader>k", "<cmd>WhichKey<cr>", desc = "WhichKey" },
		},
		lazy = false,
	},
	{
		"williamboman/mason.nvim",
		opts = {
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
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
		},
		opts = {},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"stylua",
			},
		},
	},
	{
		"junnplus/lsp-setup.nvim",
		opts = {
			servers = {
				bashls = {},
				dockerls = {},
				html = {},
				pylsp = {},
				pyright = {},
				rust_analyzer = {},
				tsserver = {},

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
							telemetry = {
								enable = false,
							},
							format = {
								enable = false,
							},
						},
					},
				},
			},
		},
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
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "path" },
					{ name = "buffer" },
					{ name = "calc" },
				}),
				mapping = {
					["<Tab>"] = cmp.mapping.select_next_item(),
					["<S-Tab>"] = cmp.mapping.select_prev_item(),
					["<CR>"] = cmp.mapping.confirm({
						select = false,
						behavior = cmp.ConfirmBehavior.Replace,
					}),
				},
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
			})

			cmp.setup.cmdline("/", {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = "buffer" },
				},
			})
		end,
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
				sync_install = true,
				indent = {
					enable = true,
				},
				modules = {},
				ensure_installed = {},
				ignore_install = {},
			})
		end,
	},
	{
		"nvimdev/hlsearch.nvim",
		opts = {},
	},
	{
		"Wansmer/treesj",
		dependencies = {
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
		"folke/todo-comments.nvim",
		lazy = false,
		opts = {},
	},
	{
		"VidocqH/lsp-lens.nvim",
		opts = {},
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
		keys = {
			{ "<leader>s", "<cmd>Scriptify<cr>", desc = "Scriptify" },
		},
		opts = {},
		cmd = { "Scriptify" },
	},
	{
		"Mofiqul/dracula.nvim",
		opts = {
			transparent_bg = false,
			italic_comment = true,
		},
		lazy = false,
		priority = 1000,
	},
	{
		"roobert/f-string-toggle.nvim",
		opts = {
			key_binding = "<leader>f",
		},
	},
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
				async = false,
			},
			formatters_by_ft = {
				lua = { "stylua" },
			},
		},
	},
	{
		"pocco81/auto-save.nvim",
		opts = {},
	},
	{
		"vidocqh/auto-indent.nvim",
		opts = {},
	},
	{
		"chrisgrieser/nvim-puppeteer",
		lazy = false,
	},
	{
		"stevearc/oil.nvim",
		keys = {
			{ "<leader>o", "<cmd>Oil --float<cr>", desc = "Open Parent Directory" },
		},
		opts = {
			default_file_explorer = false,
		},
		win_options = {
			cursorcolumn = true,
		},
	},
	{
		"folke/trouble.nvim",
		keys = {
			{ "<leader>w", "<cmd>TroubleToggle<cr>", desc = "Trouble Toggle" },
		},
		opts = {
			icons = true,
		},
		lazy = false,
	},
	{
		"j-hui/fidget.nvim",
		opts = {},
	},
	{
		"sontungexpt/stcursorword",
		event = "VeryLazy",
		config = true,
	},
	{
		"nvim-tree/nvim-web-devicons",
		opts = {},
	},
	{
		"f-person/git-blame.nvim",
		keys = {
			{ "<leader>g", "<cmd>GitBlameToggle<cr>", desc = "GitBlame Toggle" },
		},
		opts = {
			gitblame_use_blame_commit_file_urls = true,
		},
		lazy = false,
	},
	{
		"m-demare/hlargs.nvim",
		opts = {},
	},
	{
		"nvim-tree/nvim-tree.lua",
		keys = {
			{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "NvimTree Toggle" },
		},
		opts = {
			view = {
				side = "right",
				number = true,
				relativenumber = true,
				width = math.modf(vim.api.nvim_win_get_width(0) / 4),
			},
		},
	},
	{
		"hinell/lsp-timeout.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		keys = {
			{ "<leader>p", "<cmd>Telescope<cr>", desc = "Telescope" },
		},
		opts = {},
	},
}

require("lazy").setup(plugins, opts)
vim.cmd("colorscheme dracula")
vim.api.nvim_set_keymap("n", "<leader>l", "<cmd>Lazy<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>m", "<cmd>Mason<cr>", { noremap = true, silent = true })
