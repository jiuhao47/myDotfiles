local capabilities = require("lvim.lsp").common_capabilities()
require("lvim.lsp.manager").setup("just-lsp", {
	on_attach = require("lvim.lsp").common_on_attach,
	on_init = require("lvim.lsp").common_on_init,
	capabilities = capabilities,
})

-- -- Set a linter.
-- local linters = require("lvim.lsp.null-ls.linters")
-- linters.setup({
-- 	{ command = "just-lsp", filetypes = { "just" } },
-- })
