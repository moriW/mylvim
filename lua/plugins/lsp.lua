return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      local format = function()
        require("lazyvim.plugins.lsp.format").format({ force = true, timeout_ms = 3000 })
      end

      keys[#keys + 1] = { "<leader>cf", format, desc = "Format Document ---", has = "formatting" }
      keys[#keys + 1] = { "<leader>cf", format, desc = "Format Range ---", mode = "v", has = "rangeFormatting" }
    end,
  },
}
