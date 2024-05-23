local conf = {}
function conf.setup()
  require('yanky').setup {
    ring = {
      history_length = 100,
      storage = 'shada',
      storage_path = vim.fn.stdpath 'data' .. '/databases/yanky.db', -- Only for sqlite storage
      sync_with_numbered_registers = true,
      cancel_event = 'update',
      ignore_registers = { '_' },
      update_register_on_cycle = false,
    },
    picker = {
      select = {
        action = nil, -- nil to use default put action
      },
      telescope = {
        use_default_mappings = true, -- if default mappings should be used
        mappings = nil, -- nil to use default mappings or no mappings (see `use_default_mappings`)
      },
    },
    system_clipboard = {
      sync_with_ring = true,
    },
    highlight = {
      on_put = true,
      on_yank = true,
      timer = 500,
    },
    preserve_cursor_position = {
      enabled = true,
    },
    textobj = {
      enabled = true,
    },
  }

  vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
    callback = function() end,
  })
end

local plugin = {}

function plugin.setup()
  return {
    'gbprod/yanky.nvim',
    config = function()
      conf.setup()
    end,
  }
end

return plugin
