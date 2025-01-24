table.insert(
  lvim.plugins,
  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
  }
)

require("ufo").setup()
