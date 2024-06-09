local plugin = {}

function plugin.conf()
  local harpoon = require 'harpoon'

  harpoon:setup()

  vim.keymap.set('n', '<leader>ha', function()
    harpoon:list():add()
  end)

  vim.keymap.set('n', '<leader>ho', function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
  end)

  vim.keymap.set('n', '<leader>1', function()
    harpoon:list():prev()
  end)

  vim.keymap.set('n', '<leader>2', function()
    harpoon:list():next()
  end)
end

function plugin.setup()
  return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
    },
    config = function()
      plugin.conf()
    end,
  }
end

return plugin
