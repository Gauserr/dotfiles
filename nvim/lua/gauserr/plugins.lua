return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	use({
		"JoosepAlviste/nvim-ts-context-commentstring",
	})
	use({
		"numToStr/Comment.nvim",
	})
	use("nvim-treesitter/nvim-treesitter-context")
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

	use("jose-elias-alvarez/null-ls.nvim")

	-- Packer
	use({
		"jackMort/ChatGPT.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
	})

	use({
		"stevearc/oil.nvim",
	})
	use("nvim-lua/plenary.nvim")
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("ibhagwan/fzf-lua")
	use("windwp/nvim-ts-autotag")
	use("tpope/vim-fugitive")
	use({
		"lewis6991/gitsigns.nvim",
		-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
	})
	use("mbbill/undotree")
	use("morhetz/gruvbox")
	use("lukas-reineke/indent-blankline.nvim")
	use({
		"tjdevries/colorbuddy.nvim",
	})
	use("sainnhe/everforest")
	use("sainnhe/gruvbox-material")
	use("hzchirs/vim-material")
	use({
		"svrana/neosolarized.nvim",
	})
	use("adoyle-h/lsp-toggle.nvim")
	use("jsit/toast.vim")

	--hack for cmd to find and toggle attached lsp's
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
	})
	use({
		"keyvchan/telescope-find-pickers.nvim",
	})

	use("tpope/vim-obsession")
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
	})
	use("eandrju/cellular-automaton.nvim")
end)
