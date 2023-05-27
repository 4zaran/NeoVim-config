return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSP
        "pyright",
        "eslint-lsp",
        "vue-language-server",

        -- linter
        "djlint",
        "pylint",

        -- formatter
        "stylua",
        -- "autopep8",
      },
    },
  },
}
