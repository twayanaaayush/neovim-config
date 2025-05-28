vim.g.mapleader = " "

local map = vim.keymap.set
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", ";", ":")
map({ "i", "v", "c" }, "jk", "<Esc>")
map("n", "<leader>e", ":Ex<CR>")

-- buffer
map("n", "<leader>x", ":bd<CR>")

-- panes
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")

-- editor
map("n", "gd", "<C-]>") -- tagFunc, go to definition
map("i", "<C-Space>", "<C-X><C-O>") -- omniFunc, omni mode completion
-- map("n", "sv", "K") -- view definition, hover effect
-- map("n", "svv", "KK") -- view definition, hover effect and focus

-- telescope keymaps
local telescope = require("telescope.builtin")
map("n", "<leader>ff", telescope.find_files, { desc = "Telescope find files" })
map("n", "<leader>fg", telescope.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>fb", telescope.buffers, { desc = "Telescope buffers" })
map("n", "<leader>fh", telescope.help_tags, { desc = "Telescope help tags" })

-- formatter keymaps
local conform = require("conform")
map({ "n", "v" }, "<leader>fm", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	})
end, { desc = "Format file or range (in visual mode)" })
