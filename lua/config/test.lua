local conf = {}
function conf.setup()
  vim.keymap.set('n', '<leader>te', ':TestNearest<CR>')
  vim.keymap.set('n', '<leader>tf', ':TestFile<CR>')
  vim.keymap.set('n', '<leader>ta', ':TestSuite<CR>')
  vim.keymap.set('n', '<leader>tl', ':TestLast<CR>')
  vim.keymap.set('n', '<leader>tv', ':TestVisit<CR>')
end

local plugin = {}

function plugin.setup()
  return {
    'vim-test/vim-test',
    conf.setup(),
  }
end

return plugin
