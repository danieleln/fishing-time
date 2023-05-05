require('lazy').setup({
    -- Rose-pine colorscheme
    -- {
    --     'rose-pine/neovim',
    -- },

    -- Onedark theme
    {
        'navarasu/onedark.nvim',
        -- priority = 1000,
        config = function()
            vim.cmd.colorscheme 'onedark'

            -- Transparent bg
            -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
    },


    -- Set lualine as statusline
    {
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
            },
        },
    },

    -- Goyo plugin
    {
        'https://github.com/junegunn/goyo.vim',
    },

    -- Indentation guides even on blank lines
    {
        'lukas-reineke/indent-blankline.nvim',
        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help indent_blankline.txt`
        opts = {
            char = '┊',
            show_trailing_blankline_indent = false,
        },
    },


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


}, {})
