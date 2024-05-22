local conf = {}
function conf.setup() end

local plugin = {}

function plugin.setup()
  return {
    'github/copilot.vim',
    config = function()
      vim.g.copilot_node_command = "~/.nvm/versions/node/v20.12.2/bin/node"
      conf.setup()
    end,
  }
end

return plugin
