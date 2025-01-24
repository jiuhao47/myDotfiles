table.insert(
  lvim.plugins,
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>",  "<cmd>TmuxNavigateLeft<cr>" },
      { "<c-j>",  "<cmd>TmuxNavigateDown<cr>" },
      { "<c-k>",  "<cmd>TmuxNavigateUp<cr>" },
      { "<c-l>",  "<cmd>TmuxNavigateRight<cr>" },
    },
  }
)

vim.g["tmux_navigator_no_mappings"] = 1

