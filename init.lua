-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if not vim.g.vscode then
    require("config.colors")
end

require("notify").setup({
    background_colour = "#000000",
})
