-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- CellularAutomaton
vim.keymap.set("n", "<leader>cc", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make it rain" })

-- diffview
-- vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Diff current index" })
-- vim.keymap.set("n", "<leader>gD", "<cmd>DiffviewOpen rc<cr>", { desc = "Diff rc" })
vim.keymap.set("n", "<leader>gf", "<cmd>DiffviewFileHistory %<cr>", { desc = "File history" })
vim.keymap.set("n", "<leader>gx", "<cmd>DiffviewClose <cr>", { desc = "Close Diffview" })

-- fuzzy search
vim.keymap.set("n", "<leader>sf", "<cmd>lua fuzzyFindFiles{}<cr>", { desc = "Fuzzy" })

-- gitsigns
vim.keymap.set("n", "<leader>ghg", "<cmd>Gitsigns diffthis rc<cr>", { desc = "Diff rc" })

-- neo-tree
-- vim.keymap.set("n", "<leader>e", "<cmd>Neotree<cr>", { desc = "Neotree <cwd>" })

-- nv-term
vim.keymap.set("n", "<leader>wh", function()
  require("nvterm.terminal").new("horizontal")
  vim.cmd("startinsert")
end, { desc = "Terminal horizontal" })
vim.keymap.set("n", "<leader>wv", function()
  require("nvterm.terminal").new("vertical")
end, { desc = "Terminal vertical" })

-- terminal exit
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Window close" })

--telescope
vim.keymap.set("n", "<leader>fF", "<cmd>Telescope git_files<cr>", { desc = "Find files (root dir)" })
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files (cwd)" })
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope media_files<cr>", { desc = "Find media files" })

-- window close
vim.keymap.set("n", "<leader>wc", "<cmd>close<cr>", { desc = "Window close" })
vim.keymap.set("n", "<leader>co", "<cmd>PyrightOrganizeImports<cr>", { desc = "Organize Imports (py)" })
