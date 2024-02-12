return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {'lua_ls', 'dockerls', 'gopls', 'jdtls', 'tsserver'}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })  -- lua
      lspconfig.dockerls.setup({
        capabilities = capabilities
      })  -- docker
      lspconfig.gopls.setup({
        capabilities = capabilities
      }) -- go
      lspconfig.jdtls.setup({
        apabilities = capabilities
      }) -- java
      lspconfig.tsserver.setup({
        apabilities = capabilities
      })  -- typescript

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
