return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- defaults
        "stylua",
        -- "shellcheck",
        -- "shfmt",
        -- "flake8",
        -- custom
        "pyright",
        "eslint-lsp",
        "vue-language-server",
      },
    },
  },
}
