local lspconfig = require 'lspconfig'

function on_attach(client, bufnr)
  -- Add any additional on_attach logic here
  -- Disable JavaScript validation
  client.config.settings = {
    javascript = {
      validate = true,
    },
    typescript = {
      validate = false,
    },
  }
end

lspconfig.tsserver.setup {
  on_attach = on_attach,
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
}
