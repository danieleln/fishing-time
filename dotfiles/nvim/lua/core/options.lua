-- Leader key
-- The leader key must be set before plugins are required.
-- See also :help mapleader
vim.g.maplocalleader = ' '
vim.g.mapleader      = ' '



-- Disabling netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- Scroll the screen by leaving at least 8 line by the start/end of the page
-- vim.o.scrolloff = 8

-- Disable the mode indicator
vim.o.showmode = false

-- Set the height of the command line
vim.o.cmdheight = 3

-- Enable cursor line
vim.o.cursorline = true

-- Indenting and tabulations
vim.o.autoindent  = true
vim.o.smartindent = true
vim.o.smarttab    = true
vim.o.shiftwidth  = 4
vim.o.tabstop     = 4
vim.o.softtabstop = 4
vim.o.expandtab   = true

-- Set highlight on search
vim.o.hlsearch = true
vim.o.incsearch = true

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
-- vim.o.breakindent = true

-- Enable line wrapping
-- vim.o.wrap = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Time in ms that nvim waits before updating the swap file
vim.o.updatetime = 250

-- Time in ms that nvim waits for a mapped sequence to complete
vim.o.timeout = true
vim.o.timeoutlen = 500

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

