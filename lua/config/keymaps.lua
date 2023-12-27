-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

-- DO NOT USE THIS IN YOU OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = Util.safe_keymap_set

map("n", "<leader>bs", "<cmd>w<cr>", { desc = "Save buffer" })
map("n", "<leader>bc", "<cmd>bp|bd #<cr>", { desc = "Close buffer" })
map("n", "<leader>bC", "<cmd>bufdo bd<cr>", { desc = "Close Other buffer" })
map("n", "q", "<cmd>q<cr>", { desc = "Quit Buffer/Window" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "LiveGrep" })
map("n", "<leader>M", "<cmd>MinimapToggle<cr>", { desc = "MinimapToggle" })

map("v", "p", '"_dP')

local lazyterm = function()
  Util.float_term(nil, { cwd = Util.get_root() })
end
map("n", "<C-t>", lazyterm, { desc = "ToggleTerm" })
map("t", "<C-t>", lazyterm, { desc = "ToggleTerm" })

map("n", "<leader>gb", "<cmd>GitBlameToggle<cr>", { desc = "ToggleBlame" })
