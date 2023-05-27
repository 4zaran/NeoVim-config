return {
  {
    "NvChad/nvterm",
    config = function()
      require("nvterm").setup({
        behaviour = {
          autoclose_on_quit = {
            enabled = true,
            confirm = true,
          },
          auto_insert = true,
        },
      })
    end,
  },
}
