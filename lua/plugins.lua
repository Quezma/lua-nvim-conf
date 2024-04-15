local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- ensure that packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end
vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

--- startup and add configure plugins
packer.startup(function()
  local use = use
  -- packer
  use {'wbthomason/packer.nvim'}
  -- highlight sintax code
  use 'nvim-treesitter/nvim-treesitter'
  use 'sheerun/vim-polyglot'
  -- themes
  use 'tjdevries/colorbuddy.nvim'
  use 'bkegley/gloombuddy'
  use { "ellisonleao/gruvbox.nvim" }
  -- explorer
  use {'nvim-tree/nvim-tree.lua'}
  -- dev icons
  use {'nvim-tree/nvim-web-devicons'}
  -- Mason
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  -- nvim-lsp-installer (opcional)
  use 'williamboman/nvim-lsp-installer'
  -- autocompleate
  use 'hrsh7th/cmp-nvim-lsp'
  -- bufferline
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  -- statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  -- cmp for autocomplete
  use {'neovim/nvim-lspconfig'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  -- snippets
  use 'rafamadriz/friendly-snippets'
  -- markdown
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  -- other snippets
  use {'onsails/lspkind.nvim'}
  use({
    "L3MON4D3/LuaSnip",
    tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    run = "make install_jsregexp"
  })
  -- autopairs and autotags
  use {'windwp/nvim-ts-autotag'}
  use {'windwp/nvim-autopairs'}
  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  -- lspsaga
  use {'nvimdev/lspsaga.nvim'}
end
)
