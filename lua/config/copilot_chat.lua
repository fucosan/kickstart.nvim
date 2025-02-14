local conf = {}
function conf.setup()
  require('CopilotChat').setup {
    debug = true,
    model = 'gpt-4o',
    -- model = 'cloude-3.5-sonnet',
    window = {
      width = 0.4,
    },
  }
end

local plugin = {}

function plugin.setup()
  return {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'main',
    dependencies = {
      { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
      { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
    },
    config = conf.setup,
  }
end

return plugin
