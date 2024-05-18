local conf = {}
function conf.setup()
  require('lint').linters_by_ft = {
    javascript = { 'eslint' },
    typescript = { 'eslint' },
  }

  vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
    callback = function()
      require('lint').try_lint()
    end,
  })
end

local plugin = {}

function plugin.setup()
  return {
    'mfussenegger/nvim-lint',
    event = 'VeryLazy',
    config = function()
      conf.setup()
    end,
  }
end

return plugin
