local config = {}
function config.setup()
  require('nvim-tree').setup {
    sort = {
      sorter = 'case_sensitive',
    },
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  }
end

local nvim_tree = {}

function nvim_tree.setup()
  return {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      config.setup()
    end,
    vim.keymap.set('n', '<leader>pt', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' }),
  }
end

return nvim_tree
