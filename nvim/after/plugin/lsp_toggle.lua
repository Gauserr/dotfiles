require("telescope").load_extension("find_pickers")
require("lsp-toggle").setup({
	telescope = true,
})

vim.keymap.set("n", "<leader>ln", ":Telescope ToggleNullLSP<cr>")
vim.keymap.set("n", "<leader>lt", ":Telescope ToggleLSP<cr>")
