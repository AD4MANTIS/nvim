-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set = vim.keymap.set

set("n", "<leader>vs", "<cmd>w<cr>", { desc = "Save" })
set("n", "<leader>vS", "<cmd>wall<cr>", { desc = "Save all" })
set("n", "<leader>vw", "<leader>bd", { desc = "Close Tab", remap = true })

set("n", "<leader>vö", ":ToggleTerm direction=horizontal <CR>", { desc = "Toggle Terminal" })
set("n", "<leader>bT", ":ToggleTerm direction=horizontal <CR>", { desc = "Toggle horizontal Terminal split" })
set("n", "<leader>bt", ":ToggleTerm direction=float <CR>", { desc = "Toggle float Terminal" })
