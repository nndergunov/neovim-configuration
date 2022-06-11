require('nvim-treesitter.configs').setup {
    ensure_installed = { "go", "gomod", "dockerfile", "toml", "yaml", "make", "vim", "lua" },
  highlight = { enable = true },
  indent = { enable = true }
}
