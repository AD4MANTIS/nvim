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
    "folke/tokyonight.nvim",
    lazy = true,
    opts = function()
      local c = require("vscode.colors").get_colors()
      local isDark = vim.o.background == "dark"

      ---@class tokyonight.Config
      return {
        style = "night",
        transparent_background = true,
        styles = {},
        on_colors = function(colors) end,
        on_highlights = function(highlights, colors)
          highlights.Comment = { fg = c.vscGreen, bg = "NONE" }
          highlights.Constant = { fg = c.vscBlue, bg = "NONE" }
          highlights.String = { fg = c.vscOrange, bg = "NONE" }
          highlights.Character = { fg = c.vscOrange, bg = "NONE" }
          highlights.Number = { fg = c.vscLightGreen, bg = "NONE" }
          highlights.Boolean = { fg = c.vscBlue, bg = "NONE" }
          highlights.Float = { fg = c.vscLightGreen, bg = "NONE" }
          highlights.Identifier = { fg = c.vscLightBlue, bg = "NONE" }
          highlights.Function = { fg = c.vscYellow, bg = "NONE" }
          highlights.Statement = { fg = c.vscPink, bg = "NONE" }
          highlights.Conditional = { fg = c.vscPink, bg = "NONE" }
          highlights.Repeat = { fg = c.vscPink, bg = "NONE" }
          highlights.Label = { fg = c.vscPink, bg = "NONE" }
          highlights.Operator = { fg = c.vscFront, bg = "NONE" }
          highlights.Keyword = { fg = c.vscPink, bg = "NONE" }
          highlights.Exception = { fg = c.vscPink, bg = "NONE" }
          highlights.PreProc = { fg = c.vscPink, bg = "NONE" }
          highlights.Include = { fg = c.vscPink, bg = "NONE" }
          highlights.Define = { fg = c.vscPink, bg = "NONE" }
          highlights.Macro = { fg = c.vscPink, bg = "NONE" }
          highlights.Type = { fg = c.vscBlue, bg = "NONE" }
          highlights.StorageClass = { fg = c.vscBlue, bg = "NONE" }
          highlights.Structure = { fg = c.vscBlueGreen, bg = "NONE" }
          highlights.Typedef = { fg = c.vscBlue, bg = "NONE" }
          highlights.Special = { fg = c.vscYellowOrange, bg = "NONE" }
          highlights.SpecialChar = { fg = c.vscFront, bg = "NONE" }
          highlights.Tag = { fg = c.vscFront, bg = "NONE" }
          highlights.Delimiter = { fg = c.vscFront, bg = "NONE" }
          highlights.SpecialComment = { fg = c.vscGreen, bg = "NONE" }
          highlights.Debug = { fg = c.vscFront, bg = "NONE" }
          highlights.Underlined = { fg = c.vscNone, bg = "NONE", underline = true }
          highlights.Conceal = { fg = c.vscFront, bg = c.vscBack }
          highlights.Ignore = { fg = c.vscFront, bg = "NONE" }
          highlights.Error = { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed }
          highlights.Todo = { fg = c.vscYellowOrange, bg = c.vscBack, bold = true }
          highlights.SpellBad = { fg = "NONE", undercurl = true, sp = c.vscRed }
          highlights.SpellCap = { fg = "NONE", undercurl = true, sp = c.vscYellow }
          highlights.SpellRare = { fg = "NONE", undercurl = true, sp = c.vscViolet }
          highlights.SpellLocal = { fg = "NONE", undercurl = true, sp = c.vscBlue }
          highlights.Whitespace = { fg = isDark and c.vscLineNumber or c.vscTabOther }
          highlights.NormalFloat = { bg = c.vscPopupBack }
          highlights.WinBar = { fg = c.vscFront, bg = c.vscBack, bold = true }
          highlights.WinBarNc = { fg = c.vscFront, bg = c.vscBack }
          highlights.QuickFixLine = { bold = true }

          -- Treesitter
          highlights["@error"] = { fg = c.vscRed, bg = "NONE" }
          highlights["@punctuation.bracket"] = { fg = c.vscFront, bg = "NONE" }
          highlights["@punctuation.special"] = { fg = c.vscFront, bg = "NONE" }
          highlights["@punctuation.delimiter"] = { fg = c.vscFront, bg = "NONE" }
          -- highlights["@comment"] = { fg = c.vscGreen, bg = "NONE", italic = opts.italic_comments }
          highlights["@comment.note"] = { fg = c.vscBlueGreen, bg = "NONE", bold = true }
          highlights["@comment.warning"] = { fg = c.vscYellowOrange, bg = "NONE", bold = true }
          highlights["@comment.error"] = { fg = c.vscRed, bg = "NONE", bold = true }
          highlights["@constant"] = { fg = c.vscAccentBlue, bg = "NONE" }
          highlights["@constant.builtin"] = { fg = c.vscBlue, bg = "NONE" }
          highlights["@constant.macro"] = { fg = c.vscBlueGreen, bg = "NONE" }
          highlights["@string.regexp"] = { fg = c.vscOrange, bg = "NONE" }
          highlights["@string"] = { fg = c.vscOrange, bg = "NONE" }
          highlights["@character"] = { fg = c.vscOrange, bg = "NONE" }
          highlights["@number"] = { fg = c.vscLightGreen, bg = "NONE" }
          highlights["@number.float"] = { fg = c.vscLightGreen, bg = "NONE" }
          highlights["@boolean"] = { fg = c.vscBlue, bg = "NONE" }
          highlights["@annotation"] = { fg = c.vscYellow, bg = "NONE" }
          highlights["@attribute"] = { fg = c.vscYellow, bg = "NONE" }
          highlights["@attribute.builtin"] = { fg = c.vscBlueGreen, bg = "NONE" }
          highlights["@module"] = { fg = c.vscBlueGreen, bg = "NONE" }
          highlights["@function"] = { fg = c.vscYellow, bg = "NONE" }
          highlights["@function.builtin"] = { fg = c.vscYellow, bg = "NONE" }
          highlights["@function.macro"] = { fg = c.vscYellow, bg = "NONE" }
          highlights["@function.method"] = { fg = c.vscOrange, bg = "NONE" }
          highlights["@define"] = { fg = c.vscPink, bg = "NONE" }
          highlights["@variable"] = { fg = c.vscLightBlue, bg = "NONE" }
          highlights["@variable.builtin"] = { fg = c.vscBlue, bg = "NONE" }
          highlights["@variable.parameter"] = { fg = c.vscLightBlue, bg = "NONE" }
          highlights["@variable.parameter.reference"] = { fg = c.vscLightBlue, bg = "NONE" }
          highlights["@variable.member"] = { fg = c.vscLightBlue, bg = "NONE" }
          highlights["@property"] = { fg = c.vscLightBlue, bg = "NONE" }
          highlights["@constructor"] = { fg = c.vscBlue, bg = "NONE" }
          highlights["@label"] = { fg = c.vscLightBlue, bg = "NONE" }
          highlights["@keyword"] = { fg = c.vscBlue, bg = "NONE" }
          highlights["@keyword.conditional"] = { fg = c.vscPink, bg = "NONE" }
          highlights["@keyword.repeat"] = { fg = c.vscPink, bg = "NONE" }
          highlights["@keyword.return"] = { fg = c.vscPink, bg = "NONE" }
          highlights["@keyword.exception"] = { fg = c.vscPink, bg = "NONE" }
          highlights["@keyword.import"] = { fg = c.vscPink, bg = "NONE" }
          highlights["@keyword.function"] = { fg = c.vscBlue, bg = "NONE" }
          highlights["@operator"] = { fg = c.vscFront, bg = "NONE", bold = true }
          highlights["@type"] = { fg = c.vscBlueGreen, bg = "NONE" }
          highlights["@type.qualifier"] = { fg = c.vscBlue, bg = "NONE" }
          highlights["@structure"] = { fg = c.vscLightBlue, bg = "NONE" }
          highlights["@tag"] = { fg = c.vscBlue, bg = "NONE" }
          highlights["@tag.builtin"] = { fg = c.vscBlue, bg = "NONE" }
          highlights["@tag.delimiter"] = { fg = c.vscGray, bg = "NONE" }
          highlights["@tag.attribute"] = { fg = c.vscLightBlue, bg = "NONE" }

          -- highlights["@diff.plus"] = { link = "DiffAdd" }
          -- highlights["@diff.minus"] = { link = "DiffDelete" }
          -- highlights["@diff.delta"] = { link = "DiffChange" }

          -- LSP semantic tokens
          highlights["@type.builtin"] = { fg = c.vscBlue, bg = "NONE" }
          highlights["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" }
          highlights["@lsp.type.type"] = { link = "@type" }
          highlights["@lsp.type.typeParameter"] = { link = "@type" }
          highlights["@lsp.type.macro"] = { link = "@constant" }
          highlights["@lsp.type.enumMember"] = { link = "@constant" }
          highlights["@lsp.typemod.variable.readonly"] = { link = "@constant" }
          highlights["@lsp.typemod.property.readonly"] = { link = "@constant" }
          highlights["@lsp.typemod.variable.constant"] = { link = "@constant" }
          highlights["@lsp.type.member"] = { link = "@function" }
          highlights["@lsp.type.keyword"] = { link = "@keyword" }
          highlights["@lsp.typemod.keyword.controlFlow"] = { fg = c.vscPink, bg = "NONE" }
          highlights["@lsp.type.comment.c"] = { fg = c.vscDimHighlight, bg = "NONE" }
          highlights["@lsp.type.comment.cpp"] = { fg = c.vscDimHighlight, bg = "NONE" }
          highlights["@event"] = { link = "Identifier" }
          highlights["@interface"] = { link = "Identifier" }
          highlights["@modifier"] = { link = "Identifier" }
          highlights["@regexp"] = { fg = c.vscRed, bg = "NONE" }
          highlights["@decorator"] = { link = "Identifier" }
          highlights["@parameter"] = { link = "@variable.parameter" }
          highlights["@field"] = { link = "@variable.member" }
          highlights["@string.regex"] = { link = "@string.regexp" }
          highlights["@float"] = { link = "@number.float" }
          highlights["@namespace"] = { link = "@module" }
          highlights["@method"] = { link = "@function.method" }
          highlights["@field"] = { link = "@variable.member" }
          highlights["@conditional"] = { link = "@keyword.conditional" }
          highlights["@repeat"] = { link = "@keyword.repeat" }
          highlights["@exception"] = { link = "@keyword.exception" }
          highlights["@storageclass"] = { link = "@keyword.storage" }
          highlights["@include"] = { link = "@keyword.import" }

          -- LSP
          highlights.DiagnosticOk = { fg = c.vscBlueGreen, bg = "NONE" }
          highlights.DiagnosticError = { fg = c.vscRed, bg = "NONE" }
          highlights.DiagnosticWarn = { fg = c.vscYellow, bg = "NONE" }
          highlights.DiagnosticInfo = { fg = c.vscBlue, bg = "NONE" }
          highlights.DiagnosticHint = { fg = c.vscBlue, bg = "NONE" }
          highlights.DiagnosticUnnecessary = { fg = c.vscDisabledBlue, bg = "NONE" }
          highlights.DiagnosticUnderlineError = { fg = "NONE", bg = "NONE", undercurl = true, sp = c.vscRed }
          highlights.DiagnosticUnderlineWarn = { fg = "NONE", bg = "NONE", undercurl = true, sp = c.vscYellow }
          highlights.DiagnosticUnderlineInfo = { fg = "NONE", bg = "NONE", undercurl = true, sp = c.vscBlue }
          highlights.DiagnosticUnderlineHint = { fg = "NONE", bg = "NONE", undercurl = true, sp = c.vscBlue }
          highlights.LspInlayHint = { fg = c.vscSuggestion, bg = "NONE" }
        end,
      }
    end,
  },
  {
    "Mofiqul/vscode.nvim",
    opts = function()
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
      --hl(0, "@keyword.function", { fg = "#569CD6" })
      --hl(0, "@conditional", { fg = "#C586C0" })
      --hl(0, "@field", { fg = "#9CDCFE" })
      --hl(0, "@variable", { fg = "#9CDCFE" })
      --hl(0, "@parameter", { fg = "#9CDCFE" }
      --
      local colors = require("tokyonight.colors").setup({
        style = "night",
      })

      return {
        transparent = true, -- Enable transparent background
        color_overrides = {
          vscCursorLight = "#BEBEBE",
          vscLineNumber = "#8A8A8A",
        },
        -- Override highlight groups (see ./lua/vscode/theme.lua)
        group_overrides = {
          -- this supports the same val table as vim.api.nvim_set_hl
          -- use colors from this colorscheme by requiring vscode.colors!
          background = { bg = colors.bg },
          ["@keyword"] = { fg = "#569CD6" },

          CmpGhostText = { fg = c.vscCursorLight, italic = true },

          Special = { fg = colors.fg },

          SnacksDashboardHeader = { fg = colors.blue, bold = true },
          SnacksDashboardButton = { fg = colors.magenta },
          SnacksDashboardKey = { fg = colors.cyan, bold = true },
          SnacksDashboardDesc = { fg = colors.fg },
          SnacksDashboardFooter = { fg = colors.comment },
          SnacksDashboard = { bg = colors.bg_dark },

          StatusLine = { bg = colors.bg_statusline },
        },
      }
    end,
  },
  -- Configure LazyVim to load a colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
