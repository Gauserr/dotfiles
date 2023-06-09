require("nvim-treesitter.configs").setup({
	ensure_installed = { "markdown", "markdown_inline", ... },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = { "markdown" },
	},
})

require("obsidian").setup({
	dir = "~/Documents/Obsidian Vault",
	completion = {
		nvim_cmp = true,
	},
	finder = "fzf-lua",
	templates = {
		subir = "Templates",
	},
	daily_notes = {
		folder = "Daily",
		date_format = "%Y-%m-%d",
	},

	disable_frontmatter = false,
	follow_url_func = function(url)
		vim.fn.jobstart({ "open", url }) -- Mac OS
	end,

	note_frontmatter_func = function(note)
		-- This is equivalent to the default frontmatter function.
		local out = { id = note.id, aliases = note.aliases, tags = note.tags }
		-- `note.metadata` contains any manually added fields in the frontmatter.
		-- So here we just make sure those fields are kept in the frontmatter.
		if note.metadata ~= nil and require("obsidian").util.table_length(note.metadata) > 0 then
			for k, v in pairs(note.metadata) do
				out[k] = v
			end
		end
		return out
	end,
})
vim.keymap.set("n", "<leader>oo", ":ObsidianToday<cr>")
vim.keymap.set("n", "<leader>oy", ":ObsidianYesterday<cr>")
vim.keymap.set("n", "<leader>og", ":ObsidianSearch<cr>")
vim.keymap.set("n", "<leader>of", ":ObsidianQuickSwitch<cr>")
vim.keymap.set("n", "<leader>on", ":ObsidianNew<cr>")
vim.keymap.set("n", "<leader>ot", ":ObsidianTemplate<cr>")
vim.keymap.set("n", "<leader>ob", ":ObsidianBacklinks<cr>")
vim.keymap.set("n", "<leader>ol", ":ObsidianLink<cr>")
vim.keymap.set("n", "<leader>oL", ":ObsidianLinkNew<cr>")
vim.keymap.set("n", "<leader>oF", ":ObsidianFollowLink<cr>")
