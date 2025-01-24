table.insert(lvim.plugins, {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
})
table.insert(lvim.plugins, {
  "zbirenbaum/copilot-cmp",
  event = { "InsertEnter", "LspAttach" },
  fixpairs = true,
})
local allow_filetypes = {
  javascript = true,
  typescript = true,
  lua = true,
  python = true,
  rust = true,
  go = true,
  cpp = true,
  c = true,
  html = true,
  css = true,
  json = true,
  yaml = true,
  markdown = true,
  sh = true,
  vim = true,
  sql = true,
  java = true,
  php = true,
  ruby = true,
  dockerfile = true,
}



require("copilot").setup(
  {
    suggestion = { enable = false },
    panel = { enable = false },

    filetypes = allow_filetypes,
    event = { "InsertEnter", "LspAttach" },
    fixpairs = true,
  }
)
require("copilot_cmp").setup()
