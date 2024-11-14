-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set

set({ "i", "x", "n", "s" }, "<CS-s>", "<cmd>wall<cr><esc>", { desc = "Save all Files" })

set("n", "<leader>uu", vim.cmd.UndotreeToggle, { desc = "Toggle Undotree" })

-- Scroll Half-page and keep Cursor in the center
set("n", "<C-d>", "<C-d>zz", { desc = "Half-page down" })
set("n", "<C-u>", "<C-u>zz", { desc = "Half-page up" })

-- While navigating search results keep the Cursor in the center
set("n", "n", "nzzzv", { desc = "Next Search Result" })
set("n", "N", "Nzzzv", { desc = "Next Search Result" })

set("x", "<leader>p", '"_dP', { desc = "Paste and keep paste Buffer" })
-- set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete and keep paste Buffer" }) TODO: Overlaps with '+debug'

set("n", "<leader>sr", "", { desc = "replace" })
set("n", "<leader>srr", "<cmd>GrugFar<cr>", { desc = "Replace (global)" })
set("n", "<leader>srb", ":%s/", { desc = "Replace in Buffer" })
set("n", "<leader>srw", [[:%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace current Word in Buffer" })
