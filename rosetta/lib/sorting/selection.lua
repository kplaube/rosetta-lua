local function get_min_index(array, starting_index)
    local min_value = array[starting_index]
    local min_index = starting_index

    for i=starting_index + 1, #array, 1 do
        if array[i] < min_value then
            min_value = array[i]
            min_index = i
        end
    end

    return min_index
end

local function selection_sort(array)
    local min_value_index
    local swap_value

    for i=1, #array, 1 do
        min_value_index = get_min_index(array, i)

        swap_value = array[i]
        array[i] = array[min_value_index]
        array[min_value_index] = swap_value
    end

    return array
end

return selection_sort
