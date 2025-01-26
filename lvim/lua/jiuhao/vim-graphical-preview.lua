table.insert(lvim.plugins, {
	"mattn/libcallex-vim",
	build = "make -C autoload",
})

table.insert(lvim.plugins, {
	"bytesnake/vim-graphical-preview",
	build = "cargo build --release",
})

-- vim.cmd([[
--   autocmd BufRead,BufNewFile *.md set filetype=markdown.graphics
-- ]])
