local util = require("lspconfig.util")
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
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
-- local util = require("lspconfig.util")
-- return {
--   -- file explorer
--   {
--     "neovim/nvim-lspconfig",
--     setup = {
--       require("lspconfig").gopls.setup({
--         cmd = { "gopls", "serve" },
--         filetypes = { "go", "gomod" },
--         root_dir = util.root_pattern("go.work", "go.mod", ".git"),
--         settings = {
--           gopls = {
--             analyses = {
--               unusedparams = true,
--             },
--             staticcheck = true,
--           },
--         },
--       }),
--     },
--   },
-- }
