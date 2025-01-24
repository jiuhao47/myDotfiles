table.insert(
  lvim.plugins,
  {
    "hedyhli/outline.nvim",

    config = function()
      -- Example mapping to toggle outline
      vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>",
        { desc = "Toggle Outline" })
      require("outline").setup {
        symbols = {
          -- Filter by kinds (string) for symbols in the outline.
          -- Possible kinds are the Keys in the icons table below.
          -- A filter list is a string[] with an optional exclude (boolean) field.
          -- The symbols.filter option takes either a filter list or ft:filterList
          -- key-value pairs.
          -- Put  exclude=true  in the string list to filter by excluding the list of
          -- kinds instead.
          -- Include all except String and Constant:
          --   filter = { 'String', 'Constant', exclude = true }
          -- Only include Package, Module, and Function:
          --   filter = { 'Package', 'Module', 'Function' }
          -- See more examples below.
          filter = nil,

          -- You can use a custom function that returns the icon for each symbol kind.
          -- This function takes a kind (string) as parameter and should return an
          -- icon as string.
          ---@param kind string Key of the icons table below
          ---@param bufnr integer Code buffer
          ---@returns string|boolean The icon string to display, such as "f", or `false`
          ---                        to fallback to `icon_source`.
          icon_fetcher = nil,
          -- 3rd party source for fetching icons. This is used as a fallback if
          -- icon_fetcher returned an empty string.
          -- Currently supported values: 'lspkind'
          icon_source = nil,
          -- The next fallback if both icon_fetcher and icon_source has failed, is
          -- the custom mapping of icons specified below. The icons table is also
          -- needed for specifying hl group.
          icons = {
            File = { icon = ' ', hl = 'Identifier' },
            Module = { icon = '󰆧', hl = 'Include' },
            Namespace = { icon = '󰅪', hl = 'Include' },
            Package = { icon = '󰏗', hl = 'Include' },
            Class = { icon = '', hl = 'Type' },
            Method = { icon = 'ƒ', hl = 'Function' },
            Property = { icon = '', hl = 'Identifier' },
            Field = { icon = '󰆨', hl = 'Identifier' },
            Constructor = { icon = '󱌣', hl = 'Special' },
            Enum = { icon = 'ℰ', hl = 'Type' },
            Interface = { icon = '󰜰', hl = 'Type' },
            Function = { icon = '󰡱', hl = 'Function' },
            Variable = { icon = '󰫧', hl = 'Constant' },
            Constant = { icon = '', hl = 'Constant' },
            String = { icon = '', hl = 'String' },
            Number = { icon = '#', hl = 'Number' },
            Boolean = { icon = '⊨', hl = 'Boolean' },
            Array = { icon = '󰅪', hl = 'Constant' },
            Object = { icon = '⦿', hl = 'Type' },
            Key = { icon = '', hl = 'Type' },
            Null = { icon = 'NULL', hl = 'Type' },
            EnumMember = { icon = '', hl = 'Identifier' },
            Struct = { icon = '𝓢', hl = 'Structure' },
            Event = { icon = '🗲', hl = 'Type' },
            Operator = { icon = '+', hl = 'Identifier' },
            TypeParameter = { icon = '𝙏', hl = 'Identifier' },
            Component = { icon = '󰅴', hl = 'Function' },
            Fragment = { icon = '󰅴', hl = 'Constant' },
            TypeAlias = { icon = ' ', hl = 'Type' },
            Parameter = { icon = ' ', hl = 'Identifier' },
            StaticMethod = { icon = '', hl = 'Function' },
            Macro = { icon = '󰬔 ', hl = 'Function' },
          },
        },
        -- Your setup opts here (leave empty to use defaults)

      }
    end,
  }
)
