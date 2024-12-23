return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        -- installing LSPs:
        ensure_installed = {"lua_ls", "ts_ls"}
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- setting up LSPs:
      require("lspconfig").lua_ls.setup {}
      require("lspconfig").ts_ls.setup {}

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
