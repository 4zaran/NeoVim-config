local Util = require("lazyvim.util")

return {

  -- file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- cmd = "Neotree",
    keys = {
      -- invert cwd and root dir in default config
      {
        "<leader>e",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
        end,
        desc = "Explorer NeoTree (root dir)",
      },
      {
        "<leader>E",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
        end,
        desc = "Explorer NeoTree (cwd)",
      },
      -- delete duplicates
      { "<leader>fe", vim.NIL },
      { "<leader>fE", vim.NIL },
    },
  },
}
