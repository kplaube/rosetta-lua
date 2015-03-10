local sorting = {}

local function get_min_index(array, starting_index)
    local min_value = array[starting_index]
    local min_index = starting_index

    for i=starting_index + 1, table.getn(array), 1 do
        if array[i] < min_value then
            min_value = array[i]
            min_index = i
        end
    end

    return min_index
end

local function insert(array, right_index, value)
    local i = right_index

    while i > 0 and array[i] > value do
        array[i + 1] = array[i]

        i = i - 1
    end

    array[i + 1] = value
end

function sorting:selection_sort(array)
    local min_value_index
    local swap_value

    for i=1, table.getn(array), 1 do
        min_value_index = get_min_index(array, i)

        swap_value = array[i]
        array[i] = array[min_value_index]
        array[min_value_index] = swap_value
    end

    return array
end

function sorting:insertion_sort(array)
    for i=2, table.getn(array), 1 do
        insert(array, i - 1, array[i])
    end

    return array
end

return sorting
