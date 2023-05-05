-- Scroll the screen by leaving at least 8 line by the start/end of the page
vim.o.scrolloff = 8

-- Disable the mode indicator
vim.o.showmode = false
--
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
vim.o.hlsearch = false
vim.o.incsearch = true

-- Make line numbers default
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Enable line wrapping
vim.o.wrap = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

