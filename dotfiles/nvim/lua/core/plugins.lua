--[[ Lazy plugin manager ]]
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




--[[ Loading plugins ]]
require('lazy').setup({
    -- Gruvbox theme
    {
        'ellisonleao/gruvbox.nvim',
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'gruvbox'

            -- Transparent bg
--             vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--             vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
    },


--     -- Onedark theme
--     {
--         'navarasu/onedark.nvim',
--         priority = 1000,
--         config = function()
--             vim.cmd.colorscheme 'onedark'
-- 
--             -- Transparent bg
--             vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--             vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--         end,
--     },


--     -- Rose-pine colorscheme
--     {
--         'rose-pine/neovim',
--         priority = 1000,
--         config = function()
--             vim.cmd.colorscheme 'rose-pine'
-- 
--             -- Transparent bg
--             vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--             vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--         end,
--     },


    -- Lualine as statusline
    {
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = { left = '', right = '' },
                section_separators   = { left = '', right = '' }
            },
        },
    },

    -- Goyo plugin
    'https://github.com/junegunn/goyo.vim',

    -- Indentation guides on blank lines
    {
        'lukas-reineke/indent-blankline.nvim',
        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help indent_blankline.txt`
        opts = {
            char = '┊',
            show_trailing_blankline_indent = false,
        },
    },

    -- File explorer
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',


    -- Fuzzy Finder Algorithm
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },


    -- Treesitter (highlight, edit, and navigate code)
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        build = ":TSUpdate",
    },

    
    -- LSP
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',

}, {})
