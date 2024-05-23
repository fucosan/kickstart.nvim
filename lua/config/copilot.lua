local conf = {}
function conf.setup()
  require('copilot').setup {
    panel = {
      enabled = true,
      auto_refresh = false,
      keymap = {
        jump_prev = '[[',
        jump_next = ']]',
        accept = '<CR>',
        refresh = 'gr',
        open = '<M-CR>',
      },
      layout = {
        position = 'bottom', -- | top | left | right
        ratio = 0.4,
      },
    },
    suggestion = {
      enabled = true,
      auto_trigger = true,
      debounce = 75,
      keymap = {
        accept = '<Tab>',
        accept_word = false,
        accept_line = false,
        next = '<M-]>',
        prev = '<M-[>',
        dismiss = '<C-]>',
      },
    },
    filetypes = {
      yaml = false,
      markdown = false,
      help = false,
      gitcommit = false,
      gitrebase = false,
      hgcommit = false,
      svn = false,
      cvs = false,
      ['.'] = false,
    },
    copilot_node_command = '/Users/it240428/.nvm/versions/node/v20.12.2/bin/node',
    server_opts_overrides = {},
  }
end

local plugin = {}

function plugin.setup()
  return {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      conf.setup()
    end,
    vim.keymap.set('n', '<leader>cp', ':CopilotChatToggle<CR>'),
    vim.keymap.set('n', '<leader>cr', ':CopilotChatReset<CR>'),
    vim.keymap.set('n', '<leader>cs', ':CopilotChatSave<CR>'),
    vim.keymap.set('n', '<leader>cc', ':CopilotChatClear<CR>'),
    vim.keymap.set('n', '<leader>cd', ':CopilotChatFixDiagnostic<CR>'),
  }
end

return plugin
