return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    event = "VeryLazy",
    cmd = "Neotree",
    keys = {
      {
        "<leader><leader>",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").root.get() })
        end,
        desc = "Explorer NeoTree (root dir)",
      },
    },
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          enable_git_status = true,
          enable_diagnostics = true,
          hide_by_name = {
            ".git",
            ".DS_Store",
          },
        },
      },
      window = {
        mappings = {
          ["<leader>p"] = function(state)
            local node = state.tree:get_node()
            require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
          end,
        },
      },
    },
  },
}
