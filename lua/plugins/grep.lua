return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>fw", LazyVim.pick("live_grep"), desc = "Grep (root dir)" },
      { "g]", "<cmd>Telescope lsp_implementations<cr>", desc = "Goto Implementation" },
      { "<leader><space>", false },
    },
  },
  {
    "ggandor/leap.nvim",
    keys = false,
    enabled = true,
    config = function(_, opts)
      -- add your own keymaps here
      vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward-to)", { desc = "leap-forward-to" })
    end,
  },
}
