local plugin = {}
function plugin.setup()
  return {
    'mg979/vim-visual-multi',
    branch = 'master',
    init = function()
      vim.g.VM_maps = {
        ['Find Under'] = '<M-d>',
        ['Find Subword Under'] = '<M-d>',
      }
    end,
  }
end
return plugin
