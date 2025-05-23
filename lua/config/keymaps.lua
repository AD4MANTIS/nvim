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

-- Change and delete without changing the paste buffer
set({ "n", "x" }, "x", '"_x', { desc = "Delete and keep paste Buffer" })
set("x", "<leader>P", '"_dP', { desc = "Paste and keep paste Buffer" })
set({ "n", "x" }, "<leader>C", '"_c', { desc = "Change and keep paste Buffer" })
set({ "n", "x" }, "<leader>D", '"_d', { desc = "Delete and keep paste Buffer" })

-- Search and Replace
set({ "n", "x" }, "<leader>sr", "", { desc = "+replace" })
set({ "n", "x" }, "<leader>srr", function()
  require("grug-far").open({ transient = true })
end, { desc = "Replace (global)" })
-- TODO: Prefill selection in Visual Mode
set("n", "<leader>srb", ":%s/", { desc = "Replace in Buffer" })
set("n", "<leader>srl", ":s/", { desc = "Replace in Line" })
set("x", "<leader>srl", ":s/<C-r><C-w>/<C-r><C-w>/g<Left><Left>", { desc = "Replace in Line" })
set("n", "<leader>srw", [[:%s/<C-r><C-w>/<C-r><C-w>/g<Left><Left>]], { desc = "Replace current Word in Buffer" })

-- Fix completion canceling
set("i", "<C-CR>", function()
  require("cmp").abort()
end, { desc = "Abort completion" })

set("i", "<CS-Space>", function()
  require("cmp").abort()
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
end, { desc = "Code actions in Line" })

-- Supermaven
if not ad4mantis.atWork then
  set("n", "<leader>a", "", { desc = "ai" })
  set("n", "<leader>at", "<cmd>SupermavenToggle<cr>", { desc = "Toggle ai" })
end

-- Capitalize first letter of word
set("n", "<leader>~", "viwo<esc>~<Left>", { desc = "Toggle Capital Letter" })

-- Centered Layout
set("n", "<leader>up", ":set numberwidth=20<cr>", { desc = "Add Padding (center)" })
set("n", "<leader>uP", ":set numberwidth=1<cr>", { desc = "Remove Padding (un-center)" })
