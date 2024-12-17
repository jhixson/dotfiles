-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set
-- vim.keymap.del("n", "<leader>fg")

map("n", "<leader>h", "<cmd>noh<cr>", { desc = "Clear highlights" })
map("n", "<leader>gb", "<cmd>GitBlameToggle<cr>", { desc = "Toggle git blame" })
-- map("n", "<leader>fg", "<cmd>Telescope dir live_grep<cr>", { desc = "Search text in directory" })
-- map("n", "<leader>fd", "<cmd>Telescope dir find_files<cr>", { desc = "Search file in directory" })
-- map("n", "<leader>/", "<cmd>normal gcc<cr>", { desc = "Toggle line comment" })
