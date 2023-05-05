
-- Disable space since it's already the leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })



-- [[ INSERT MODE BINDINGS ]]

-- Enter normal mode with 'jj'
vim.keymap.set('i', 'jj', '<esc>')

-- Disable "Windows" keys
vim.keymap.set('i', '<backspace>', '')
vim.keymap.set('i', '<c-bs>',      '')
vim.keymap.set('i', '<left>',      '')
vim.keymap.set('i', '<right>',     '')
vim.keymap.set('i', '<down>',      '')
vim.keymap.set('i', '<up>',        '')
vim.keymap.set('i', '<enter>',     '')




-- [[ NORMAL MODE BINDINGS ]]

-- Make 'Y' yank till the end of the line
vim.keymap.set('n', 'Y', 'y$')

-- Open the [TR]ee file view
vim.keymap.set('n', '<leader>tr', vim.cmd.Ex)

-- Remap j,k to deal with word wrapping
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })




-- [[ VISUAL MODE BINDINGS ]]

-- Move lines up / down
vim.keymap.set('x', 'J', ":move '>+1<cr>gv-gv")
vim.keymap.set('x', 'K', ":move '<-2<cr>gv-gv")












