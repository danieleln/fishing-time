local builtin = require('telescope.builtin')

-- Search file
vim.keymap.set('n', '<leader>sf', builtin.find_files,  { desc = '[s]earch [f]iles' })
-- Search git file
vim.keymap.set('n', '<leader>sgf', builtin.git_files,  { desc = '[s]earch [g]it [f]iles' })
-- Search help
vim.keymap.set('n', '<leader>sh', builtin.help_tags,   { desc = '[s]earch [h]elp' })
-- Search current word
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[s]earch current [w]ord' })
-- Search by grep
vim.keymap.set('n', '<leader>sg', builtin.live_grep,   { desc = '[s]earch by [g]rep' })
-- Search diagnostic
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[s]earch [d]iagnostics' })
