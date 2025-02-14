vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- my keymaps

-- find and replace for all files
vim.keymap.set(
  'n',
  '<leader>rs',
  ':cfdo %s//g | update<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>',
  { desc = 'find and replace for all files' }
)

-- quickfix next and prev
vim.keymap.set('n', '<leader>9', ':cp<CR>', { desc = 'quickfix next' })
vim.keymap.set('n', '<leader>0', ':cn<CR>', { desc = 'quickfix next' })

--search
vim.keymap.set('n', '<C-s>', 'viw"sy/<C-R>s<CR>', { desc = 'search word' })

vim.keymap.set('n', '<leader>fr', ':%s//g<Left><Left>', { desc = 'find and replace file' })
vim.keymap.set('n', '<leader>qq', ':qa!<CR>', { desc = 'quite withous saving' })
vim.keymap.set('n', '<leader>fp', ':e ~/.config/nvim/init.lua<CR>', { desc = 'open init file' })
vim.keymap.set('n', '<leader>4', ':Oil<CR>', { desc = 'open directory' })
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = 'delete buffer' })
vim.keymap.set('n', '<leader>1', ':bprevious<CR>', { desc = 'Previous Buffer' })
vim.keymap.set('n', '<leader>2', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>3', ':b#<CR>', { desc = 'last buffer' })
vim.keymap.set('n', '<leader>fY', [[:let @+=expand('%:p')<CR>]], { desc = 'copy full file path' })
vim.keymap.set('n', '<leader>fy', [[:let @+ = expand("%")<CR>]], { desc = 'copy relative file path' })
vim.keymap.set('n', '<C-a>', ':normal 0<CR>', { desc = 'begenning of line' })
vim.keymap.set('n', '<leader>iy', ':UndotreeToggle<CR> :wincmd h<CR>', { desc = 'open undo tree' })
vim.keymap.set('n', '<leader>pp', ":lua require'telescope'.extensions.project.project{}<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gs', ':Neogit<CR>', { desc = 'git status' })
vim.keymap.set('n', '<leader>gg', ':Neogit<CR>', { desc = 'Neogit status' })
vim.keymap.set('n', '<leader>fs', ':w<CR>', { desc = 'save file' })
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv", { desc = 'move code Down' })
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv", { desc = 'Move code Up' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>ef', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>el', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- yanky
vim.keymap.set({ 'n', 'x' }, 'p', '<Plug>(YankyPutAfter)')
vim.keymap.set({ 'n', 'x' }, 'P', '<Plug>(YankyPutBefore)')
vim.keymap.set({ 'n', 'x' }, 'gp', '<Plug>(YankyGPutAfter)')
vim.keymap.set({ 'n', 'x' }, 'gP', '<Plug>(YankyGPutBefore)')

-- vim.keymap.set('n', '<C-p>', '<Plug>(YankyPreviousEntry)')
-- vim.keymap.set('n', '<C-n>', '<Plug>(YankyNextEntry)')
vim.keymap.set({ 'n' }, '<leader>yr', ':Telescope yank_history<CR>', { desc = 'kill ring' })
vim.keymap.set({ 'n', 'i' }, '<M-y>', ':Telescope yank_history<CR>', { desc = 'kill ring' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><expectexpectC-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<C-o>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('t', 'q', '<C-\\><C-n>:q<CR>', { desc = 'delete buffer in terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
--[[ vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
 ]]
-- [[ Basic Autocommands ]]
