local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Gitsigns
keymap("n", "]g", "<cmd>Gitsigns next_hunk<cr>", opts)
keymap("n", "[g", "<cmd>Gitsigns prev_hunk<cr>", opts)

vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
vim.keymap.set("n", "<space>wl", function()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, opts)
vim.keymap.set("n", "<space>lD", vim.lsp.buf.type_definition, opts)
vim.keymap.set("n", "<space>lr", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "gl", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)
vim.keymap.set("n", "<space>li", "<cmd>LspInfo<CR>", opts)
vim.keymap.set("n", "<space>lI", "<cmd>Mason<CR>", opts)

vim.keymap.del({ "i" }, "<A-j>")
vim.keymap.del({ "i" }, "<A-k>")
