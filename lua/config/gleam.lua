local conf = {}

function conf.setup()
  -- require('gleam').setup {}
end

local plugin = {}

function plugin.setup()
  return {
    'gleam-lang/gleam.vim',
    config = function()
      conf.setup()
    end,
  }
end

return plugin
