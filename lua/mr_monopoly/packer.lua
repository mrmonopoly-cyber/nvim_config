vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
          'nvim-telescope/telescope.nvim', tag = '0.1.3',
          requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
          "catppuccin/nvim",
          as = "catppuccin",
  }

  use ('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
  use ('ThePrimeagen/harpoon')
  use ('tpope/vim-fugitive')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
}
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
use {
  'antosha417/nvim-lsp-file-operations',
  requires = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-tree.lua",
  }
}
use ('sakhnik/nvim-gdb')
use{
  "NvChad/nvterm",
  config = function ()
    require("nvterm").setup()
  end,
}
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

 use 'mbbill/undotree'
 use 'adelarsq/neofsharp.vim'
 use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
end)

