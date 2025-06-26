-- Setup Lsp.
local capabilities = require("lvim.lsp").common_capabilities()
require("lvim.lsp.manager").setup("codeql", {
	on_attach = require("lvim.lsp").common_on_attach,
	on_init = require("lvim.lsp").common_on_init,
	capabilities = capabilities,
})

-- Set a linter.
-- local linters = require("lvim.lsp.null-ls.linters")
-- linters.setup({
-- 	{ command = "ruff", filetypes = { "python" } },
-- })

-- local formatters = require("lvim.lsp.null-ls.formatters")
-- formatters.setup({
-- 	{ command = "black", filetypes = { "python" } },
-- })
