local oil = require('oil')

vim.keymap.set('n', '<Leader>fs', ':Oil<cr>')

oil.setup({
	win_options = {
		conceallevel = 0,
	},
	keymaps = {
		["g?"] = "actions.show_help",
		["<CR>"] = "actions.select",
		["<C-s>"] = "actions.select_vsplit",
		["<C-v>"] = "actions.select_split",
		["<C-t>"] = "actions.select_tab",
		["-"] = "actions.preview",
		["<C-c>"] = "actions.close",
		["<C-l>"] = "actions.refresh",
		["<C-p>"] = "actions.parent",
		["<C-o>"] = "actions.open_cwd",
		["<C-d>"] = "actions.cd",
		["~"] = "actions.tcd",
		["g."] = "actions.toggle_hidden",
	},
	use_default_keymaps = true,
	view_options = {
		show_hidden = true,
		is_hidden_file = function(name, bufnr)
			return vim.startswith(name, ".")
		end,
		is_always_hidden = function(name, bufnr)
			return false
		end,
	},
})
