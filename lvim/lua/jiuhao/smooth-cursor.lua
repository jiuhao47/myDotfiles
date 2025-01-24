table.insert(
  lvim.plugins,
  {
    'gen740/SmoothCursor.nvim',
    config = function()
      require('smoothcursor').setup()
    end
  }
)
