local function counting_sort(array)
    local count = {}
    local min = math.min(table.unpack(array))
    local max = math.max(table.unpack(array))

    for i=min, max, 1 do
        count[i] = 0
    end

    for i=1, #array, 1 do
        local number = array[i]

        count[number] = count[number] + 1
    end

    local j = 1
    for i=min, max, 1 do
        while count[i] > 0 do
            array[j] = i
            j = j + 1
            count[i] = count[i] - 1
        end
    end
end

return counting_sort
