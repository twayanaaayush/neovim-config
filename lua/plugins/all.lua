return {
	-- installer
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end,
	},

	-- colorscheme
	{ "drewtempelmeyer/palenight.vim" },

	-- lualine
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- bracket pairs
	{
		"echasnovski/mini.pairs",
		event = "VeryLazy",
		opts = {
			modes = { insert = true, command = true, terminal = false },
			skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
			skip_ts = { "string" },
			skip_unbalanced = true,
			markdown = true,
		},
		config = true,
	},

	-- telescope
	{ "MunifTanjim/nui.nvim" },
	{
		"nvim-telescope/telescope.nvim",
		lazy = true,
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
		},
	},

	-- formatter
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},

	-- lsp
	{
		"neovim/nvim-lspconfig",
		version = "*",
		event = { "BufReadPre", "BufNewFile" },
		--dependencies = {
		--    "hrsh7th/cmp-nvim-lsp",
		--    { "folke/neodev.nvim", opts = {} },
		--},
	},

	-- comment
	{
		"numToStr/Comment.nvim",
		opts = {},
	},

	-- error and diagnostics
	{
		"chikko80/error-lens.nvim",
		event = "BufRead",
		dependencies = {
			"nvim-telescope/telescope.nvim",
		},
		opts = {},
	},
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},
}
