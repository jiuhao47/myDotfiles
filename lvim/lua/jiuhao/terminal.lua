local M = require("lvim.core.terminal")
M.htop_toggle = function()
  local Terminal = require("toggleterm.terminal").Terminal
  local htop = Terminal:new {
    cmd = "htop",
    hidden = true,
    direction = "float",
    float_opts = {
      border = "none",
      width = 100000,
      height = 100000,
      zindex = 200,
    },
    on_open = function(_)
      vim.cmd "startinsert!"
    end,
    on_close = function(_) end,
    count = 99,
  }
  htop:toggle()
end
M.lazydocker_toggle = function()
  local Terminal = require("toggleterm.terminal").Terminal
  local lazydocker = Terminal:new {
    cmd = "lazydocker",
    hidden = true,
    direction = "float",
    float_opts = {
      border = "none",
      width = 100000,
      height = 100000,
      zindex = 200,
    },
    on_open = function(_)
      vim.cmd "startinsert!"
    end,
    on_close = function(_) end,
    count = 99,
  }
  lazydocker:toggle()
end
M.ncdu_toggle = function()
  local Terminal = require("toggleterm.terminal").Terminal
  local ncdu = Terminal:new {
    cmd = "ncdu .",
    hidden = true,
    direction = "float",
    float_opts = {
      border = "none",
      width = 100000,
      height = 100000,
      zindex = 200,
    },
    on_open = function(_)
      vim.cmd "startinsert!"
    end,
    on_close = function(_) end,
    count = 99,
  }
  ncdu:toggle()
end
M.glow_md_toggle = function()
  local current_buf = vim.api.nvim_get_current_buf()
  local filename = vim.api.nvim_buf_get_name(current_buf)
  local Terminal = require("toggleterm.terminal").Terminal
  local glow = Terminal:new {
    cmd = "glow " .. filename .. " --pager",
    hidden = true,
    direction = "float",
    float_opts = {
      border = "none",
      width = 100000,
      height = 100000,
      zindex = 200,
    },
    on_open = function(_)
      vim.cmd "startinsert!"
    end,
    on_close = function(_) end,
    count = 99,
  }
  glow:toggle()
end

--return M
