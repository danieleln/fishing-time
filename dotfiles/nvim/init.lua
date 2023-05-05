-- [[ INSTALLING PACKAGE MANAGER ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)


-- [[ LOADING DEPENDENCIES ]]

-- variables has to be read first cause it sets the leader key
-- which must be done before loading plugins and keymaps
require('variables')

require('plugins')

require('keymaps')

require('options')




