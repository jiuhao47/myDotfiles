lvim.builtin.which_key.mappings["t"] =
{
  name = "Markdown",
  p = { "<cmd>lua require 'lvim.core.terminal' .glow_md_toggle()<cr>", "Preview" },
}


-- Setup Lsp.
local capabilities = require("lvim.lsp").common_capabilities()
require("lvim.lsp.manager").setup("markdown_oxide", {
  on_attach = require("lvim.lsp").common_on_attach,
  on_init = require("lvim.lsp").common_on_init,
  capabilities = capabilities,
})

-- Setup formatters.
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "markdown-toc", filetypes = { "markdown" } },
})

-- Set a linter.
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  { command = "alex", filetypes = { "markdown" } },
})
