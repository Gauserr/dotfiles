local keymap = vim.keymap.set

vim.g.mapleader = ' '


keymap('n', 'Q', '<nop>')

keymap('n', '<Leader><Leader>',vim.cmd.so)

keymap({'n', 'v', 'x'}, ';', ':')
keymap({'n', 'v', 'x'}, ':', ';')

keymap('n', 'J', "mzJ'z")

keymap('n', 'q', 'Bdelete!<cr>')

keymap('n', 'L', '$')
keymap('n', 'H', '^')

keymap('n', 'sv', ':vsplit<cr>')
keymap('n', 'ss', ':split<cr>')

keymap('n', '<Leader>tl', ':tabNext<cr>')
keymap('n', '<Leader>th', ':tabprevious<cr>')
keymap('n', '<Leader>tn', ':tabnew<cr>')
keymap('n', '<Leader>tc', ':tabclose<cr>')
keymap('n', '<Leader>tL', ':+tabmove<cr>')
keymap('n', '<Leader>tH', ':-tabmove<cr>')

keymap('n', '<bs>', '<C-^>')

keymap('n', 'n', 'nzzzv')
keymap('n', 'N', 'Nzzzv')

keymap('n', '<C-d>', '<C-d>zz')
keymap('n', '<C-u>', '<C-u>zz')

keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

keymap("v", "K", ":m '<-2<CR>gv=gv")
keymap("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("x", "<leader>p", [["_dP]])

