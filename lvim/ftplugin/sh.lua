-- Setup Lsp.
local capabilities = require("lvim.lsp").common_capabilities()
require("lvim.lsp.manager").setup("bashls", {
  on_attach = require("lvim.lsp").common_on_attach,
  on_init = require("lvim.lsp").common_on_init,
  capabilities = capabilities,
})

-- Setup formatters.
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "shfmt", filetypes = { "sh" } },
})

-- Set a linter.
-- local linters = require("lvim.lsp.null-ls.linters")
-- linters.setup({
--   { command = "clang-format", filetypes = { "c" } },
-- })
