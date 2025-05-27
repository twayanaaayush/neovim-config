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
}
