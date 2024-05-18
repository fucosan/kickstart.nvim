local conf = {}
function conf.setup()
  require('leap').add_default_mappings()
end

local plugin = {}
function plugin.setup()
  return {
    'ggandor/leap.nvim',
    config = function()
      conf.setup()
    end,
  }
end

return plugin
