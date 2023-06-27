-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

--  telescope
local telescope, builtin = require("telescope"), require("telescope.builtin")
telescope.setup({
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = { "png", "webp", "jpg", "jpeg", "ico", "pdf" },
      -- find command (defaults to `fd`)
      find_cmd = "rg",
    },
  },
})
telescope.load_extension("fzf") -- without this there's no 'foo | ^bar | baz$' style filtering
telescope.load_extension("media_files")

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
  end,
})
