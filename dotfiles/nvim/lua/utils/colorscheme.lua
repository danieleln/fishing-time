local module = {}

themes = {
    'habamax', -- default of Lazy
    'onedark',
    'nord',
    'everforest',
    'OceanicNext',
    'neon',
    'material',
    'vscode',
    -- 'aurora',
    'catppuccin-mocha',
    'rose-pine',
}



module.set = function(colorscheme)
    vim.cmd.colorscheme(colorscheme)
    vim.print(colorscheme)
end


module.previous = function()
    -- theme = vim.cmd.colorscheme() -- doesn't work :(
    local theme = vim.g.colors_name

    local index = require('utils.list').index(theme, themes)


    if index == nil then
        module.set(themes[1])
    elseif index == 1 then
        module.set(themes[#themes])
    else
        module.set(themes[index - 1])
    end
end


module.next = function()
    -- theme = vim.cmd.colorscheme() -- doesn't work :(
    local theme = vim.g.colors_name

    local index = require('utils.list').index(theme, themes)


    if index == nil or index == #themes then
        module.set(themes[1])
    else
        module.set(themes[index + 1])
    end
end


module.toggleTransparency = function()
end




return module
