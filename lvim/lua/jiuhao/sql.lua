--[[ table.insert(lvim.plugins,
  {
      'xemptuous/sqlua.nvim',
      lazy = true,
      cmd = 'SQLua',
      config = function() require('sqlua').setup() end
  }
) ]]

table.insert(lvim.plugins,
  {
    "nanotee/sqls.nvim"
  }
)

require 'lspconfig'.sqls.setup {
  on_attach = function(client, bufnr)
    require('sqls').on_attach(client, bufnr) -- require sqls.nvim
  end,
  settings = {
    sqls = {
      connections = {
        {
          driver = 'mysql',
          dataSourceName = 'root:3c7sjy@tcp(127.0.0.1:3306)/test',
        },
      },
    },
  },
}
