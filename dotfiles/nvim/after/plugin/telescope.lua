local builtin = require('telescope.builtin')

-- Search File
vim.keymap.set('n', '<leader>sf', builtin.find_files,  { desc = '[S]earch [F]iles' })
-- Search Git File
vim.keymap.set('n', '<leader>sgf', builtin.git_files,   { desc = '[S]earch [G]it [F]iles' })
-- Search Help
vim.keymap.set('n', '<leader>sh', builtin.help_tags,   { desc = '[S]earch [H]elp' })
-- Search Current Word
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
-- Search by Grep
vim.keymap.set('n', '<leader>sg', builtin.live_grep,   { desc = '[S]earch by [G]rep' })
-- Search Diagnostic
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
