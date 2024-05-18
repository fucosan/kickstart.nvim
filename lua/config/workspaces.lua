local conf = {}

function conf.setup()
  require('workspaces').setup {
    hooks = {
      open_pre = {
        -- If recording, save current session state and stop recording
        'SessionsSave',

        -- delete all buffers (does not save changes)
        'silent %bdelete!',
      },
      open = {
        'SessionsLoad',
      },
    },
  }
end

local plugin = {}

function plugin.setup()
  return {
    'natecraddock/workspaces.nvim',
    dependencies = {
      'natecraddock/sessions.nvim',
    },
    config = function()
      conf.setup()
    end,
  }
end

return plugin
