-- Setup Lsp.
local capabilities = require("lvim.lsp").common_capabilities()
require("lvim.lsp.manager").setup("texlab", {
  on_attach = require("lvim.lsp").common_on_attach,
  on_init = require("lvim.lsp").common_on_init,
  capabilities = capabilities,
})


-- Setup formatters.
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  { command = "latexindent", filetypes = { "tex" } },
})

-- Set a linter.
--[[ local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
  { command = "chktex", filetypes = { "tex" } },
}) ]]

--Setup plugins

table.insert(lvim.plugins,
  {
    "lervag/vimtex",
    {
      "micangl/cmp-vimtex",
      config = function()
        require('cmp_vimtex').setup({
          additional_information = {
            info_in_menu = true,
            info_in_window = true,
            info_max_length = 60,
            match_against_info = true,
            symbols_in_menu = true,
          },
          bibtex_parser = {
            enabled = true,
          },
          search = {
            browser = "xdg-open",
            default = "google_scholar",
            search_engines = {
              google_scholar = {
                name = "Google Scholar",
                get_url = require('cmp_vimtex').url_default_format("https://scholar.google.com/scholar?hl=en&q=%s"),
              },
              -- Other search engines.
            },
          },
        })
      end
    },
    "kdheepak/cmp-latex-symbols",
    --"KeitaNakamura/tex-conceal.vim", -- for live code symbols transformation
    --"SirVer/ultisnips", -- for quick code snippets
  }
)
-- UltiSnip configuration.

--[[ vim.cmd([[
  let g:UltiSnipsExpandTrigger="<CR>"
  let g:UltiSnipsJumpForwardTrigger="<Plug>(ultisnips_jump_forward)"
  let g:UltiSnipsJumpBackwardTrigger="<Plug>(ultisnips_jump_backward)"
  let g:UltiSnipsListSnippets="<c-x><c-s>"
  let g:UltiSnipsRemoveSelectModeMappings=0
  let g:UltiSnipsEditSplit="tabdo"
  let g:UltiSnipsSnippetDirectories=[$HOME."/.config/nvim/UltiSnips"]
]]--)
 --]]
-- Vimtex configuration.
-- vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_quickfix_enabled = 1
--vim.g.tex_flavor = 'xelatex'
vim.g.Tex_DefaultTargetFormat = 'pdf'
vim.g.vimtex_compiler_latexmk={
  backend = "xelatex",
  background = 1,
  build_dir='',
  callback = 1,
  continuous = 0,
  --automatically compile
  executable = "latexmk",
  options = {
    --"-pdf",
    "-interaction=nonstopmode",
    "-synctex=1",
    "-8bit",
    --"-file-line-error",
    --"-verbose",
    "-shell-escape"
  },

}
--vim.g.Tex_CompileRule_pdf = 'xelatex -synctex=1 -interaction=nonstopmode $*'
--vim.cmd [[
  --command! CompileAndRun try | execute 'VimtexClean' | execute 'VimtexCompile' | execute 'VimtexCompile' | execute 'luafile ~/personal/test/test.lua' | catch | echo "Error: " . v:exception | endtry
--]]
vim.cmd [[
  command! CompileAndRun try | execute 'VimtexCompile' | catch | echo "Error: " . v:exception | endtry
]]
-- Setup cmp.
--[[ vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("LaTeXGroup", { clear = true }),
  pattern = "tex",
  callback = function()
    require("texcmp")
  end,
}) ]]

vim.g["vimtex_mappings_enabled"] = 0

