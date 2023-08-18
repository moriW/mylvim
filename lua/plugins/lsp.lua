return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    opts = function()
      local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          -- bash
          -- nls.builtins.formatting.shfmt,
          -- lua
          nls.builtins.formatting.stylua,
          -- python
          -- nls.builtins.diagnostics.flake8,
          nls.builtins.formatting.black,
          -- vue
          nls.builtins.formatting.prettier,
          -- nls.builtins.formatting.eslint,
          nls.builtins.diagnostics.eslint,
        },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      format = {
        timeout_ms = 3000,
      },
      servers = {
        eslint = {},
        pyright = {},
        helm_ls = {},
        lua_ls = {},
        vls = {},
        jsonls = {},
        ruff_lsp = {},
        tsserver = {},
      },
      autoformat = false,
    },
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      local format = function()
        require("lazyvim.plugins.lsp.format").format({ force = true, timeout_ms = 3000 })
      end

      keys[16] = { "<leader>cf", format, desc = "Format Document ---", has = "formatting" }
      keys[17] = { "<leader>cf", format, desc = "Format Range ---", mode = "v", has = "rangeFormatting" }
      -- change a keymap
      -- keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
      -- -- disable a keymap
      -- keys[#keys + 1] = { "K", false }
      -- -- add a keymap
      -- keys[#keys + 1] = { "H", "<cmd>echo 'hello'<cr>" }
    end,
  },
}
