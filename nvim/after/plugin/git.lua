require("gitsigns").setup({
	on_attach = function(bufnr)
		local gs = package.loaded.gitsigns

		local function map(mode, l, r, opts)
			opts = opts or {}
			opts.buffer = bufnr
			vim.keymap.set(mode, l, r, opts)
		end

		-- Navigation
		map("n", "]c", function()
			if vim.wo.diff then
				return "]c"
			end
			vim.schedule(function()
				gs.next_hunk()
			end)
			return "<Ignore>"
		end, { expr = true })

		map("n", "[c", function()
			if vim.wo.diff then
				return "[c"
			end
			vim.schedule(function()
				gs.prev_hunk()
			end)
			return "<Ignore>"
		end, { expr = true })

		-- Actions
		map("n", "<leader>hs", gs.stage_hunk)
		map("n", "<leader>hr", gs.reset_hunk)
		map("v", "<leader>hs", function()
			gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
		end)
		map("v", "<leader>hr", function()
			gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
		end)
		map("n", "<leader>hS", gs.stage_buffer)
		map("n", "<leader>hu", gs.undo_stage_hunk)
		map("n", "<leader>hR", gs.reset_buffer)
		map("n", "<leader>hp", gs.preview_hunk)
		map("n", "<leader>hb", function()
			gs.blame_line({ full = true })
		end)
		map("n", "<leader>tb", gs.toggle_current_line_blame)
		map("n", "<leader>hd", gs.diffthis)
		map("n", "<leader>hD", function()
			gs.diffthis("~")
		end)
		map("n", "<leader>td", gs.toggle_deleted)

		-- Text object
		map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>")
	end,
})

--fugitive mappings
vim.keymap.set("n", "<Leader>ga", ":Git add %:p<CR><CR>")
vim.keymap.set("n", "<Leader>gs", ":Gstatus<CR>")
vim.keymap.set("n", "<Leader>gc", ":Gcommit -v -q<CR>")
vim.keymap.set("n", "<Leader>gt", ":Gcommit -v -q %:p<CR>")
vim.keymap.set("n", "<Leader>gd", ":Gdiff<CR>")
vim.keymap.set("n", "<Leader>ge", ":Gedit<CR>")
vim.keymap.set("n", "<Leader>gr", ":Gread<CR>")
vim.keymap.set("n", "<Leader>gw", ":Gwrite<CR><CR>")
vim.keymap.set("n", "<Leader>gl", ":silent! Glog<CR>:bot copen<CR>")
vim.keymap.set("n", "<Leader>gp", ":Ggrep<Space>")
vim.keymap.set("n", "<Leader>gm", ":Gmove<Space>")
vim.keymap.set("n", "<Leader>gb", ":Git branch<Space>")
vim.keymap.set("n", "<Leader>go", ":Git checkout<Space>")
-- vim.keymap.set('n', '<Leader>gps', ':Dispatch! git push<CR>' )
-- vim.keymap.set('n', '<Leader>gpl', ':Dispatch! git pull<CR>' )
