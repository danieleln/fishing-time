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
    -- Color schemes
    {
        'navarasu/onedark.nvim',
        'ray-x/aurora',
        'catppuccin/nvim',
        'sainnhe/everforest',
        'mhartington/oceanic-next',
        'rose-pine/neovim',
        'shaunsingh/nord.nvim',
        'marko-cerovac/material.nvim',
        'Mofiqul/vscode.nvim',
        'rafamadriz/neon',

        -- prioritize the scheme that is loaded at startup
        -- priority = 1000,
    },





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
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        }
    },


    -- Telescope
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep',
            'nvim-telescope/telescope-fzf-native.nvim',
            'sharkdp/fd',
        }
    },


    -- Treesitter (highlight, edit, and navigate code)
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
            -- Coloring parenthesis pairs
            'mrjones2014/nvim-ts-rainbow',
        },
        build = ":TSUpdate",
    },


    -- LSP
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',


    -- Which key
    'folke/which-key.nvim',


}, {})
