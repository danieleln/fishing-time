require('core')
require('utils.colorscheme').set('habamax')

-- reloads nvim plugins under development
-- TODO: clean the code and save it in a more appropriate file!
NVIM_WORKSPACE = '~/workspace/plugins'

for plugin_name in vim.fs.dir(NVIM_WORKSPACE) do
    local plugin = NVIM_WORKSPACE .. '/' .. plugin_name
    vim.opt.rtp:append(plugin)
end


function unloadPackage(package_name)
    -- removes '.lua' from the package name
    if package_name:match('.+%.lua') then
        package_name = package_name:sub(1, #package_name-4)
    end

    pkg_slashes = package_name:gsub('%.', '/')
    pkg_dots    = package_name:gsub('/', '.')

    package.loaded[pkg_slashes] = nil
    package.loaded[pkg_dots]    = nil

    
end


function unloadPackageRecursively(plugin_basedir, plugin_file_tree)
    -- normalizes path (vim.fn.isdirectory and vim.fn.filereadable don't
    -- run it on their own as vim.fs.dir does)
    local path = vim.fs.normalize(plugin_basedir .. '/' .. plugin_file_tree)


    -- iterates over the content of the current path
    for dir in vim.fs.dir(path) do
        local package_name = plugin_file_tree .. '/' ..dir
        local full_path = path .. '/' .. dir

        if vim.fn.isdirectory(full_path) == 1 then
            -- unloads content of the directory
            unloadPackageRecursively(plugin_basedir, package_name)

        elseif vim.fn.filereadable(full_path) == 1 then
            -- unloads the package
            if dir == 'init.lua' then
                unloadPackage(plugin_file_tree)
            else
                unloadPackage(package_name)
            end
        end
    end
end


function unloadWorkspace(workspace_path)
    -- normalizes workspace_path (vim.fn.isdirectory doesn't run it
    -- on its own as vim.fs.dir does)
    workspace_path = vim.fs.normalize(workspace_path)

    -- iterates over directories inside the workspace path
    for dir in vim.fs.dir(workspace_path) do

        -- searches for directories (plugins are always inside a directory
        -- whose name is the plugin name) and ignores directories that ends
        -- with '.bak' (backup directories)
        if
            vim.fn.isdirectory(workspace_path .. '/' .. dir) == 1
            and not dir:match('.+%.bak')
        then

            local plugin_name = dir
            local plugin_dir =
                workspace_path .. '/' .. plugin_name .. '/lua/'

            unloadPackageRecursively(plugin_dir, plugin_name)

        end
    end
end


vim.keymap.set('n', '<leader>wr', function()
    vim.cmd.colorscheme('onedark')
    vim.print('unloading workspace')
    unloadWorkspace(NVIM_WORKSPACE)
end, { silent = true })

