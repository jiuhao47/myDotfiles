lvim.builtin.which_key.mappings["t"] =
{
  name = "MySQL",
  e = {
    name = "Execute",
    q = { "<cmd>SqlsExecuteQuery<CR>", "Execute Query" },
    v = { "<cmd>SqlsExecuteQueryVertical<CR>", "Execute Query Vertical" },
  },
  s = {
    name = "Show",
    d = { "<cmd>SqlsShowDatabase<CR>", "Show Database" },
    s = { "<cmd>SqlsShowSchemas<CR>", "Show Schemas" },
    c = { "<cmd>SqlsShowConnections<CR>", "Show Connections" },
  },
  c = {
    name = "Select",
    d = { "<cmd>SqlsSwitchDatabase<CR>", "Select Database" },
    c = { "<cmd>SqlsSwitchConnection<CR>", "Select Connection" },
  }
}
lvim.builtin.which_key.vmappings["t"] =
{
  name = "MySQL",
  e = {
    name = "Execute",
    q = { "Execute Query on selection" },
    v = { "Execute Query on selection vertical" },
  },
}

vim.api.nvim_set_keymap('x', '<leader>teq', ':SqlsExecuteQuery<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>tev', ':SqlsExecuteQueryVertical<cr>', { noremap = true, silent = true })

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  { command = "sql-formatter", filetypes = { "sql" } },
})
