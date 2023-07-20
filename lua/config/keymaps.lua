-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Explorer NeoTree function
local Util = require("lazyvim.util")
local explorer = function()
  require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
  -- Util.telescope("files", { cwd = false })
end
local open_dashboard = function()
  vim.cmd("Alpha")
end
local open_terminal = function()
  Util.float_term()
end

local close_buffer = function()
  require("mini.bufremove").delete(0, false)
end

vim.keymap.set("n", "<leader>;", open_dashboard, { desc = "Open dashboard" })
vim.keymap.set("n", "<leader>;c", "<cmd>e $MYVIMRC<cr>", { desc = "Open vimrc" })
vim.keymap.set("n", "<leader>r", "<cmd>source $MYVIMRC<cr>", { desc = "reload vimrc" })
vim.keymap.set("n", "Q", "<cmd>q<cr>", { desc = "Quit" })
vim.keymap.set("n", "<leader>s", "<cmd>w<cr><esc>", { desc = "Save" })
vim.keymap.set("n", "<leader>fm", require("lazyvim.plugins.lsp.format").format, { desc = "Format" })
vim.keymap.del("n", "<leader><space>")

vim.keymap.set("n", "<leader><space>", explorer, { desc = "Format" })

vim.keymap.set("n", "<leader>t", open_terminal, { desc = "Terminal (cwd)" })
vim.keymap.del("n", "<leader>/")
vim.keymap.set("t", "<leader>/", "<cmd>close<cr>", { desc = "Hide Terminal" })
vim.keymap.set("n", "H", "<C-w>h", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "J", "<C-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "K", "<C-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "L", "<C-w>l", { desc = "Go to right window", remap = true })
vim.keymap.set({ "i", "v", "n", "s" }, "S", "<cmd>w<cr><esc>", { desc = "Save file" })

vim.keymap.set("n", "<TAB>", "<cmd> BufferLineCycleNext <CR>", { desc = "Change Tab next" })
vim.keymap.set("n", "<S-Tab>", "<cmd> BufferLineCyclePrev <CR>", { desc = "Change Tab Pre" })
vim.keymap.set("n", "<leader>x", close_buffer, { desc = "Delete Buffer" })

--
vim.keymap.set("n", "<UP>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<Right>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<Left>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
