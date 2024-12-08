-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

vim.o.numberwidth = 20 -- Give the code some left padding to center it a bit
opt.linebreak = true -- Wrap lines at convenient points
opt.scrolloff = 8 -- Lines of context
opt.spelllang = { "en", "de" }

opt.tabstop = 4 -- Number of spaces tabs count for
opt.softtabstop = 4
opt.shiftwidth = 4 -- Size of an indent

opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode

opt.termguicolors = true -- True color support

-- opt.colorcolumn = "100"

-- Enable the option to require a Prettier config file
-- If no prettier config file is found, the formatter will not be used
vim.g.lazyvim_prettier_needs_config = false
