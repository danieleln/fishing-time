api = require("nvim-tree.api")


--[[ Plugin builtin mappings ]]
-- See :help nvim-tree-mappings
local function on_attach(bufnr)

    local function opts(desc)
      return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- Change directory
    vim.keymap.set('n', 'cd',    api.tree.change_root_to_node,   opts('[c]hange [d]irectory'))

    -- Close
    vim.keymap.set('n', 'q',     api.tree.close,                opts('[c]lose the tree'))

    -- Refresh
    vim.keymap.set('n', 'R',     api.tree.reload,               opts('[R]efresh tree'))

    -- Search
    vim.keymap.set('n', 's',     api.tree.search_node,          opts('[s]earch node'))

    -- Toggle hidden files
    vim.keymap.set('n', 'H',     api.tree.toggle_hidden_filter, opts('toggle [H]idden files'))

    -- Expand all
    vim.keymap.set('n', 'E',     api.tree.expand_all,           opts('[E]xpand the whole tree'))

    -- Collapse all
    vim.keymap.set('n', 'C',     api.tree.collapse_all,         opts('[C]ollapse the whole tree'))



    -- Info
    vim.keymap.set('n', 'i',     api.node.show_info_popup,       opts('show file [i]nfo'))

    -- Open
    vim.keymap.set('n', '<cr>',  api.node.open.edit,             opts('open node'))
    vim.keymap.set('n', 'o',     api.node.open.edit,             opts('[o]pen node'))

    -- Open in vertical split
    vim.keymap.set('n', 'v',     api.node.open.vertical,         opts('open in [v]ertical split'))

    -- Open in horizontal split
    vim.keymap.set('n', 'h',     api.node.open.horizontal,       opts('open in [h]orizontal split'))

    -- Open in tab
    vim.keymap.set('n', 't',     api.node.open.tab,              opts('open in [t]ab'))

    -- Open preview
    vim.keymap.set('n', '<tab>', api.node.open.preview,          opts('open preview'))

    -- Parent directory
    vim.keymap.set('n', 'P',     api.node.navigate.parent,      opts('[P]arent directory'))

    -- Close Directory
    vim.keymap.set('n', '<bs>',  api.node.navigate.parent_close, opts('close directory'))



    -- Add
    vim.keymap.set('n', 'a',     api.fs.create,                 opts('[a]dd file'))

    -- Copy
    vim.keymap.set('n', 'c',     api.fs.copy.node,              opts('[c]opy node'))

    -- Paste
    vim.keymap.set('n', 'p',     api.fs.paste,                  opts('[p]aste file'))

    -- Cut
    vim.keymap.set('n', 'x',     api.fs.cut,                    opts('[c]ut node'))

    -- Delete
    vim.keymap.set('n', 'd',     api.fs.remove,                 opts('[d]elete node'))

    -- Rename
    vim.keymap.set('n', 'r',     api.fs.rename,                 opts('[r]ename file'))

  end



--[[ Other mappings ]]

-- [e]xplorer [t]oggle
vim.keymap.set('n', '<leader>et', function()
    -- api.tree.reload()
    api.tree.toggle()
end, { desc = 'nvim-tree: [t]oggle the [e]xplorer' })

-- [e]xplorer [l]ocate
vim.keymap.set('n', '<leader>el', function()
    api.tree.find_file()
    api.tree.focus()
end, { desc = 'nvim-tree: [l]ocate file in [e]xplorer' })



--[[ Loading options ]]
require("nvim-tree").setup({
    -- loading mappings
    on_attach = on_attach,

    sort_by = 'case_sensitive',

    view = {
        width = 40,
        side = 'left',
        number = true,
        signcolumn = 'yes',
        mappings = {
            -- custom_only = true,
        },
    },

    renderer = {
        group_empty = true,
    },

    filters = {
        dotfiles = true,
    },
})
