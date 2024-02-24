local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

vim.g.rustaceanvim = {
  server = {
    capabilities = lsp_zero.get_capabilities()
  },
}

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls',
    'rust_analyzer',
    'jdtls',
    'pyright',
    'tsserver',
    'intelephense',
    'html',
    'clangd',
    'jsonls',
    'eslint',
    'bashls',
    'vuels',
  },
  handlers = {
    lsp_zero.default_setup,
    rust_analyzer = lsp_zero.noop,
    jdtls = lsp_zero.noop,
    require('lspconfig').lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    }
  }
})
