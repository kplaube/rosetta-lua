local sorting = {}

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

local function insert(array, right_index, value)
    local i = right_index

    while i > 0 and array[i] > value do
        array[i + 1] = array[i]

        i = i - 1
    end

    array[i + 1] = value
end

function sorting.selection_sort(array)
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

function sorting.insertion_sort(array)
    for i=2, #array, 1 do
        insert(array, i - 1, array[i])
    end

    return array
end

local function swap(array, index1, index2)
    local _ = array[index1]
    array[index1] = array[index2]
    array[index2] = _
end

local function partition(array, p, r)
    local pivot = math.random(p, r)
    local q = p

    swap(array, pivot, r)

    for u=p, r - 1, 1 do
        if array[u] <= array[r] then
            swap(array, u, q)
            q = q + 1
        end
    end

    swap(array, q, r)

    return q
end

function sorting.quicksort(array, p, r)
    if p >= r then
        return
    end

    local q = partition(array, p, r)
    sorting.quicksort(array, p, q - 1)
    sorting.quicksort(array, q + 1, r)
end

return sorting
