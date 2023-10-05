-- vim.o
vim.o.autochdir = false
vim.o.autoindent = true
vim.o.autoread = true
vim.o.background = "dark"
vim.o.backup = false
vim.o.clipboard = "unnamedplus"
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
		"axieax/urlview.nvim",
		opts = {},
	},
	{
		"nguyenvukhang/nvim-toggler",
		opts = {},
	},
	{
		"numToStr/Comment.nvim",
		opts = {
			toggler = {
				line = "<C-]>",
			},
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = false,
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
							"%#lualine_fg#tab:%{&tabstop}%#lualine_inactive#",
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
		opts = {},
		keys = {
			{ "<leader>b", "<cmd>ReachOpen buffers<cr>", desc = "ReachOpen buffers" },
			{ "<leader>t", "<cmd>ReachOpen colorschemes<cr>", desc = "ReachOpen colorschemes" },
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
			{ "<leader>h", "<cmd>Gitsigns preview_hunk<cr>", desc = "Gitsigns preview_hunk" },
			{ "<leader>n", "<cmd>Gitsigns next_hunk<cr>", desc = "Gitsigns next_hunkk" },
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
		"junnplus/lsp-setup.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("lsp-setup").setup({
				servers = {
					bashls = {},
					denols = {},
					dockerls = {},
					gopls = {},
					html = {},
					pylsp = {},
					pyright = {},

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
		"jinzhongjia/LspUI.nvim",
		opts = {},
		keys = {
			{ "<F2>", "<cmd>LspUI rename<cr>", desc = "LspUI rename" },
		},
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
		opts = {
			format_on_save = {
				timeout_ms = 100,
				lsp_fallback = false,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				python = {
					"isort",
					"black",
				},
			},
		},
	},
	{
		"pocco81/auto-save.nvim",
		opts = {},
	},
}

require("lazy").setup(plugins, opts)
vim.cmd("colorscheme dracula")
vim.api.nvim_set_keymap("n", "<leader>l", "<cmd>Lazy<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>m", "<cmd>Mason<cr>", { noremap = true, silent = true })
