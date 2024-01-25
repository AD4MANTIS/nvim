local lspconfig = require("lspconfig")
lspconfig.typos_lsp.setup({
    filetypes = { "*" },
    single_file_support = true,
})
