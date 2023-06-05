require("chatgpt").setup({
	api_key_cmd = nil,
	yank_register = "+",
	chat = {
		welcome_message = "WELCOME_MESSAGE",
		loading_text = "beep boop yerp derp ...",
		question_sign = "?",
		answer_sign = "A",
		max_line_length = 120,
		keymaps = {
			close = { "<C-c>" },
			yank_last = "<C-y>",
			yank_last_code = "<C-k>",
			scroll_up = "<C-u>",
			scroll_down = "<C-d>",
			new_session = "<C-n>",
			cycle_windows = "<Tab>",
			cycle_modes = "<C-f>",
			select_session = "<Space>",
			rename_session = "r",
			delete_session = "d",
			draft_message = "<C-d>",
			toggle_settings = "<C-o>",
			toggle_message_role = "<C-r>",
			toggle_system_role_open = "<C-s>",
		},
	},
	popup_layout = {
		default = "center",
		center = {
			width = "100%",
			height = "100%",
		},
		right = {
			width = "30%",
			width_settings_open = "50%",
		},
	},
	popup_input = {
		prompt = "?",
		submit = "<Cr>",
	},
})
vim.keymap.set("n", "<leader>gt", ":ChatGPT<cr>")
