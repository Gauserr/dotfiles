local keymap = vim.keymap.set

vim.g.mapleader = " "

keymap("n", "Q", "<nop>")
keymap("n", "<Leader>w", "<C-w>")
keymap("n", "<C-w>", "")

keymap({ "n", "v", "x" }, ";", ":")
keymap({ "n", "v", "x" }, ":", ";")

keymap("n", "L", "$")
keymap("n", "H", "^")

keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

keymap("v", "K", ":m '<-2<CR>gv=gv")
keymap("v", "J", ":m '>+1<CR>gv=gv")
