local function insert(array, right_index, value)
    local i = right_index

    while i > 0 and array[i] > value do
        array[i + 1] = array[i]

        i = i - 1
    end

    array[i + 1] = value
end

local function insertion_sort(array)
    for i=2, #array, 1 do
        insert(array, i - 1, array[i])
    end

    return array
end

return insertion_sort
