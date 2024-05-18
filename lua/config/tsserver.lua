local lspconfig = require 'lspconfig'

function on_attach(client, bufnr)
  -- Add any additional on_attach logic here
  -- Disable JavaScript validation
  client.config.settings = {
    javascript = {
      validate = false,
    },
    typescript = {
      validate = false,
    },
  }
  client.notify('workspace/didChangeConfiguration', { settings = client.config.settings })
  -- Filter out the specific diagnostic message
  client.handlers['textDocument/publishDiagnostics'] = function(_, result, ctx, config)
    if result.diagnostics then
      result.diagnostics = vim.tbl_filter(function(diagnostic)
        -- Diagnostic code for "type annotations can only be used in TypeScript files"
        -- "import type declarations blabla
        return diagnostic.code ~= 8005 and diagnostic.code ~= 1375
      end, result.diagnostics)
    end
    return vim.lsp.handlers['textDocument/publishDiagnostics'](_, result, ctx, config)
  end
end

lspconfig.tsserver.setup {
  on_attach = on_attach,
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
}
