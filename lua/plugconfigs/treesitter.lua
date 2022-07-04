require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "go", "gomod",
        "rust",
        "dockerfile",
        "toml", "yaml",
        "make",
        "markdown",
        "vim", "lua"
    },
    highlight = { enable = true },
    rainbow = {
        enable = true,
        extended = true
    },
    indent = { enable = true }
}
