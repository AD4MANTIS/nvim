-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.linebreak = true -- Wrap lines at convenient points
opt.scrolloff = 8 -- Lines of context
opt.spelllang = { "en", "de" }

opt.tabstop = 4 -- Number of spaces tabs count for
opt.softtabstop = 4
opt.shiftwidth = 4 -- Size of an indent

opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode

opt.termguicolors = true -- True color support

-- opt.colorcolumn = "100"
