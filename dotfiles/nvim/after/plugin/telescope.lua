local builtin = require('telescope.builtin')

-- Search file
vim.keymap.set('n', '<leader>sf',  builtin.find_files,  { desc = 'telescope: [s]earch [f]iles' })
-- Search git file
vim.keymap.set('n', '<leader>sgf', builtin.git_files,   { desc = 'telescope: [s]earch [g]it [f]iles' })
-- Search help
vim.keymap.set('n', '<leader>sh',  builtin.help_tags,   { desc = 'telescope: [s]earch [h]elp' })
-- Search current word
vim.keymap.set('n', '<leader>sw',  builtin.grep_string, { desc = 'telescope: [s]earch current [w]ord' })
-- Search text
vim.keymap.set('n', '<leader>st',  builtin.live_grep,   { desc = 'telescope: [s]earch [t]ext' })
-- Search diagnostic
vim.keymap.set('n', '<leader>sd',  builtin.diagnostics, { desc = 'telescope: [s]earch [d]iagnostics' })
