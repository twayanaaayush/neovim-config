vim.lsp.enable("ts_ls")
vim.lsp.enable("cssls")
vim.lsp.enable("html")
vim.lsp.enable("jsonls")
vim.lsp.enable("eslint") -- :MasonInstall eslint-lsp@4.5.0
vim.lsp.enable("pyright")
vim.lsp.enable("lua_ls")

-- local on_attach = function(client, bufnr)
-- 	-- format on save
-- 	if client.server_capabilities.documentFormattingProvider then
-- 		vim.api.nvim_create_autocmd("BufWritePre", {
-- 			group = vim.api.nvim_create_augroup("Format", { clear = true }),
-- 			buffer = bufnr,
-- 			callback = function()
-- 				vim.lsp.buf.format()
-- 			end,
-- 		})
-- 	end
-- end

-- local nvim_lsp = require("lspconfig")
-- local protocol = require("vim.lsp.protocol")
-- local mason_lspconfig = require("mason-lspconfig")
-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- mason_lspconfig.setup_handlers({
-- 	function(server)
-- 		nvim_lsp[server].setup({
-- 			capabilities = capabilities,
-- 		})
-- 	end,
-- 	["lua_ls"] = function()
-- 		nvim_lsp["lua_ls"].setup({
-- 			on_attach = on_attach,
-- 			capabilities = capabilities,
-- 		})
-- 	end,
-- 	["ts_ls"] = function()
-- 		nvim_lsp["ts_ls"].setup({
-- 			on_attach = on_attach,
-- 			capabilities = capabilities,
-- 		})
-- 	end,
-- 	["cssls"] = function()
-- 		nvim_lsp["cssls"].setup({
-- 			on_attach = on_attach,
-- 			capabilities = capabilities,
-- 		})
-- 	end,
-- 	["html"] = function()
-- 		nvim_lsp["html"].setup({
-- 			on_attach = on_attach,
-- 			capabilities = capabilities,
-- 		})
-- 	end,
-- 	["jsonls"] = function()
-- 		nvim_lsp["jsonls"].setup({
-- 			on_attach = on_attach,
-- 			capabilities = capabilities,
-- 		})
-- 	end,
-- 	["eslint"] = function()
-- 		nvim_lsp["eslint"].setup({
-- 			on_attach = on_attach,
-- 			capabilities = capabilities,
-- 		})
-- 	end,
-- 	["pyright"] = function()
-- 		nvim_lsp["pyright"].setup({
-- 			on_attach = on_attach,
-- 			capabilities = capabilities,
-- 		})
-- 	end,
-- })
