return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruby_lsp = {
        mason = false,
        cmd = { "mise", "x", "--", "ruby-lsp" },
        filetypes = { "ruby" },
        root_dir = require("lspconfig.util").root_pattern("Gemfile", ".git"),
        settings = {},
      },
    },
  },
}
