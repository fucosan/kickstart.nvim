local lspconfig = require 'lspconfig'

lspconfig.flow.setup {
  cmd = { 'flow', 'lsp' },
  filetypes = { 'javascript', 'javascriptreact' },
  initializationOptions = {},
  requireRootPattern = 1,
  settings = {},
  root_dir = lspconfig.util.root_pattern '.flowconfig',
}
