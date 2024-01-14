-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>vs", "<cmd>w<cr>", { desc = "Save" })
vim.keymap.set("n", "<leader>vw", "<cmd>bd<cr>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader>vö", "<C-/>", { desc = "Toggle Terminal", remap = true })
