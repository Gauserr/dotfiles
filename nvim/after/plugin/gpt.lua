require("chatgpt").setup({
	chat = {
		welcome_message = "WELCOME_MESSAGE",
		loading_text = "beep boop yerp derp ...",
		question_sign = "?",
		answer_sign = "A",
		max_line_length = 120,
		keymaps = {
			close = { "<C-c>" },
			yank_last = "<C-y>",
			yank_last_code = "<C-Y>",
			scroll_up = "<C-u>",
			scroll_down = "<C-d>",
			new_session = "<C-n>",
			cycle_windows = "<Tab>",
			cycle_modes = "<C-f>",
			select_session = "<Space>",
			rename_session = "r",
			delete_session = "d",
			draft_message = "<C-m>",
			toggle_settings = "<C-o>",
			toggle_message_role = "<C-r>",
			toggle_system_role_open = "<C-a>",
		},
	},
	popup_layout = {
		default = "center",
		center = {
			width = "100%",
			height = "100%",
		},
		right = {
			width = "50%",
			width_settings_open = "50%",
		},
	},
	popup_input = {
		prompt = "?",
		submit = "<C-s>",
	},
})
vim.keymap.set("n", "<leader>c", ":ChatGPT<cr>")
vim.treesitter.language.register("markdown", "chatgpt")
