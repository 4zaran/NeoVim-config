-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- fuzzy search
vim.keymap.set("n", "<leader>sf", "<cmd>lua fuzzyFindFiles{}<cr>", { desc = "Fuzzy" })

-- CellularAutomaton
vim.keymap.set("n", "<leader>cc", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make it rain" })
