require'nvim-treesitter.configs'.setup {
  ensure_installed = {"elixir", "heex", "eex", "lua", "tsx", "json", "yaml", "css", "html"},
  sync_install = false,
  ignore_install = { },
  highlight = {
    enable = true,
    disable = { },
  },
}
