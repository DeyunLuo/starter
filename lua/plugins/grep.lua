local Util = require("lazyvim.util")

return {
  -- file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    event = "VeryLazy",
    cmd = "Neotree",
    keys = {
      {
        "<leader><leader>",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
        end,
        desc = "Explorer NeoTree (root dir)",
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>fw", Util.telescope("live_grep"), desc = "Grep (root dir)" },
      { "g]", "<cmd>Telescope lsp_implementations<cr>", desc = "Goto Implementation" },
      { "<leader><space>", false },
    },
  },
  {
    "ggandor/leap.nvim",
    keys = false,
    config = function(_, opts)
      -- add your own keymaps here
      vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward-to)", { desc = "leap-forward-to" })
    end,
  },
}
