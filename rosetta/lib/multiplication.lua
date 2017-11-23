local mymodule = {}

function mymodule.ethiopian (x, y)
    local z = 0
    local results = {}

    while x > 0 do
        table.insert(results, {x, y})

        if x % 2 == 1 then
            z = z + y
        end

        x = math.floor(x / 2)
        y = y * 2
    end

    return {z, results}
end

return mymodule
