local module = {}


module.set = function(cols)
    vim.o.colorcolumn = cols
end

module.toggle = function()
    if vim.o.colorcolumn == "" then
        -- default colorcolumn
        vim.o.colorcolumn = "70,75,100"
    else
        -- remove colorcolumn
        vim.o.colorcolumn = ""
    end
end


return module
