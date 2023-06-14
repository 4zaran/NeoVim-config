-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- fuzzy search
local telescope, builtin = require("telescope"), require("telescope.builtin")
telescope.setup({})
telescope.load_extension("fzf") -- without this there's no 'foo | ^bar | baz$' style filtering
function fuzzyFindFiles()
  builtin.grep_string({
    path_display = { "smart" },
    only_sort_text = true,
    word_match = "-w",
    search = "",
  })
end

-- disable autoformat for python
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "python" },
  callback = function()
    vim.b.autoformat = false
  end
})
