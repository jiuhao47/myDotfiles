table.insert(
  lvim.plugins,
  {
    "ellisonleao/glow.nvim",
    config = true,
    cmd = "Glow"
  }
)

require('glow').setup({
  border = "shadow",             -- floating window border config
  style = "dark",          -- filled automatically with your current editor background, you can override using glow json style
  pager = false,
  width = 80,
  height = 100,
  width_ratio = 0.7, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
  height_ratio = 0.7,
})
