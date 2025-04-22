-- Setup formatters.
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "latexindent", filetypes = { "bib" } },
})
