require('mason').setup()

require('mason-lspconfig').setup({
    ensure_installed = {
        'bashls',                   -- Bash
        'lua_ls',                   -- Lua

        -- 'ltex',                     -- Latex
        'marksman',                 -- Markdown

        -- 'arduino_language_server',  -- Arduino
        -- 'clangd',                   -- C/C++
        -- 'gopls',                    -- Go
        -- 'rust_analyzer',            -- Rust

        -- 'html',                     -- HTML
        -- 'cssls',                    -- CSS
        -- 'quick_lint_js',            -- Javascript
        -- 'volar',                    -- Vue
        -- 'jsonls',                   -- JSON
    }
})

require('lspconfig').bashls.setup({})
require('lspconfig').lua_ls.setup({})
require('lspconfig').marksman.setup({})

