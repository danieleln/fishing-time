local module = {}

module.index = function(value, list)
    for index=1, #list do
        if list[index] == value then
            return index
        end
    end

    return nil
end

return module
