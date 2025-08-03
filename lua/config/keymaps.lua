-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set

set({ "i", "x", "n", "s" }, "<CS-s>", "<cmd>wall<cr><esc>", { desc = "Save all Files" })

-- Center Cursor while moving up and down Half-page
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")

-- While navigating search results keep the Cursor in the center
set("n", "n", "nzzzv", { desc = "Next Search Result" })
set("n", "N", "Nzzzv", { desc = "Previous Search Result" })

-- Move lines up and down in Visual Mode
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")
set("v", "<S-down>", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
set("v", "<S-up>", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Change and delete without changing the paste buffer
-- greatest remap ever
set("x", "<leader>p", [["_dP]], { desc = "Paste and keep paste Buffer" })
set({ "n", "v" }, "<leader>c", [["_c]], { desc = "Change and keep paste Buffer" })
set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete and keep paste Buffer" })
set({ "n", "x" }, "x", '"_x', { desc = "Delete and keep paste Buffer" })

-- Search and Replace
set({ "n", "x" }, "<leader>sr", "", { desc = "+replace" })
set({ "n", "x" }, "<leader>srr", function()
  require("grug-far").open({ transient = true })
end, { desc = "Replace (global)" })
set("n", "<leader>srb", ":%s/", { desc = "Replace in Buffer" })
set("x", "<leader>srb", ":<C-w>%s/<C-r><C-w>/<C-r><C-w>/g<Left><Left>", { desc = "Replace in Buffer" })
set("n", "<leader>srl", ":s/", { desc = "Replace in Line" })
set("x", "<leader>srl", ":s/<C-r><C-w>/<C-r><C-w>/g<Left><Left>", { desc = "Replace in Line" })
set("n", "<leader>srw", [[:%s/<C-r><C-w>/<C-r><C-w>/g<Left><Left>]], { desc = "Replace current Word in Buffer" })

-- Fix completion canceling
set("i", "<C-CR>", function()
  require("blink-cmp").cancel()
end, { desc = "Abort completion" })

-- Coding
set("n", "<C-.>", function()
  local line = vim.api.nvim_win_get_cursor(0)[1] -- Get the current line number (1-indexed)
  vim.lsp.buf.code_action({
    range = {
      ["start"] = { line, 0 },
      ["end"] = { line, vim.api.nvim_buf_get_lines(vim.api.nvim_get_current_buf(), line - 1, line, false)[1]:len() },
    },
  }) -- Trigger the code action
end, { desc = "Code Actions in Line" })

-- Supermaven
if not ad4mantis.atWork then
  set("n", "<leader>a", "", { desc = "ai" })
  set("n", "<leader>at", "<cmd>SupermavenToggle<cr>", { desc = "Toggle ai" })
end

-- Capitalize first letter of word
set("n", "<leader>~", "b~<Left>", { desc = "Toggle Capital Letter" })
