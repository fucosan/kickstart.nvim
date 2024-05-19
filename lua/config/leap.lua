local conf = {}
function conf.setup() end

local plugin = {}
function plugin.setup()
  return {
    'ggandor/leap.nvim',
    dependencies = {
      'tpope/vim-repeat',
    },
    config = function()
      conf.setup()
    end,
    vim.keymap.set('n', 'go', '<Plug>(leap)', { desc = 'jump to/ leap' }),
  }
end

return plugin
