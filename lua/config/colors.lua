local c = require('vscode.colors').get_colors()
require('vscode').setup({
    -- Alternatively set style in setup
    style = 'dark',

    -- Enable transparent background
    transparent = true,

    -- -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
    }
})
require('vscode').load()

local hl = vim.api.nvim_set_hl
hl(0, "Normal", { bg = "none" })
hl(0, "NormalFloat", { bg = "none" })
hl(0, "NonText", { fg = "none" })
--hl(0, "Comment", { fg = "#6A9955" })
--hl(0, "Constant", { fg = "#569CD6" })
--hl(0, "Identifier", { fg = "#9CDCFE" })
--hl(0, "PreProc", { fg = "#569CD6" })
--hl(0, "Type", { fg = "#4EC9B0" })
--hl(0, "Structure", { fg = "#4EC9B0" })
--hl(0, "@type", { fg = "#4EC9B0" })
--hl(0, "@type.builtin", { fg = "#4EC9B0" })
--
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
