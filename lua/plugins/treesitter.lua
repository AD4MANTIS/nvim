return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "html",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "regex",
                "rust",
                "toml",
                "typescript",
                "yaml",
            },
            highlight = { enable = true },
            auto_install = false
        },
    },
    {
        'nvim-treesitter/playground'
    }
}
