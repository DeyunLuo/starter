local util = require("lspconfig.util")
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        gopls = {
          cmd = { "gopls", "serve" },
          filetypes = { "go", "gomod" },
          root_dir = util.root_pattern("go.work", "go.mod", ".git"),
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
              },
              staticcheck = true,
              buildFlags = { "-tags", "linux" },
            },
          },
        },
      },
    },
  },
}
