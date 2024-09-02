return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>fw", LazyVim.pick("live_grep"), desc = "Grep (root dir)" },
      { "g]", "<cmd>Telescope lsp_implementations<cr>", desc = "Goto Implementation" },
      { "<leader><space>", false },
    },
  },
}
