local mymodule = {}

local function compare(a, b)
    return a[4] < b[4]
end

function mymodule.resolve(items, capacity)
    local myarray = {}

    for i=1, #items, 1 do
        myarray[i] = items[i]
        local weight = items[i][2]
        local value = items[i][3]

        local wpv = weight / value

        myarray[i][4] = wpv
    end

    table.sort(myarray, compare)

    local response = {}
    for i=1, #myarray, 1 do
        local item = myarray[i]
        capacity = capacity - item[2]

        if capacity < 0 then
            break
        end

        response[i] = {item[1], item[2], item[3]}
    end

    return response
end

return mymodule
