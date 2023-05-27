return {
  {
    "Bekaboo/deadcolumn.nvim",
    opts = {
      scope = "visible",
      modes = {
        -- default
        "i",
        "ic",
        "ix",
        "R",
        "Rc",
        "Rx",
        "Rv",
        "Rvc",
        "Rvx",
        -- normal, visual
        "n",
        "v",
        "V",
      },

      -- require('deadcolumn').setup(opts) -- Call the setup function
    },
  },
}
