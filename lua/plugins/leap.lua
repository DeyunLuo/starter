return {
  -- disable flash
  {
    "folke/flash.nvim",
    enabled = true,
  },

  -- easily jump to any location and enhanced f/t motions for Leap
  {
    "ggandor/flit.nvim",
    enabled = false,
    keys = function()
      ---@type LazyKeys[]
      local ret = {}
      for _, key in ipairs({ "f", "F", "t", "T" }) do
        ret[#ret + 1] = { key, mode = { "n", "x", "o" }, desc = key }
      end
      return ret
    end,
    opts = { labeled_modes = "nx" },
  },
  {
    "ggandor/leap.nvim",
    enabled = false,
    keys = false,
    -- close S key to use S to save file
    -- keys = {
    -- { "s", mode = { "n", "x", "o" }, desc = "Leap forward to" },
    --     { "S", mode = { "n", "x", "o" }, desc = "Leap backward to" },
    -- { "gs", mode = { "n", "x", "o" }, desc = "Leap from windows" },
    -- },
    config = function(_, opts)
      local leap = require("leap")
      for k, v in pairs(opts) do
        leap.opts[k] = v
      end
      leap.add_default_mappings(true)
      vim.keymap.del({ "x", "o" }, "x")
      vim.keymap.del({ "x", "o" }, "X")
    end,
    -- vim.keymap.del({ "x", "o", "n" }, "S")
  },

  -- makes some plugins dot-repeatable like leap
  { "tpope/vim-repeat", event = "VeryLazy" },
}
