
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
  }
  use 'nvim-treesitter/nvim-treesitter-context'
   use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

	use({
		"stevearc/oil.nvim",
	})
  use 'nvim-lua/plenary.nvim'
  use 'theprimeagen/harpoon'
  use 'ibhagwan/fzf-lua'
  use 'tpope/vim-fugitive'
  use 'mbbill/undotree'
  use 'eandrju/cellular-automaton.nvim'
  use ({'svrana/neosolarized.nvim', requires = 'tjdevries/colorbuddy.nvim',
  config = function()
    require('neosolarized').setup({
      background_set = true})
  end
  })
end
)
