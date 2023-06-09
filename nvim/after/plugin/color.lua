require("colorbuddy").setup()
require("neosolarized").setup({
	background_set = true,
})

vim.o.termguicolors = false
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox-material]])
