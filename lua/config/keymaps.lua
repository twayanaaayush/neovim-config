vim.g.mapleader = " "

local map = vim.keymap.set
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", ";", ":")
map({"i", "v", "c"}, "jk", "<Esc>")
map("n", "<leader>e", ":Ex<CR>")

-- telescope keymaps
local telescope = require("telescope.builtin")
map('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })

-- formatter keymaps
local conform = require("conform")
map({ "n", "v" }, "<leader>fm", function()
  conform.format({
           lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  })
end, { desc = "Format file or range (in visual mode)" })
