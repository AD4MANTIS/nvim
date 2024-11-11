return {
  { "rose-pine/neovim", name = "rose-pine" },
  { "ellisonleao/gruvbox.nvim" },
  {
    -- https://github.com/catppuccin/nvim?tab=readme-ov-file#configuration
    "catppuccin/nvim",
    opts = {
      transparent_background = true,
    },
    color_overrides = {},
  },
  {
    "Mofiqul/vscode.nvim",
    opts = {
      -- Enable transparent background
      transparent = true,
      color_overrides = {
        vscCursorLight = "#BEBEBE",
        vscLineNumber = "#8A8A8A",
      },
      group_overrides = {
        NeoTreeFileIcon = {}, -- TODO: Currently the icons are to yellow
      },
    },
  },
  -- Configure LazyVim to load a colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
