-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<leader>bs", "<cmd>w<cr>", { desc = "Save buffer" })
map("n", "<leader>bc", "<cmd>bp|bd #<cr>", { desc = "Close buffer" })
map("n", "q", "<cmd>q<cr>", { desc = "Quit Buffer/Window" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "LiveGrep" })
map("v", "p", '"_dP')

local lazyterm = function()
  Util.float_term(nil, { cwd = Util.get_root() })
end
map("n", "<C-`>", lazyterm, { desc = "ToggleTerm" })
map("t", "<C-`>", lazyterm, { desc = "ToggleTerm" })

map("n", "<leader>gb", "<cmd>GitBlameToggle<cr>", { desc = "ToggleBlame" })
