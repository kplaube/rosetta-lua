local mymodule = {}
local _array = {}

function mymodule.empty()
    return #_array < 1
end

function mymodule.clean()
    _array = {}
end

function mymodule.push(value)
    table.insert(_array, value)
end

function mymodule.pop()
    return table.remove(_array)
end

return mymodule
