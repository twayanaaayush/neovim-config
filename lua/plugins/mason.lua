require("mason").setup()

require("mason-lspconfig").setup({
	automatic_installation = true,
	automatic_enable = true,
	ensure_installed = {
		"lua_ls",
		"cssls",
		"eslint",
		"html",
		"jsonls",
		"pyright",
		"ts_ls",
	},
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"stylua",
		"lua_ls",
		"cssls",
		"eslint",
		"html",
		"jsonls",
		"pyright",
		"ts_ls",
		"prettierd",
	},
})
