vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}
  use "ellisonleao/gruvbox.nvim"
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({ "elixir-tools/elixir-tools.nvim", tag = "stable", requires = { "nvim-lua/plenary.nvim" }})
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim"
  }
  use {'neovim/nvim-lspconfig'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'nvim-treesitter/nvim-treesitter'}
  use {'mhanberg/elixir.nvim'}
  use {'hrsh7th/vim-vsnip'}
  use {'hrsh7th/cmp-vsnip'}
end)
