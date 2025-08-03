return {
  { "rose-pine/neovim", name = "rose-pine" },
  { "ellisonleao/gruvbox.nvim" },
  {
    -- https://github.com/catppuccin/nvim?tab=readme-ov-file#configuration
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
      color_overrides = {},
    },
  },
  {
    "Mofiqul/vscode.nvim",
    opts = function()
      local hl = vim.api.nvim_set_hl
      local c = require("vscode.colors").get_colors()
      -- local isDark = vim.o.background == "dark"

      --hl(0, "Comment", { fg = "#6A9955" })
      --hl(0, "Constant", { fg = "#569CD6" })
      --hl(0, "Identifier", { fg = "#9CDCFE" })
      --hl(0, "PreProc", { fg = "#569CD6" })
      --hl(0, "Type", { fg = "#4EC9B0" })
      --hl(0, "Structure", { fg = "#4EC9B0" })
      --hl(0, "@type", { fg = "#4EC9B0" })
      --hl(0, "@type.builtin", { fg = "#4EC9B0" })

      --hl(0, "String", { fg = "#CE9178" })
      --hl(0, "Character", { fg = "#CE9178" })
      --hl(0, "Number", { fg = "#B5CEA8" })
      --hl(0, "Boolean", { fg = "#B5CEA8" })
      --hl(0, "Float", { fg = "#B5CEA8" })
      --hl(0, "Function", { fg = "#DCDCAA" })
      --hl(0, "@function", { fg = "#DCDCAA" })
      --hl(0, "@function.macro", { fg = "#DCDCAA" })
      --hl(0, "Keyword", { fg = "#569CD6" })
      hl(0, "@keyword", { fg = "#569CD6" })
      --hl(0, "@keyword.function", { fg = "#569CD6" })
      --hl(0, "@conditional", { fg = "#C586C0" })
      --hl(0, "@field", { fg = "#9CDCFE" })
      --hl(0, "@variable", { fg = "#9CDCFE" })
      --hl(0, "@parameter", { fg = "#9CDCFE" })

      hl(0, "CmpGhostText", { fg = c.vscCursorLight, italic = true })

      return {
        transparent = true, -- Enable transparent background
        color_overrides = {
          vscCursorLight = "#BEBEBE",
          vscLineNumber = "#8A8A8A",
        },
      }
    end,
  },
  -- Configure LazyVim to load a colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
