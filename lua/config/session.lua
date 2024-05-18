local conf = {}

function conf.setup()
  require('sessions').setup()
end

local plugin = {}

function plugin.setup()
  return {
    'natecraddock/sessions.nvim',
    config = function()
      conf.setup()
    end,
  }
end

return plugin
