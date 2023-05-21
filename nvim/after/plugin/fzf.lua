local actions = require("fzf-lua.actions")
local fzf = require('fzf-lua')

vim.keymap.set('n', '<Leader>ff', fzf.files)
vim.keymap.set('n', '<Leader>fk', fzf.keymaps)
vim.keymap.set('n', '<Leader>fg', fzf.live_grep)
vim.keymap.set('n', '<Leader>fd', fzf.buffers)

fzf.setup({
	"max-perf",
	winopts = {
		fullscreen = true,
		border = false,
		preview = {
			border = "noborder",
			wrap = "nowrap",
			hidden = "hidden",
			horizontal = "right:70%",
		},
	},
	keymap = {
		builtin = {
			["<c-d>"] = "preview-page-down",
			["<c-u>"] = "preview-page-up",
			["-"] = "toggle-preview",
		},
		fzf = {
			["ctrl-d"] = "preview-page-down",
			["ctrl-u"] = "preview-page-up",
			["-"] = "toggle-preview",
		},
	},
	bat = {
		theme = "neosolarized",
	},
	files = {
		prompt = "files: ",
		show_cwd_prompt = true,
	},
	grep = {
		prompt = "grep: ",
		winopts = {
			preview = {
				hidden = "nohidden",
			},
		},
	},
	buffers = {
		prompt = "buffers❯ ",
		file_icons = false, -- show file icons?
		color_icons = false, -- colorize file|git icons
		sort_lastused = true, -- sort buffers() by last used
		cwd_only = false, -- buffers for the cwd only
		cwd = nil, -- buffers list for a given dir
		actions = {
			["ctrl-w"] = { actions.buf_del, actions.resume },
		},
	},
})
